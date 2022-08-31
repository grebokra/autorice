#!/bin/bash
hostname="$1"
if [[ -z "$hostname" ]]; then
	echo 'Error: needed hostname should be the first argument :(' 1>&2
    exit 2
fi

ansible "$hostname" -m ansible.builtin.setup

exit $?
