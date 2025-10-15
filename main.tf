resource "aws_vpc" "demovpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
       Name = "myjenkinsnetwork"
    }
}
resource "aws_subnet" "subnets" {
    vpc_id = aws_vpc.demovpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "ap-south-1a"
    tags = {
      Name = "web1"
      
    }
  
}