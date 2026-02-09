resource "aws_instance" "docker"{
    ami = local.linux_ami
    instance_type = var.instance_type
    subnet_id = local.subnet_id
    security_groups = [local.sg_id]
    root_volume_size = 50
    root_volume_type = "gp3"
    user_data = file("docker.sh")
    root_block_device {
    volume_size = 50
    volume_type = "gp3"
  }
    tags= merge(
    local.common_tags,{
      Name =  "${local.common_name_suffix}-docker"
    }
  ) 
}