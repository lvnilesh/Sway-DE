source ~/venv/bin/activate
ansible-galaxy collection install community.general kewlfft.aur
ansible-playbook setup-01-arch-prerequirements.yml -K -e 'ansible_python_interpreter=/usr/bin/python3' --diff
ansible-playbook setup-02-de.yml -K -e 'ansible_python_interpreter=/usr/bin/python3' --diff
# without venv
# deactivate
# yay -S auto-cpufreq
# source ~/venv/bin/activate
ansible-playbook setup-03-additions-arch.yml -K -e 'ansible_python_interpreter=/usr/bin/python3' --diff