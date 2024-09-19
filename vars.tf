 variable "ami" {
   default = "ami-0a5c3558529277641"
 }
 variable "INSTANCE_TYPE" {
   default = "t2.micro"
 }
 variable "key_name" {
   default = "ec2-key"
 }
 variable "REGION" {
   default = "us-east-1"
 }
 variable "sg_name" {
   default = "web-sg"
 }
 variable "ENVIRONMENT" {
   default = "dev"
 }