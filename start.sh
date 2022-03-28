#!/bin/bash
chmod +x ./start-process.sh
nohup ./start-process.sh > foo.out 2> foo.err < /dev/null &
