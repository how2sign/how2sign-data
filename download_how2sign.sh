#!/bin/bash
#
# This script will create the folder structure and download the How2Sign dataset.
# For any questions about the following instructions or the data please contact: amanda.duarte[at]upc.edu
#
# To use this script, first choose the modalities that you would like to download and pass it as an argument to the command.
# For example, to download the "rgb_front_videos", the "rgb_side_videos" and the "english_translation_re-aligned" you can use the following command:
#
# ./download_how2sign.sh rgb_front_videos rgb_side_videos english_translation_re-aligned
#
# The names of the modalities avaliable for download can be found at the manifest.tsv file
################################################################################

set -e

# Provide at least one argument to script
if (( $# < 1 ))
then
	echo "USAGE: $0 <argument1> <argument2> ..."
	exit
fi

if [ -z "$DATAVERSE_TOKEN" ]; then
    echo "Please set the environment variable DATAVERSE_TOKEN with your Dataverse API token"
    exit
fi

if [ -z "$HOW2SIGN_ROOT" ]; then
    export HOW2SIGN_ROOT="./How2Sign/"
fi
mkdir -p ${HOW2SIGN_ROOT}

echo -e "\nDownloading the How2Sign dataset to '${HOW2SIGN_ROOT}'\n"

SUBSETS_REGEX="^$(echo $@ | sed 's/ /|^/g')"
MANIFEST_PATH="$(dirname $0)/manifest.tsv"
FILE_NAME=($(awk -v pattern=${SUBSETS_REGEX} '$0 ~ pattern {print $1}' ${MANIFEST_PATH}))
FILE_URL=($(awk -v pattern=${SUBSETS_REGEX} '$0 ~ pattern {print $2}' ${MANIFEST_PATH}))
DIR_NAME=($(awk -v pattern=${SUBSETS_REGEX} '$0 ~ pattern {print $3}' ${MANIFEST_PATH}))
FILE_MD5=($(awk -v pattern=${SUBSETS_REGEX} '$0 ~ pattern {print $4}' ${MANIFEST_PATH}))

HEADER="X-Dataverse-key:${DATAVERSE_TOKEN}"

if [ -x "$(command -v parallel)" ]; then
   echo -e "Downloading files:\n${FILE_NAME[@]}"
   parallel -j 4 --bar curl -H ${HEADER} -s -o "${HOW2SIGN_ROOT}/{1}" {2} ::: ${FILE_NAME[@]} :::+ ${FILE_URL[@]}
   echo -e "\n"
   echo "Checking integrity of the files..."
   parallel --halt 2 --bar 'md5sum --status -c <(echo "{1}" "${HOW2SIGN_ROOT}/{2}") || { echo "Integrity error" ; exit 1; }' ::: ${FILE_MD5[@]} :::+ ${FILE_NAME[@]}
   if [ $? -eq 0 ]; then
       echo "Integrity check OK"
   else
       echo "Integrity check FAILED"
   fi
else
   echo "GNU Parallel is not available, install it to speed up the process"
   for idx in ${!FILE_NAME[*]}; do
       echo "Downloading '${FILE_NAME[$idx]}' ($(($idx+1))/${#FILE_NAME[@]})"
       curl -H ${HEADER} -o "${HOW2SIGN_ROOT}/${FILE_NAME[$idx]}" ${FILE_URL[$idx]}
       echo -e "\n"
       printf "Checking integrity... "
       md5sum --status -c <(echo "${FILE_MD5[$idx]}" "${HOW2SIGN_ROOT}/${FILE_NAME[$idx]}") || { echo -e "ERROR\n" ; exit 1; }
       echo "OK"
   done
fi
echo -e "\n"

ZIP_SPLIT=()
for f in "${FILE_NAME[@]}"; do
    if [[ $f =~ \.z0[1-9]$ ]]; then
        ZIP_SPLIT+=("${f::-4}")
    fi
done
ZIP_SPLIT=($(printf "%s\n" "${ZIP_SPLIT[@]}" | sort -u))
for f in "${ZIP_SPLIT[@]}"; do
    printf "Merging ${f}.z* files (this might take some time)... "
    zip -q -s 0 ${HOW2SIGN_ROOT}/${f}.zip --out ${HOW2SIGN_ROOT}/${f}_all.zip && rm ${HOW2SIGN_ROOT}/${f}.z* && \
    mv ${HOW2SIGN_ROOT}/${f}_all.zip ${HOW2SIGN_ROOT}/${f}.zip || { echo -e "ERROR\n" ; exit 1; }
    echo "OK"
done
echo -e "\n"

for idx in ${!FILE_NAME[*]}; do
    f=${FILE_NAME[$idx]}
    d="${HOW2SIGN_ROOT}/${DIR_NAME[$idx]}"
    mkdir -p ${d}
    if [[ $f =~ \.zip$ ]]; then
        printf "Unzipping '${f}' to '${d}'... "
        unzip -qq ${HOW2SIGN_ROOT}/${f} -d ${d} && rm ${HOW2SIGN_ROOT}/${f} || { echo -e "ERROR\n" ; exit 1; }
        echo "OK"
    else
        if [ -f "${HOW2SIGN_ROOT}/${f}" ]; then
            printf "Moving '${f}' to '${d}'... "
            mv ${HOW2SIGN_ROOT}/${f} ${d} || { echo -e "ERROR\n" ; exit 1; }
            echo "OK"
        fi
    fi
done

