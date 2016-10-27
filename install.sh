#!/bin/bash
set -e -x

temp_dir="`mktemp -d`"
cd $temp_dir

export DEBIAN_FRONTEND=noninteractive
apt-get update -q --yes
apt-get install -q --yes wget vim ca-certificates

wget -nv https://packages.chef.io/stable/ubuntu/12.04/chef-compliance_1.5.14-1_amd64.deb

#wget -nv https://packages.chef.io/stable/ubuntu/16.04/chef-compliance_1.6.8-1_amd64.deb

dpkg -i chef-compliance_1.5.14-1_amd64.deb

cd /
rm -rf $temp_dir
