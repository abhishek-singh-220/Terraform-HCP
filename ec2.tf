variable "region"{
 type = map
 default = {
   ap-southeast = "ami-00392df720ebc45d1"
   us-east-1 = "ami-000750470f5687d65"
 }
}


resource "aws_instance" "myec2" {
  ami           = var.region[var.region]
  instance_type = "t3.micro"

  tags = {
    Name = "FirstEc2Instance"
  }
}
