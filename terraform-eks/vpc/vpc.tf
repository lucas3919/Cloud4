data "aws_vpc" "myvpc-cdcp" {
  id = "vpc-04644f64fd1bd8b34"  
}

output "vpc_id" {
    value = data.aws_vpc.myvpc-cdcp.id
}