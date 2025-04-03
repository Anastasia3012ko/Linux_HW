#!/bin/bash
set -e

ls -l /opt/131224-wdm
chmod 744 /opt/131224-wdm/*.sh
ls -l /opt/131224-wdm | grep sh
echo "done"
