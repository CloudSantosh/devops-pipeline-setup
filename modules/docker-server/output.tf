output "docker-server-public-ip" {
  value = aws_instance.docker-server.public_ip
}
