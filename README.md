AWS AMI SEARCH Terraform module
=================================

Terraform module to find the last version of an AWS Ami IDs for working region, using common os name.


Usage
--------

Set the 'os' var from the below list : 

```
# Linux
ubuntu-14.04
ubuntu-16.04
centos-6
centos-7
rhel-6
rhel-7
debian-8
debian-9
amazon
amazon-2_lts
suse-les-12


# Windows
windows-2016-base
windows-2012-r2-base
windows-2008-r2-base
```



Examples
--------

```hcl
module "ami-search" {
  source  = "otassetti/ami-search/aws"
  os = "windows-2016-base"
}

resource "aws_instance" "web" {
  ami = "${module.ami-search.ami_id}"
  instance_type = "t2.micro"

  tags {
    Name = "HelloWorld"
  }
}


```

Limitations
-----------

* Hvm type only (Hardcoded in the filter module)


Authors
-------

Module managed by [Olivier Tassetti].

License
-------

Apache 2 Licensed. See LICENSE for full details.
