#!/bin/bash
cd /home/ec2-user/
[ -f /home/ec2-user/pid.file ] && kill $(cat ./pid.file)
exit 0
