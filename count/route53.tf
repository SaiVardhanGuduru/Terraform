resource "aws_route53_record" "frontend" {
  provider = aws.personal
  zone_id = var.zone_id
  name    = "saivardhanguduru.cfd"
  type    = "A"
  ttl     = 1
  records = [aws_instance.expense[1].public_ip] #list type
  allow_overwrite = true
}