#!/bin/sh

# Color variables
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Code
echo "${BLUE}Cloning Sender-Kollektiv/Sender-Homepage-Public..${NC}"
GITREPOLOWERCASE=$(echo "$GITREPO" | tr '[:upper:]' '[:lower:]')
GITREPONAME=$(echo "$GITREPOLOWERCASE" | awk -F '/' '{print $2}')
cd /tmp
git clone https://$GITTOKEN@github.com/$GITREPOLOWERCASE.git

echo "${BLUE}removing default htdocs files..${NC}"
rm -R /usr/local/apache2/htdocs/*

echo "${BLUE}Copying Files to /usr/local/apache2/htdocs/..${NC}"
cp -R "./$GITREPONAME/htdocs/" /usr/local/apache2/

echo "${BLUE}Starting httpd Server..${NC}"
httpd-foreground