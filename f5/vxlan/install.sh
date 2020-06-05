##### tested non-HA env
```
tmsh create auth partition openshift
tmsh create net tunnels vxlan vxlan-mp flooding-type multipoint
tmsh create net tunnels tunnel openshift_vxlan key 0 profile vxlan-mp local-address 192.168.1.21
tmsh create net self 10.254.7.21/16 allow-service all vlan openshift_vxlan
```
