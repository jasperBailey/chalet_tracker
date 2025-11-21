terraform {
  backend "s3" {
    bucket       = "chalet-tracker-tfstate"
    key          = "terraform.tfstate"
    region       = "eu-west-2"
    encrypt      = true
    use_lockfile = true
  }
}