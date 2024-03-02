variable "ami_id"{
     type = string     # this is datatype
     default = "ami-0f3c7d07486cad139"  # this is default value
}

variable "instance_names"{
     type = list
     default = ["MongoDB", "Cart", "catalogue", "User", "Redis", "Mysql", "Rabbitmq", "Web", "payment", "shipping"]
}