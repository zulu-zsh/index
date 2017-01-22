#!/usr/bin/env zsh

echo '[' >! index.json
local -a _package_list
_package_list=(./packages/*)
if [[ ${#_package_list[@]} -gt 0 ]]; then
	cat "${_package_list[1]}" >> index.json
  _package_list[1]=()
	for f in "${_package_list[@]}"; do
		echo "," >> index.json
		cat "$f" >> index.json
	done
fi
echo ']' >> index.json

