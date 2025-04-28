module "create_control_plane" {
  source                      = "kmayer10/create-ec2/aws"
  version                     = "1.0.1"
  ami                         = var.control_plane.ami
  instance_type               = var.control_plane.instance_type
  key_name                    = var.control_plane.key_name
  associate_public_ip_address = var.control_plane.associate_public_ip_address
  vpc_security_group_ids      = var.control_plane.vpc_security_group_ids
  subnet_id                   = var.control_plane.subnet_id
  tags                        = var.control_plane.tags
  user_data                   = var.control_plane.user_data
  private_key_file            = var.control_plane.private_key_file
  private_key                 = var.control_plane.private_key
}