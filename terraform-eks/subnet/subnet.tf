variable "subnet_ids" {
  type = list(string)
  default = ["172.31.1.0/24", "172.31.2.0/24"]
}

data "aws_subnet" "eks_subnets" {
    count = length(var.subnet_ids)
    vpc_id = var.vpc_id
    cidr_block = element(var.subnet_ids, count.index)
}

output "eks_subnet_ids" {
  value = tolist(data.aws_subnet.eks_subnets[*].id)
}
