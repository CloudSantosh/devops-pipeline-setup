#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#  create security group for Jenkins-server
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "jenkins_server_security_group" {
  name        = "jenkins server security group"
  description = "enable http and ssh access"
  vpc_id      = var.vpc_id

  ingress {
    description = "http access"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "outbound access"
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-jenkins-server-security-group"
  }
}
