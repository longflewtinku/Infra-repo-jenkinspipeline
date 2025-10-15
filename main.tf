resource "aws_vpc" "demovpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
       Name = "myjenkinsnetwork"
    }
}
resource "aws_subnet" "subnets" {
    count = 2
    vpc_id = aws_vpc.demovpc.id
    cidr_block = ["10.0.0.0/24", "10.0.1.0/24"]
    availability_zone = ["ap-south-1a", "ap-south-1b"]
    tags = {
      Name = ["web1", "dev1"]
    }
  
}