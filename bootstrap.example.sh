#!/bin/bash

mkdir -p /etc/facter
mkdir -p /etc/facter/facts.d
echo "instance_role=webserver" > /etc/facter/facts.d/instance_role.txt
puppet apply /etc/puppet/manifests/site.pp --modulepath=/etc/puppet/modules --fileserverconfig=/etc/puppet/fileserver.conf --hiera_config=/etc/puppet/hiera.yaml
