#!/bin/bash
chmod +x /home/ec2-user/start-process.sh
nohup /home/ec2-user/start-process.sh > foo.out 2> foo.err < /dev/null &
