# print the url of the jenkins server
output "ssh_splunk_forwader_command" {
  value     = join ("", ["ssh -i keypair10.pem ec2-user@", aws_instance.splunk-forwarder.public_dns])
}

output "Connexion_link_for_the_splunk_sever" {
  value     = join ("", ["http://", aws_instance.splunk-forwarder.public_dns, ":", "8000"])
}

output "ssh_splunk_server_command" {
  value     = join ("", ["ssh -i keypair10.pem ec2-user@", aws_instance.splunk-server.public_dns])
}