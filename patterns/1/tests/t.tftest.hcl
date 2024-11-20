mock_provider "aws" {
}
mock_provider "azurerm" {
}
mock_provider "google" {
}

run "S3_Bucket_Unit_Tests_With_Mock_Providers" {

  # Bucket name formatting


  assert {
    condition = length([
      for _, mod in module.aws : mod.instance_name
    ]) == 2
    error_message = "Simple test"
  }
}
