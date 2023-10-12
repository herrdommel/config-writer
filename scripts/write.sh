#!/bin/bash

IFS=,

# configs should be a comma-separated list of config names
for config in ${configs}
do
  # config content for a config with name xxx is in an environment named config_xxx
  conf=config_${config};
  # config location for a config with name xxx is in an environment named config_xxx_location
  location=config_${config}_location
  mkdir -p $(dirname ${!location})
  echo "writing ${conf} to ${!location}"
  echo ${!conf} | base64 -d - > ${!location}
done
