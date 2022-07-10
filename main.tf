module "vm" {
    source = "./modules/vk"
    name = "jenkins"
    flavor_name = "Standard-2-4-40"
}
resource "null_resource" "playbook" {
  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ubuntu -e 'vm_ip=${module.vm.ip}' main.yaml"
  }
  depends_on = [module.vm]
}
