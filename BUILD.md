
sudo pacman -S less git wget curl openssh cowsay python-pip btop


yay -S bluez blueberry
yay -S xdg-user-dirs

sudo systemctl enable bluetooth
sudo systemctl start bluetooth
alacritty migrate

python -m venv ~/venv
source venv/bin/activate
pip install ansible

sudo pacman-key --init

# copy ssh keys locally

source ~/venv/bin/activate
ansible-galaxy collection install community.general kewlfft.aur
ansible-playbook setup-01-arch-prerequirements.yml -K -e 'ansible_python_interpreter=/usr/bin/python3' --diff
ansible-playbook setup-02-de.yml -K -e 'ansible_python_interpreter=/usr/bin/python3' --diff
# without venv
# deactivate
# yay -S auto-cpufreq
# source ~/venv/bin/activate
ansible-playbook setup-03-additions-arch.yml -K -e 'ansible_python_interpreter=/usr/bin/python3' --diff