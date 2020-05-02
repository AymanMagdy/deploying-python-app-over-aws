#!/bin/bash

ifDirAvailable=$(ls ~/python-app-production | grep solving-devops-challenges)

if [[ $ifDirAvailable == "solving-devops-challenges" ]]
then
	rm -rf ~/python-app-production/solving-devops-challenges
	git clone https://github.com/AymanMagdy/solving-devops-challenges.git 
	mv solving-devops-challenges ~/python-app-production/
else
	git clone https://github.com/AymanMagdy/solving-devops-challenges.git 
	mv solving-devops-challenges ~/python-app-production/
fi