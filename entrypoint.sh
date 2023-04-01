echo $LEFT $RIGHT : PSK "$PSK" >/etc/ipsec.secrets

/usr/sbin/ipsec start --nofork
