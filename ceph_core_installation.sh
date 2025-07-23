#!/bin/bash

ceph orch apply rgw rgw --placement=3

ceph orch ls

ceph orch ps

radosgw-admin user create --uid=rgw --display-name=rgw --system

ceph fs volume create cephfs --placement=3

# ceph orch apply nfs nfs ganesha_data  --placement=3

ceph osd pool create iscsi_pool 16 16
ceph osd pool application enable iscsi_pool iscsi

vi iscsi.yaml

ceph orch apply -i iscsi.yaml

ceph orch ls