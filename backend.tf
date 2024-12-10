terraform {
  backend "s3" {
    bucket         = "<s3-bucket-name>" #Configure s3 bucket name to store the state file
    key            = "terraform.tfstate"
    region         = "<region>" # Configure the region name
    dynamodb_table = "terraform-state-lock-dynamo" # Configure the dynamo DB to store the lock file
    profile        = "<profile>"     #Use the profile if you are using profile based authentication else remove this variable
  }
}
