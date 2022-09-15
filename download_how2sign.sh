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
# The names of the modalities avaliable for download can be found at the botton of this document
################################################################################

# Provide at least one argument to script
if (( $# < 1 ))
then
	echo "USAGE: $0 <argument1> <argument2> ..."
	exit
fi

echo "Downloading the How2Sign dataset"

#############################################
# Create folder structure and download data #
#############################################

#------------------------- Green Screen RGB videos - Frontal View -------------------------#
rgb_front_videos()
{
	mkdir -p "./How2Sign/video_level/train/rgb_front"
	mkdir -p "./How2Sign/video_level/val/rgb_front"
	mkdir -p "./How2Sign/video_level/test/rgb_front"

	echo "***** Downloading Green Screen RGB videos (Frontal View)... You can go get a coffee, this might take a while!*****"

	## Train
	### train_raw_videos.z01
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1lLu4CyDfkmDpsKGh9TDXt17WnlPb09jS' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1lLu4CyDfkmDpsKGh9TDXt17WnlPb09jS" -O train_raw_videos.z01 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z02
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=155j4ygH4inP4MyiqC4uZP5wbEyNKsXK1' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=155j4ygH4inP4MyiqC4uZP5wbEyNKsXK1" -O train_raw_videos.z02 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z03
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1CjLu5CiOJ4T6l_vl_froeZiAzrWt0S0G' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1CjLu5CiOJ4T6l_vl_froeZiAzrWt0S0G" -O train_raw_videos.z03 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z04
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1sOjNVJpkKgRYjwVQiqPCcauo5y8RVh8z' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1sOjNVJpkKgRYjwVQiqPCcauo5y8RVh8z" -O train_raw_videos.z04 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z05
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1sR1zfu0FiBYxZEp4Giv0jYmO5MjSCnCP' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1sR1zfu0FiBYxZEp4Giv0jYmO5MjSCnCP" -O train_raw_videos.z05 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z06
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=19S3mYB0mOI1kBLEJXK7E2l1YRio2dSdS' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=19S3mYB0mOI1kBLEJXK7E2l1YRio2dSdS" -O train_raw_videos.z06 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z07
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1_NMCfiMsAmwspub6I-jRD0TOKSbHvdCS' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1_NMCfiMsAmwspub6I-jRD0TOKSbHvdCS" -O train_raw_videos.z07 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z08
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1oZKauBSGHU1HN1ZdWM8tCnYUILEDsHuT' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1oZKauBSGHU1HN1ZdWM8tCnYUILEDsHuT" -O train_raw_videos.z08 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z09
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1fwpJEC55RfXAxovKhKpCpk1XFaiszmmZ' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1fwpJEC55RfXAxovKhKpCpk1XFaiszmmZ" -O train_raw_videos.z09 && rm -rf /tmp/cookies.txt

	### train_raw_videos.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1wtH4jnnUlSQTLoYM8KtlzSHksvWI_s-s' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1wtH4jnnUlSQTLoYM8KtlzSHksvWI_s-s" -O train_raw_videos.zip && rm -rf /tmp/cookies.txt

	## Val
	### val_raw_videos.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1AxoXv8qQv2M4Wzyg_i6RPv-U35x-ZH7a' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1AxoXv8qQv2M4Wzyg_i6RPv-U35x-ZH7a" -O val_raw_videos.zip && rm -rf /tmp/cookies.txt

	## Test
	### test_raw_videos.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=18YOZ2tM74MmcgZJ63VQe0uzFqWe0j3Hl' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=18YOZ2tM74MmcgZJ63VQe0uzFqWe0j3Hl" -O test_raw_videos.zip && rm -rf /tmp/cookies.txt

	# Merge all train zip files
	echo "***** Preparing the downloaded files... this might take some time! *****"
	cat train_raw_videos.z* > train_raw_videos_all.zip

	unzip train_raw_videos_all.zip -d ./How2Sign/video_level/train/rgb_front && rm -rf train_raw_videos_all.zip
	unzip val_raw_videos.zip   -d ./How2Sign/video_level/val/rgb_front && rm -rf val_raw_videos.zip
	unzip test_raw_videos.zip  -d ./How2Sign/video_level/test/rgb_front && rm -rf test_raw_videos.zip
}

#------------------------- Green Screen RGB videos - Side View -------------------------#
rgb_side_videos()
{
	mkdir -p "./How2Sign/video_level/train/rgb_side"
	mkdir -p "./How2Sign/video_level/val/rgb_side"
	mkdir -p "./How2Sign/video_level/test/rgb_side"

	echo "***** Downloading Green Screen RGB videos (Side View)... This might take a while! *****"

	# TODO: create multi-part zip file for trainning set
	## Train
	### train_rgb_side_raw_videos.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1ZihOTh97dlULKfjVEsVAsSrsKFcopfCq' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1ZihOTh97dlULKfjVEsVAsSrsKFcopfCq" -O train_rgb_side_raw_videos.zip && rm -rf /tmp/cookies.txt

	## Val
	### val_rgb_side_raw_videos.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1HyRHH70vspERdn2W2ECDXbror34rFnuQ' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1HyRHH70vspERdn2W2ECDXbror34rFnuQ" -O val_rgb_side_raw_videos.zip && rm -rf /tmp/cookies.txt

	## Test
	### test_rgb_side_raw_videos.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1qRYOUERTAERQVhBcexuKAN-SBZ4McsB5' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1qRYOUERTAERQVhBcexuKAN-SBZ4McsB5" -O test_rgb_side_raw_videos.zip && rm -rf /tmp/cookies.txt

	echo "***** Preparing the downloaded files... this might take some time! *****"
	unzip train_rgb_side_raw_videos.zip -d ./How2Sign/video_level/train/rgb_side && rm -rf train_rgb_side_raw_videos.zip
	unzip val_rgb_side_raw_videos.zip   -d ./How2Sign/video_level/val/rgb_side && rm -rf val_rgb_side_raw_videos.zip
	unzip test_rgb_side_raw_videos.zip  -d ./How2Sign/video_level/test/rgb_side && rm -rf test_rgb_side_raw_videos.zip
}

#------------------------- Green Screen RGB clips -- Frontal view -------------------------#
rgb_front_clips()
{
	mkdir -p "./How2Sign/sentence_level/train/rgb_front"
	mkdir -p "./How2Sign/sentence_level/val/rgb_front"
	mkdir -p "./How2Sign/sentence_level/test/rgb_front"

	echo "***** Downloading and preparing the Green Screen RGB clips (Frontal view) videos *****"

	## Train
	### train_rgb_front_clips.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1dYey1F_SeHets-UO8F9cE3VMhRBO-6e0' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1dYey1F_SeHets-UO8F9cE3VMhRBO-6e0" -O train_rgb_front_clips.zip && rm -rf /tmp/cookies.txt

	## Val
	### val_rgb_front_clips.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1oVZyTWhHShyqshC2kUrfWnBF8apIR7Z1' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1oVZyTWhHShyqshC2kUrfWnBF8apIR7Z1" -O val_rgb_front_clips.zip && rm -rf /tmp/cookies.txt


	## Test
	### test_rgb_front_clips.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1d6GHqu0_8IGiKbu3sTZHtMb0DGhbHSMu' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1d6GHqu0_8IGiKbu3sTZHtMb0DGhbHSMu" -O test_rgb_front_clips.zip && rm -rf /tmp/cookies.txt

	unzip train_rgb_front_clips.zip -d ./How2Sign/sentence_level/train/rgb_front && rm -rf train_rgb_front_clips.zip
	unzip val_rgb_front_clips.zip   -d ./How2Sign/sentence_level/val/rgb_front && rm -rf val_rgb_front_clips.zip
	unzip test_rgb_front_clips.zip  -d ./How2Sign/sentence_level/test/rgb_front && rm -rf test_rgb_front_clips.zip
}

#-------------------------  Green Screen RGB clips -- Side view -------------------------#
rgb_side_clips()
{
	mkdir -p "./How2Sign/sentence_level/train/rgb_side"
	mkdir -p "./How2Sign/sentence_level/val/rgb_side"
	mkdir -p "./How2Sign/sentence_level/test/rgb_side"

	echo "***** Downloading and preparing the Green Screen RGB clips (Side view) videos *****"

	## Train
	### train_rgb_side_clips.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1PIYIIOxR2vnUDzSHdq3uyoUCoIJvsuNW' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1PIYIIOxR2vnUDzSHdq3uyoUCoIJvsuNW" -O train_rgb_side_clips.zip && rm -rf /tmp/cookies.txt

	## Val
	### val_rgb_side_clips.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1vJVV777_bmSeA2_k7iGdZu2izooeKUrq' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1vJVV777_bmSeA2_k7iGdZu2izooeKUrq" -O val_rgb_side_clips.zip && rm -rf /tmp/cookies.txt

	## Test
	### test_rgb_side_clips.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1gKV_TloCbMyMhOdYvr_a-6I-PTf0Sjyi' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1gKV_TloCbMyMhOdYvr_a-6I-PTf0Sjyi" -O test_rgb_side_clips.zip && rm -rf /tmp/cookies.txt


	unzip train_rgb_side_clips.zip -d ./How2Sign/sentence_level/train/rgb_side && rm -rf train_rgb_side_clips.zip
	unzip val_rgb_side_clips.zip   -d ./How2Sign/sentence_level/val/rgb_side && rm -rf val_rgb_side_clips.zip
	unzip test_rgb_side_clips.zip  -d ./How2Sign/sentence_level/test/rgb_side && rm -rf test_rgb_side_clips.zip
}

#------------------------- B-F-H 2D Keypoints clips -- Frontal view -------------------------#
rgb_front_2D_keypoints()
{
	mkdir -p "./How2Sign/sentence_level/train/rgb_front/features"
	mkdir -p "./How2Sign/sentence_level/val/rgb_front/features"
	mkdir -p "./How2Sign/sentence_level/test/rgb_front/features"

	echo "***** Downloading B-F-H 2D Keypoints clips (Frontal view) files... This might take a while! *****"
	## Train
	### train_2D_keypoints.tar.gz
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1lnsDN-LxcsroOmetdG5_sXYXZ7setlS4' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1lnsDN-LxcsroOmetdG5_sXYXZ7setlS4" -O train_2D_keypoints.tar.gz && rm -rf /tmp/cookies.txt

	## Val
	### val_2D_keypoints.tar.gz
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1aOhRknNWj8APdxHmwJdQrMo5xuIGNXxM' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1aOhRknNWj8APdxHmwJdQrMo5xuIGNXxM" -O val_2D_keypoints.tar.gz && rm -rf /tmp/cookies.txt

	## Test
	### test_2D_keypoints.tar.gz
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1quj8Ipm56pH65KAKK3Pc-sqZ0ozw2gSe' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1quj8Ipm56pH65KAKK3Pc-sqZ0ozw2gSe" -O test_2D_keypoints.tar.gz && rm -rf /tmp/cookies.txt

	echo "***** Preparing the downloaded files... this might take some time! *****"
	tar -xf train_2D_keypoints.tar.gz -C ./How2Sign/sentence_level/train/rgb_front/features && rm -rf train_2D_keypoints.tar.gz
	tar -xf val_2D_keypoints.tar.gz   -C ./How2Sign/sentence_level/val/rgb_front/features && rm -rf val_2D_keypoints.tar.gz
	tar -xf test_2D_keypoints.tar.gz  -C ./How2Sign/sentence_level/test/rgb_front/features && rm -rf test_2D_keypoints.tar.gz
}

# # B-F-H 2D Keypoints clips -- Side view
# rgb_side_2D_keypoints()
# {
# 	echo "Creating B-F-H 2D Keypoints clips -- Side view folders"
# 	mkdir -p "./How2Sign/sentence_level/train/rgb_side/features/openpose_output"
# 	mkdir -p "./How2Sign/sentence_level/val/rgb_side/features/openpose_output"
# 	mkdir -p "./How2Sign/sentence_level/test/rgb_side/features/openpose_output"

# 	unzip train_rgb_side_2D_keypoints.zip -d ./How2Sign/sentence_level/train/rgb_side/features
# 	unzip val_rgb_side_2D_keypoints.zip   -d ./How2Sign/sentence_level/val/rgb_side/features
# 	unzip test_rgb_side_2D_keypoints.zip  -d ./How2Sign/sentence_level/test/rgb_side/features
# }

#------------------------- English Translation -------------------------#
english_translation()
{
	mkdir -p "./How2Sign/sentence_level/train/text/en/raw_text"
	mkdir -p "./How2Sign/sentence_level/val/text/en/raw_text"
	mkdir -p "./How2Sign/sentence_level/test/text/en/raw_text"

	echo "***** Downloading and preparing the English Translation text files *****"
	## Train
	### how2sign_train.csv
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1kE10vaZh_LQvZtBvT-jxT5nR9DXU6H7N' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1kE10vaZh_LQvZtBvT-jxT5nR9DXU6H7N" -O  how2sign_train.csv && rm -rf /tmp/cookies.txt

	## Val
	### how2sign_val.csv
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=12xVToQ2vm6pnXbgTyk2VqfnIxrMsORF1' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=12xVToQ2vm6pnXbgTyk2VqfnIxrMsORF1" -O  how2sign_val.csv && rm -rf /tmp/cookies.txt

	## Test
	### how2sign_test.csv
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1B6WVb3Mtwof3mx3Pnf-UOOyXRpFaT9Hw' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1B6WVb3Mtwof3mx3Pnf-UOOyXRpFaT9Hw" -O  how2sign_test.csv && rm -rf /tmp/cookies.txt

	mv how2sign_train.csv How2Sign/sentence_level/train/text/en/raw_text
	mv how2sign_val.csv How2Sign/sentence_level/val/text/en/raw_text
	mv how2sign_test.csv How2Sign/sentence_level/test/text/en/raw_text
}

#------------------------- English Translation re-aligned -------------------------#
english_translation_re-aligned()
{
	mkdir -p "./How2Sign/sentence_level/train/text/en/raw_text/re_aligned"
	mkdir -p "./How2Sign/sentence_level/val/text/en/raw_text/re_aligned"
	mkdir -p "./How2Sign/sentence_level/test/text/en/raw_text/re_aligned"

	echo "***** Downloading and preparing the re-aligned English Translation text files *****"
	## Train
	### how2sign_realigned_train.csv
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1BWt2ASmOIUM8tWnCuRtl9AdQsp4zsjPN' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1BWt2ASmOIUM8tWnCuRtl9AdQsp4zsjPN" -O  how2sign_realigned_train.csv && rm -rf /tmp/cookies.txt

	## Val
	### how2sign_realigned_val.csv
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1hcPqXfHIHHGHUQYfT3eFARTIgi0M1C9_' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1hcPqXfHIHHGHUQYfT3eFARTIgi0M1C9_" -O  how2sign_realigned_val.csv && rm -rf /tmp/cookies.txt

	## Test
	### how2sign_realigned_test.csv
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1OsTvMsVFOMk54r65v2gcxOottV41ZEUo' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1OsTvMsVFOMk54r65v2gcxOottV41ZEUo" -O  how2sign_realigned_test.csv && rm -rf /tmp/cookies.txt

	mv how2sign_realigned_train.csv How2Sign/sentence_level/train/text/en/raw_text/re_aligned
	mv how2sign_realigned_val.csv How2Sign/sentence_level/val/text/en/raw_text/re_aligned
	mv how2sign_realigned_test.csv How2Sign/sentence_level/test/text/en/raw_text/re_aligned
}

## TODO
# Gloss annotations
# Panoptic Studio data

# Modalities avaliable for download
for ARG in "$@"
do
	shift
	case "${ARG}" in
		"rgb_front_videos") 		rgb_front_videos;;
		"rgb_side_videos")		rgb_side_videos;;
		"rgb_front_clips")		rgb_front_clips;;
		"rgb_side_clips")		rgb_side_clips;;
		"rgb_front_2D_keypoints")	rgb_front_2D_keypoints;;
		# "rgb_side_2D_keypoints")	rgb_side_2D_keypoints;;
		"english_translation")	english_translation;;
		"english_translation_re-aligned")	english_translation_re-aligned;;
		*)				echo "${ARG}: Invalid argument given";;
	esac
	echo "Thank you for downloading the How2Sign dataset. Please check the README file for information about the files you just downloaded and feel free to contact us if you have any questions."
done
#
################################################################################
