#!/bin/bash

# EDIT: indicate where your configuration files will be stored
data=$PWD

#sudo cp ../munge.key .
#sudo chown 106 munge.key
docker run -d -v $data/conf:/etc/slurm-web \
              -v $data/../slurm.conf:/etc/slurm-llnl/slurm.conf \
              -p 9099:80 \
		--hostname=SLURMWEB \
                --dns-search=maas \
                --dns=192.168.1.1 \
              slurm-web
