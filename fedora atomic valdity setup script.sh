cd /etc/yum.repos.d/
sudo wget https://copr.fedorainfracloud.org/coprs/sneexy/python-validity/repo/fedora-$(rpm -E %fedora)/sneexy-python-validity-fedora-$(rpm -E %fedora).repo
rpm-ostree override remove fprintd fprintd-pam --install open-fprintd --install fprintd-clients --install fprintd-clients-pam --install python3-validity
sudo systemctl start python3-validity.service
sudo systemctl start open-fprintd.service
sudo systemctl enable open-fprintd.service python3-validity.service
sudo systemctl disable open-fprintd-resume.service open-fprintd-suspend.service
sudo systemctl enable open-fprintd-restart-after-resume.service python3-validity-restart-after-resume.service


