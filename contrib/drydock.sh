#!/bin/bash

if [ -z "${uri}" ]; then
    uri=$1
fi

if [ -z "${commit}" ]; then
    commit=$2
    export commit
fi

for script in `find contrib/drydock/ -type f -name "*.sh" | sort`; do
    ./$script || exit $?
done