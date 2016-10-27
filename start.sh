#!/bin/bash
set -e -x

export DEBIAN_FRONTEND=noninteractive
nohup /bin/sh -c /opt/chef-compliance/embedded/bin/runsvdir-start &
/opt/chef-compliance/bin/chef-compliance-ctl reconfigure
/opt/chef-compliance/bin/chef-compliance-ctl start
tail -F /var/log/chef-compliance/core/current
