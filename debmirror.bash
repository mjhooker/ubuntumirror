#!/bin/bash

touch ~/.gnupg/trustedkeys.gpg
chmod 600 ~/.gnupg/trustedkeys.gpg
gpg --keyserver pgp.mit.edu --primary-keyring ~/.gnupg/trustedkeys.gpg --recv-keys 437D05B5

debmirror --nosource --diff=none --progress --verbose --method=http --host gb.archive.ubuntu.com --root=ubuntu --dist=lucid,lucid-updates,lucid-security --section=main,restricted,multiverse,universe ubuntu