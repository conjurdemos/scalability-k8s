#!/bin/bash -e
set -o pipefail

kubectl config use-context minikube

conjur init -h conjur-master -f conjurrc
export CONJURRC=$(pwd)/conjurrc
conjur plugin install policy
printf "When prompted, login with password 'Cyberark1'\n"
conjur authn login admin
conjur bootstrap
cd build
./build.sh
cd ..

