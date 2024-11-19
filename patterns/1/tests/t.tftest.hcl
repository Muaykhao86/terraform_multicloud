mock_provider "aws" {
}

run "S3_Bucket_Unit_Tests_With_Mock_Providers" {

  # Bucket name formatting

  assert {
    condition     = length(module.aws.*.instance_name) > 1
    error_message = "Simple test"
  }
}
