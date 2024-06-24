#!/usr/bin/env bash

set -e

sudo apt-get -y update
sudo apt-get install tomcat9 -y
sudo apt-get install apache2 -y