resource "aws_instance" "conditions"{
     count = 10
     ami =  var.ami_id 
     instance_type = "t2.micro"

     tags = {
          Name = var.instance_names[count.index]
     }
}


# MongoDb Cart Catalogue User Redis MySql Rabbitmq shipping payment web