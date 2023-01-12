# how2sign-data
Scripts to download and explore the How2Sign dataset. If you have any questions, please contact: amanda.duarte@upc.edu.

In order to dowload the dataset, please use the available script or visit our website: https://how2sign.github.io/.

Note that in order to use the script, you need to be registered to the [CSUC Dataverse](https://dataverse.csuc.cat). Once you have your API token, you can set the environment variable `DATAVERSE_TOKEN`.

If you want to download the dataset in a different folder, you can set the environment variable `HOW2SIGN_ROOT`.

The download script uses GNU Parallel:
> O. Tange (2011): GNU Parallel - The Command-Line Power Tool,
>
> ;login: The USENIX Magazine, February 2011:42-47.
