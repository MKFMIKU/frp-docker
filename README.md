# frp-docker
Used to router gpu servers, hosted in a Centos7 VPS.

| File          | Place                           | Used                                 |
| ------------- |:-------------------------------:| ------------------------------------:|
| frps.service  | /etc/systemd/system/frps.service| Hosted frps service with run in boot |
| frps.ini      | /home/frp                       | Config file                          |


| Intranet      | Internet      | Type  | Usage        |
| ------------- |:-------------:| -----:| ------------:|
| 8888          | 80            | http  | Jupyter      |
| 22            | 22            | tcp   | ssh          |
| 6006          | 80            | http  | Tesnorboard  |
