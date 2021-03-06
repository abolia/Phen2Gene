#!/usr/bin/sh

# gets data at: https://github.com/WGLab/Phen2Gene-webapp/releases/download/1.0-beta/testing_data.tar.gz
# needs fetch executable from https://github.com/gruntwork-io/fetch/releases


# need to get GitHub token as in: https://help.github.com/en/enterprise/2.17/user/articles/creating-a-personal-access-token-for-the-command-line
# store token as env variable TOKEN
#fetch --repo="https://github.com/WGLab/Phen2Gene-webapp/" --tag="1.0-beta" --release-asset="testing_data.tar.gz" --github-oauth-token $TOKEN .
wget https://github.com/WGLab/Phen2Gene/releases/download/1.0.0/testing_data.zip
#mkdir -p testing_data
echo "unzipping the data..........."
unzip -q testing_data.zip 
echo "All data unzipped."
rm testing_data.zip

