resource "aws_instance" "test" {
  monitoring    = "true"
  ami           = "ami-04505e74c0741db8d"
  instance_type = "c4.large"
  metadata_options {
    http_endpoint = "disabled"
  }
  ebs_optimized = "true"
  root_block_device {
    encrypted = "true"
  }
  tags = {
    "Name" = "tuffner instance"
  }
}
