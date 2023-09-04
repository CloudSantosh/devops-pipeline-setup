#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#  create security group for Jenkins-server
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "jenkins_server_security_group" {
  name        = "server security group"
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
/*
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#  create security group for Sonarqube-server
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

resource "aws_security_group" "sonarqube_server_security_group" {
  name        = "sonarqube server security group"
  description = "enable http and ssh access"
  vpc_id      = var.vpc_id


  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "http access"
    from_port   = 9000
    to_port     = 9000
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
    Name = "${var.project_name}-sonarqube-server-security-group"
  }
}

*/

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#  create security group for Docker-server
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

resource "aws_security_group" "docker_server_security_group" {
  name        = "docker server security group"
  description = "enable http and ssh access"
  vpc_id      = var.vpc_id


  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "http access"
    from_port   = 8085
    to_port     = 8085
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
    Name = "${var.project_name}-docker-server-security-group"
  }
}
