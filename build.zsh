#!/usr/bin/env zsh

[[ -d build ]] || mkdir -p build
echo '[' >! build/index.json
local -a _package_list
_package_list=(./packages/*)
if [[ ${#_package_list[@]} -gt 0 ]]; then
	cat "${_package_list[1]}" >> build/index.json
  _package_list[1]=()
	for f in "${_package_list[@]}"; do
		echo "," >> build/index.json
		cat "$f" >> build/index.json
	done
fi
echo ']' >> build/index.json

