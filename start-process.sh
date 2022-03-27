#!/bin/bash
cd /home/ec2-user/
java -jar /home/ec2-user/demo2-1.0.0.jar & echo $! > ./pid.file &
