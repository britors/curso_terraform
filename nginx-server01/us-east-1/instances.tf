resource "aws_instance" "dev" {
  count         = 3
  ami           = var.instance["ami"]
  instance_type = var.instance["instance_type"]
  vpc_security_group_ids = [
    "${aws_security_group.dev-nginx_ssh.id}",
    "${aws_security_group.dev-nginx_http.id}",
    "${aws_security_group.dev-nginx_https.id}"
  ]
  depends_on = [
    aws_s3_bucket.dev4
  ]
}

