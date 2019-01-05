#!/usr/bin/env bash

set -e

kill $(ps -ef | grep brute | grep -v grep | awk '{print $2}') 
