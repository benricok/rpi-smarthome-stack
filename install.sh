#!/bin/bash
#
#   Rpi-smarthome-stack - configuration files and scripts for commonly used selfhosted software
#   Copyright (C) 2021 Benrico Krog
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Affero General Public License version 3 
#   as published by the Free Software Foundation
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU Affero General Public License for more details.
#
#   You should have received a copy of the GNU Affero General Public License
#   along with this program.  If not, see https://www.gnu.org/licenses/agpl-3.0.html.

#Get timezone
function timezone() 
{
	TZ=$(cat /etc/timezone)
    envFile=$1

	#test TZ=
	[ $(grep -c "TZ=" $env_file) -ne 0 ] && sed -i "/TZ=/c\TZ=$TZ" $env_file
}

# Check if system architecture is arm
if ![ $(uname -m | grep -c "arm") ]; then
	echo "Your system architecture is not yet supported"
else 
	if ![ $(docker -v >/dev/null 2>&1 ) ]

fi