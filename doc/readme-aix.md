# Instructions for AIX Systems

Please note that the software versions referenced in this document might have changed and might not be available/working unless updated.

- Grafana and InfluxDB can be downloaded from the [Power DevOps](https://www.power-devops.com/) website - look under the *Monitor* section.

- Ensure Java (version 8 or later) is installed and available in your PATH.


## Download and Install svci

[Download](https://git.data.coop/nellemann/-/packages/generic/svci/) the latest version of SVCi packaged for rpm.

```shell
rpm -ivh --ignoreos svci-0.0.3-1_all.rpm
cp /opt/svci/doc/svci.toml /etc/
```

Now modify */etc/svci.toml* and test your setup by running ```/opt/svci/bin/svci -d```

