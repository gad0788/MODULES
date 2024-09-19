 variable "ami" {
   default = "ami-0a5c3558529277641"
 }
 variable "instance_type" {
   default = "t2.micro"
 }
 variable "key_name" {
   default = "ec2-key"
 }
 variable "region_name" {
   default = "us-east-1"
 }
 variable "sg_name" {
   default = "web-sg"
 }