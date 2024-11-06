variables {
  instance_type = "t1.test"
}

run "valid_ec2_type" {

  command = plan

  assert {
    condition     =  aws_instance.instance.instance_type == "t3_micro"
    error_message = "EC2 type does not match expected"
  }

}
