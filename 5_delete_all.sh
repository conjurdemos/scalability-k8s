#!/bin/bash

kubectl delete -f ./conjur-service
kubectl delete replicaset -lapp=webapp
kubectl delete replicaset -lapp=conjur-master
kubectl delete replicaset -lapp=conjur-follower
kubectl delete pods -lapp=conjur-appliance
kubectl delete pods -lapp=webapp
kubectl delete pods haproxy-conjur-master
rm ./conjur-service/*.tar
