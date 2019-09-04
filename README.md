[![Build Status](https://travis-ci.org/iambryancs/mon-put-instance-data.svg?branch=master)](https://travis-ci.org/iambryancs/mon-put-instance-data)

## DinD for [mlabouardy/mon-put-instance-data](https://github.com/mlabouardy/mon-put-instance-data)
A tool used for publishing Docker metrics (and other custom) to CloudWatch using dind

## Usage
```
docker run -d -e AWS_INSTANCE_ID="" -e AWS_ACCESS_KEY_ID="" -e AWS_SECRET_ACCESS_KEY="" \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /sys/fs/cgroup:/sys/fs/cgroup
    --name collector mlabouardy/mon-put-instance-data --memory --swap --interval 1
```