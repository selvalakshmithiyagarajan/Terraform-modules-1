resource "aws_subnet" "private_subnet" {
  count = length(var.private_cidr_block)

  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_cidr_block[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name = "private-subnet-${count.index}"
  }
}