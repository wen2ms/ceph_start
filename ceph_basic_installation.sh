#!/bin/bash

curl --silent --remote-name --location https://github.com/ceph/ceph/raw/pacific/src/cephadm/cephadm

chmod +x cephadm

./cephadm add-repo --release pacific 

./cephadm install

./cephadm install ceph-common

cephadm bootstrap --mon-ip <local_ip>

ssh-copy-id -f -i /etc/ceph/ceph.pub root@ceph02

ceph orch host add ceph02 <local_ip>

ceph orch host add ceph03 <local_ip>

ceph orch host ls

# ceph orch daemon add osd ceph01:/dev/sdb
ceph orch apply osd --all-available-devices

ceph orch device ls

ceph -s