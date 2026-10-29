#!/bin/bash

for package in ./*.conda; do
	echo "Installing: $package"

	if conda install -y "$package"; then
		echo "$package: SUCCESS"
	else
		echo "$package: FAILED" | tee -a failed_installations.txt
	fi
done
