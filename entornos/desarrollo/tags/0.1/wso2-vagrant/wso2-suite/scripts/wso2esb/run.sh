#!/bin/bash
# ------------------------------------------------------------------------
#
# Copyright 2016 WSO2, Inc. (http://wso2.com)
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

product_name=wso2esb

prgdir=$(dirname "$0")
script_path=$(cd "$prgdir"; pwd)
common_folder=$(cd "${script_path}/../common/scripts/"; pwd)

bash ${common_folder}/docker-run.sh -n ${product_name} -p 8281:8280 -p 8244:8243 -p 9764:9763 -p 9445:9443 $*
