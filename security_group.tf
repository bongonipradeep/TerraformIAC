resource "aws_security_group" "allow_ssh" {
  name        = "allow_SSH1"
  description = "Allow SSH inbound traffic1"
  vpc_id      = "vpc-0c92f205aed1d57bb"

  ingress {
    # SSH Port 22 allowed from any IP
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
      # SSH Port 80 allowed from any IP
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
