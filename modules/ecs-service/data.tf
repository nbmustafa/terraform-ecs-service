data aws_region current {
}

data aws_caller_identity current {
}

data aws_vpc vpc {
  filter {
    name   = "tag:Name"
    values = ["*default*"]
  }
}

data aws_subnet_ids subnet_ids {
  vpc_id = data.aws_vpc.vpc.id
}

data aws_security_group vpc_default_sg {
  vpc_id = data.aws_vpc.vpc.id
  name   = "default"
}

data aws_ecr_repository service {
  name = "nashwan"
}