output "pip" {
  value = aws_instance.server1.public_ip
}
output "ssh-command" {
  value = "ssh -i ec2-key.pem ec2-user@${aws_instance.server1.public_ip}"
}