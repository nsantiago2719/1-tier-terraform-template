provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
}

resource "aws_security_group" "default-group" {
  name = "${var.project}-default-group"
  description = "allow all"
  vpc_id      = "${var.vpc-id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "-1"
    description = "allow all outbound traffic"
  }
}

resource "aws_key_pair" "tier1-key-pair" {
  key_name   = "${var.project}-key-pair"
  public_key = "${var.key-pair}"
}

resource "aws_instance" "tier1" {
  ami                    = "ami-0c6b1d09930fac512"
  instance_type          = "t2.micro"
  key_name               = "${aws_key_pair.tier1-key-pair.key_name}"
  subnet_id              = "${var.subnet-id}"
  vpc_security_group_ids = ["${aws_security_group.default-group.id}"]
  user_data              = "${var.user-data}"

  tags = {
    Name = "${var.project}-instance"
  }
}
