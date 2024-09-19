resource "aws_instance" "server1" {
  #count = 3 # numbers of instances to be created
  instance_type   = var.instance_type
  security_groups = [aws_security_group.sg-demo.name]
  ami             = var.ami
  key_name        = var.key_name
  tags = {
    Name = "Terraform server1"
    env  = "dev"
  }
  user_data = file("script.sh")
}
/*
resource "aws_ebs_volume" "vol1" {
  size              = 10
  availability_zone = aws_instance.server1.availability_zone
  tags = {
    Name      = "extra volume data"
    Team      = "devops"
    CreatedBy = "terraform"
  }
}
resource "aws_volume_attachment" "vol_attach" {
  instance_id = aws_instance.server1.id
  volume_id   = aws_ebs_volume.vol1.id
  device_name = "/dev/sdh"
}
*/