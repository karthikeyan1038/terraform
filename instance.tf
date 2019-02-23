resource "aws_instance" "nginx" {
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  monitoring                  = true
  vpc_security_group_ids      = ["${aws_security_group.elb.id}"]
  subnet_id                   = "${aws_subnet.public_subnet.id}"
  associate_public_ip_address = true

  tags {
    Name        = "nginx-public"
    }
user_data = <<HEREDOC
  #!/bin/bash
  yum update -y
  yum install -y nginx
  service nginx start
HEREDOC
}

resource "aws_instance" "nginx-private" {
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  monitoring                  = true
  vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
  subnet_id                   = "${aws_subnet.private_subnet.id}"

  tags {
    Name        = "nginx-private"
    }
user_data = <<HEREDOC
  #!/bin/bash
  yum update -y
  yum install -y nginx
  service nginx start
HEREDOC
}

