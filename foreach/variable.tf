variable "ami_id"{
     type = string     # this is datatype
     default = "ami-0f3c7d07486cad139"  # this is default value
}

variable "instances" {
     type = map
     default = {
          MongoDB = "t3.medium"
          MySQL = "t3.medium"
          redis = "t2.micro"
          RabbitMQ = "t2.micro"
          catalogue = "t2.micro"
          user = "t2.micro"
          cart = "t2.micro"
          shipping = "t2.micro"
          payment = "t2.micro"
          web = "t2.micro"
     }
}

variable "ingress"{
     type = list
     default = [
          {
               from_port = 80
               to_port = 80
               description = "allowing port 80 from public"
               protocol = "tcp"
               cidr_blocks = ["0.0.0.0/0"]
          },
          {
               from_port = 443
               to_port = 443
               description = "allowing port 443 from public"
               protocol = "tcp"
               cidr_blocks = ["0.0.0.0/0"]
          },
           {
               from_port = 22
               to_port = 22
               description = "allowing port 22 from public"
               protocol = "tcp"
               cidr_blocks = ["0.0.0.0/0"]
          }
     ]
}