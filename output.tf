output "Phobos_Public_IP" {
    value = aws_instance.phobos.public_ip
}

output "Deimos_Public_IP" {
    value = aws_instance.deimos.public_ip  
}
