#!/bin/bash -ex

TOP=$(git rev-parse --show-toplevel 2>/dev/null)

if [[ -z "$TOP" ]]; then
	echo "Must be run inside the git repsitory."
	exit 1
fi

ansible-galaxy install \
	-r $TOP/ansible/roles/prakashsurya.host-buttercup/requirements.yml \
	-p $TOP/ansible/roles \
	--force
