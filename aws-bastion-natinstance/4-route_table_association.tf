resource "aws_route_table_association" "demo_route_table_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.demo_route.id
}

resource "aws_route_table_association" "demo_route_table_association_private" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.demo_route_private.id
}
