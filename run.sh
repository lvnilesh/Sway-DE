sudo pacman -S --needed --noconfirm -y python-pip ansible git curl wget less cowsay openssh btop bluez bluez-utils
ansible-galaxy collection install community.general kewlfft.aur
ansible-playbook setup-01-arch-prerequirements.yml -K -e 'ansible_python_interpreter=/usr/bin/python3' --diff
ansible-playbook setup-02-de.yml -K -e 'ansible_python_interpreter=/usr/bin/python3' --diff
ansible-playbook setup-03-additions-arch.yml -K -e 'ansible_python_interpreter=/usr/bin/python3' --diff
