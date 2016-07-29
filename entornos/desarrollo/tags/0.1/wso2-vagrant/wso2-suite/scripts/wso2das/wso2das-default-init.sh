#!/bin/bash
# ------------------------------------------------------------------------
#
# Copyright 2005-2015 WSO2, Inc. (http://wso2.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License

# ------------------------------------------------------------------------
set -e

local_ip=$(ip route get 1 | awk '{print $NF;exit}')
server_path=/mnt/atsistemas
server_name=${WSO2_SERVER}-${WSO2_SERVER_VERSION}
if [ -d /mnt/carbon.das.symlink ];
then
 ln -s "${server_path}/${server_name}" '/mnt/carbon.das.symlink'
fi
echo "created symlink /mnt/carbon.das.symlink -> ${server_path}/${server_name}"
