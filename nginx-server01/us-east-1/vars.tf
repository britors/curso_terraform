variable "bucket" {
  type = map
  default =  {
    name = "w3ti-dev"
    acl = "private"
  }
  
}

variable "cidr_blocks_ssh" {
  type = list
  default =  ["177.170.123.238/32"]
}

variable "cidr_blocks_http" {
  type = list
  default =  ["177.170.123.238/32"]
}

variable "cidr_blocks_https" {
  type = list
  default =  ["177.170.123.238/32"]
}

variable "instance" {
  type = map
  default = {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
  }
}
