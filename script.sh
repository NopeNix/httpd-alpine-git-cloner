#!/bin/sh

# Cloning Repo
echo "Cloning into $GITREPO.."
GITREPOLOWERCASE=$(echo "$GITREPO" | tr '[:upper:]' '[:lower:]')
GITREPONAME=$(echo "$GITREPOLOWERCASE" | awk -F '/' '{print $2}')
cd /tmp
git clone https://$GITTOKEN@github.com/$GITREPOLOWERCASE.git
echo ""

# Remove Default HTML Files
echo "removing default htdocs files.."
rm -R /usr/local/apache2/htdocs/*
echo ""

# Move Files
echo "Copying Files to /usr/local/apache2/htdocs/.."
cp -R "./$GITREPONAME/htdocs/" /usr/local/apache2/
rm -R "./$GITREPONAME/"
echo ""

# Start Server
echo "Starting httpd Server.."
httpd-foreground