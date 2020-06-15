FROM ubuntu:20.04

WORKDIR /ansible

# Install prerequisities for Ansible
RUN apt-get update
RUN apt-get -y install python3 python3-nacl python3-pip libffi-dev

# Install ansible
RUN pip3 install ansible
RUN ansible-galaxy install gavika.easy_rsa
RUN ansible-galaxy install gavika.openvpn
COPY . .

# /etc/ansible/hosts
# Copy your ansible configuration into the image
# COPY my_ansible_project /ansible
#
# # Run ansible to configure things
# RUN ansible-playbook /ansible/playbook.yml
# RUN ls
# RUN ansible-playbook -i inventory.yml /ansible/openvpn-server.yml --private-key /ansible/ssh/private -vvv

ENTRYPOINT ["tail", "-f", "/dev/null"]

# CMD ["ansible-playbook", " -i inventory.yml /ansible/openvpn-server.yml --private-key"," /ansible/ssh/private"]
