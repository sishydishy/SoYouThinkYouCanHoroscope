#!/bin/bash -l

echo "Assume the git repo has been pulled"

#install aws cli if not in directory
if [ ! -f /usr/local/bin/aws ]; then 
    echo "Installing aws-cli..."
    curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
    unzip awscli-bundle.zip
    sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
    sudo rm awscli-bundle.zip
fi

if [ ! -f /usr/local/bin/myob-auth ]; then 
    echo "Please make sure that myob-auth has been installed"
else
    echo "Logging into myob, please have your phone handy :)"
    myob-auth l
fi

npm install
echo "Get ready for deployment.."
npm run build && aws s3 sync build/ s3://so-you-think-you-can-horoscope --acl public-read
echo ""
echo "Start your engines.."
echo ".......AAAAAAANNNDDDD GOOO!"

open http://so-you-think-you-can-horoscope.s3-website-ap-southeast-2.amazonaws.com/