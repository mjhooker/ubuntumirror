#!/bin/bash

touch ~/.gnupg/trustedkeys.gpg
chmod 600 ~/.gnupg/trustedkeys.gpg
gpg --keyserver pgp.mit.edu --primary-keyring ~/.gnupg/trustedkeys.gpg --recv-keys 437D05B5

while true
do

debmirror --proxy=http://192.168.0.15:3128 --nosource --diff=none --progress --verbose --method=http --host gb.archive.ubuntu.com --root=ubuntu --dist=lucid,lucid-updates,lucid-security --section=main,restricted,multiverse,universe ubuntu
#debmirror --nosource --diff=none --progress --verbose --method=http --host gb.archive.ubuntu.com --root=ubuntu --dist=lucid,lucid-updates,lucid-security --section=main,restricted,multiverse,universe ubuntu
sleep 600
done
