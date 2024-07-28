# Security group
resource "aws_security_group" "databricks_sg" {
  name        = "databricks-${local.prefix}-sg"
  description = "Default security group for ${local.prefix}"
  vpc_id      = var.existing_vpc_id

  ingress {
    from_port = 0
    to_port   = 0
    protocol  = -1
    self      = true
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "databricks-${local.prefix}-sg"
  }
}