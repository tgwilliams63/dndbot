#!/bin/bash

if [ -f ./*.zip ]
then
	rm -rf ./*.zip
fi

node install
zip -r diceRoll.zip *
aws lambda update-function-code --function-name rollDice --zip-file fileb://diceRoll.zip