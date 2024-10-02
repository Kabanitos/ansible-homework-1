#!/bin/bash
docker run -d --name ubuntu cocoabeans/ubuntu-python sleep 3600000
docker run -d --name fedora pycontribs/fedora sleep 3600000
docker run -d --name altlinux altlinux/python sleep 3600000

ansible-playbook -i inventory/prod.yml site.yml --ask-vault-password

docker stop ubuntu fedora altlinux