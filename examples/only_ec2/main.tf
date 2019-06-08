
provider "aws" {
  region                  = "us-east-1"
}

module "ec2" {
  source    = "./modules/ec2"
  project   = "simple-project"
  subnet-id = "<insert-the-subnet-id-here>"
  key-pair  = "${file("${<your-key-pair-here>}")}"
  vpc-id    = "<insert-vpc-id-where-the-subnet-above-can-be-found>"
}
