resource "aws_instance" "docker"{
    ami = local.linux_ami
    instance_type = var.instance_type
    subnet_id = local.subnet_id
    security_groups = [local.sg_id]
    user_data = file("docker.sh")
    tags= merge(
    local.common_tags,{
      Name =  "${local.common_name_suffix}-docker"
    }
  ) 
}