#!/bin/bash

OUTPUT="$(apt list --upgradable | wc -l)"
MISSING_PATCHES=$((OUTPUT-1))

REGION=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}'`

aws --region $REGION cloudwatch put-metric-data --metric-name missing-patches --dimensions Instance=$HOSTNAME --namespace "Custom" --value $MISSING_PATCHES
