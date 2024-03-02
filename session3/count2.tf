resource "aws_key_pair" "deployer" {
  key_name   = "devops-pub"
  public_key = file("${path.module}/devops.pub")
}

resource "aws_instance" "conditions" {
     ami =  var.ami_id 
     instance_type = "t2.micro"
     key_name = aws_key_pair.deployer.key_name
}