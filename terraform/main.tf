resource "aws_instance" "flask-instance" {
  ami             = "ami-07dc734dc14746eab"
  instance_type   = "t2.micro"
  subnet_id       = "subnet-06456b579d29c3c70"
  key_name        = "Imagination" 
  tags {
    Name = "imagination-tech-test"
  }
}

resource "local_file" "hosts" {
    content     = "[remote]\nec2_instanace ansible_ssh_host=${aws_instance.flask-instance.*.public_ip[0]}"
    filename = "../ansible/hosts"
}

output "ip" {
  value = "${aws_instance.flask-instance.*.private_ip}"
}

output "pub-ip" {
  value = "${aws_instance.flask-instance.*.public_ip}"
}
