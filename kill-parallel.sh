#!/usr/bin/env bash

set -e

kill $(ps -ef | grep bruteforce-encfs | grep -v grep | awk '{print $2}') 
