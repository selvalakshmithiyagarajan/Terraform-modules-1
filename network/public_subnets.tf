resource "aws_subnet" "public_subnet" {
  count = length(var.public_cidr_block)

  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_cidr_block[count.index]
  availability_zone = var.azs[count.index]

  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${count.index}"
  }
}
