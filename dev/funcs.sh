#!/bin/bash

function get_wps_version()
{
	# Arch AUR install to /usr/lib
	local _INSTALLED_ROOT=(/opt/kingsoft/wps-office /usr/lib)
	for path in ${_INSTALLED_ROOT[@]} ; do
		if [ -e "$path/office6/cfgs/setup.cfg" ] ; then
			local _CFG_PATH="$path/office6/cfgs/setup.cfg"
			break
		fi
	done

	# maybe installed elsewhere, ignored
	if [ -z "${_CFG_PATH}" ] ; then
		return
	fi

	local _MAJOR=`cat ${_CFG_PATH} | grep -a -m1 MajorVersion | cut -d'=' -f2`
	local _FIRST=`cat ${_CFG_PATH} | grep -a -m1 FirstVersion | cut -d'=' -f2`
	local _SECOND=`cat ${_CFG_PATH} | grep -a -m1 SecondVersion | cut -d'=' -f2`
	local _VER=`cat ${_CFG_PATH} | grep -a -m1 ^Version | cut -d'=' -f2`

	echo "${_MAJOR}.${_FIRST}.${_SECOND}.${_VER}"
}

function root_install_path()
{
	local _PAHTS=(/opt/kingsoft/wps-office/office6 /usr/lib/office6)
	for path in ${_PAHTS} ; do
		if [ -e "${path}/mui" ] ; then
			echo "${path}/mui"
			break
		fi
	done

	# fallback
	echo "/opt/kingsoft/wps-office/office6/mui"
}

function user_install_path()
{
	local _VER=`get_wps_version`
	if [ -z "${_VER}" ] ; then
		echo "$HOME/.kingsoft/office6/mui"
	else
		echo "$HOME/.kingsoft/office6/mui/${_VER}"
	fi
}
