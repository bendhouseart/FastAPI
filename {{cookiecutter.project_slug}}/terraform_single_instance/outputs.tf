
output "instance_store_enabled" {
  value = local.instance_store_enabled
}

output "dhcp_ip" {
  value = join("", aws_instance.this.*.public_ip)
}

//output "public_ip" {
  //value = join("", aws_eip_association.main_ip.*.public_ip)
  //value = var.public_ip
//}

output "instance_type" {
  value = var.instance_type
}

output "network_name" {
  value = var.network_name
}

output "instance_id" {
  value = join("", aws_instance.this.*.id)
}

output "key_name" {
  value = join("", aws_key_pair.this.*.key_name)
}

output "public_dns" {
  value = aws_instance.this.public_dns
}

output "public_ip" {
  value = aws_instance.this.public_ip
}

output "elastic_ip" {
  value = aws_instance.this.associate_public_ip_address
}
//output "key" {
//  value = aws_key_pair.this.*.id[count.index]
//}
