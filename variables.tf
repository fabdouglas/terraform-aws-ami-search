variable "os" {
   description = "The Os reference to search for"
}

variable "amis_os_map_regex" {
  description = "Map of regex to search amis"
  type = "map"

  default = {
    ubuntu-14.04 = "^ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-.*"
    ubuntu-16.04 = "^ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-.*"
    centos-6     = "^CentOS Linux 6.*"
    centos-7     = "^CentOS Linux 7.*"
    rhel-6       = "^RHEL-6.*"
    rhel-7       = "^RHEL-7.*"
    debian-8     = "^debian-jessie-.*"
    debian-9     = "^debian-stretch-.*"
    amazon       = "^amzn-ami-hvm-.*-gp2"
    amazon-2_lts = "^amzn2-ami-hvm-.*-gp2"
    suse-les-12  = "^suse-sles-12-sp\\d-v\\d{8}-hvm-ssd-x86_64"
    windows-2016-base    = "^Windows_Server-2016-English-Full-Base-.*"
    windows-2012-r2-base = "^Windows_Server-2012-R2_RTM-English-64Bit-Base-.*"
    windows-2008-r2-base = "^Windows_Server-2008-R2_SP1-English-64Bit-Base-.*"
  }
}


variable "amis_os_map_owners" {
  description = "Map of amis owner to filter only official amis"
  type = "map"
   default = {
      ubuntu-14.04 = "099720109477" #CANONICAL
      ubuntu-16.04 = "099720109477" #CANONICAL
      rhel-6       = "309956199498" #Amazon Web Services
      rhel-7       = "309956199498" #Amazon Web Services
      centos-6     = "679593333241"
      centos-7     = "679593333241"
      debian-8     = "679593333241"
      debian-9     = "679593333241"
      amazon       = "137112412989" #amazon
      amazon-2_lts = "137112412989" #amazon
      suse-les-12  = "013907871322" #amazon
      windows-2016-base = "801119661308" #amazon
      windows-2012-r2-base = "801119661308" #amazon
      windows-2008-r2-base = "801119661308" #amazon
  }
}