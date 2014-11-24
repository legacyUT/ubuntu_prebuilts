#!/bin/bash
#
# Copyright 2014 Canonical Ltd.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
if [[ ! -z $UBUNTU_ROOTFS_PACKAGES ]]; then
    rm -rf $1/* >/dev/null
    rm -f $1.content >/dev/null
    rm -f $2 >/dev/null
    mkdir -p $1 >/dev/null
    for package in $UBUNTU_ROOTFS_PACKAGES
    do
        if [ -f $package ]; then
            tar --numeric-owner --strip-components=1 --exclude=system/dev/* -xvvf $package --directory $1 >> $1.content
        fi
    done
fi

