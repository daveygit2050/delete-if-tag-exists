terraform {
  backend "s3" {
    bucket = "goldsquare-state"
    key    = "terraform/delete-if-snapshot-exists"
    region = "eu-west-1"
  }
}
