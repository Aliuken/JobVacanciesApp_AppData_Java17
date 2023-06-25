#!/bin/bash
echo "kibana-create-keystore.sh beginning"
kibana-keystore create
echo kibana_system | kibana-keystore add elasticsearch.username --stdin --force
echo changeme2 | kibana-keystore add elasticsearch.password --stdin --force
echo "kibana-create-keystore.sh ending"
kibana
