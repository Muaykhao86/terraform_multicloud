mock_provider "aws" {
}

run "S3_Bucket_Unit_Tests_With_Mock_Providers" {

  # Bucket name formatting

  assert {
    condition     = true != false
    error_message = "Simple test"
  }
}
