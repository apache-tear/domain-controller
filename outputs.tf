output "zone" {
    value = aws_route53_zone.main
}

output "cert" {
    value = aws_acm_certificate.main
    sensitive = true
}