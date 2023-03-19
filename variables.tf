variable "region" {
  type    = string
  default = "us-east-1"
}
variable "ami_id" {
  type = map
  default = {
    us-east-1    = "ami-02f3f602d23f1659d"
    
  }
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "key_name" {
  type    = string
  default = "Testlx"
}
