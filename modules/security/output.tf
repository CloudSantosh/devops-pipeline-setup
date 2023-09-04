output "jenkins_server_security_group_id" {
  value = aws_security_group.jenkins_server_security_group.id
}
/*
output "sonarqube_server_security_group_id" {
  value = aws_security_group.sonarqube_server_security_group.id
}
*/
output "docker_server_security_group_id" {
  value = aws_security_group.docker_server_security_group.id

}
