locals{
    common_name_suffix = "${var.project}-${var.environment}"
    windows_ami = data.aws_ami.windows_2023.id
    linux_ami = data.aws_ami.linux_2023.id
    default_vpc = data.aws_vpc.default_vpc.id
    subnet_id = data.aws_subnet.default_subnet.id
    sg_id = data.aws_security_group.default_sg.id
    common_tags = {
        Project = var.project
        Environment = var.environment
        Terraform = "true"
    }
}