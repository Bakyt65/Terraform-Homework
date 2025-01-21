provider aws {
    region = var.region
}
resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_rsa.pub")
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami = var.ami_id != "" ? var.ami_id : data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  availability_zone = "${var.region}c"
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]


  tags = {
    Name = var.instance_name
  }
}
  output ec2 {
    value = aws_instance.web.public_ip

}
