output "instance_name" {
  value = aws_instance.instance.*.tags.Name
}

output "instance_ip" {
  value = aws_instance.instance.*.private_ip
}

output "instance_public_ip" {
  value = aws_instance.instance.*.public_ip
}
