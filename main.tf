provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
}

module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source    = "./modules/ec2"
  project   = "simple-project"
  subnet-id = "${module.vpc.public-subnet-id}"
  key-pair  = "${file("${path.cwd}/keypair")}"
  vpc-id    = "${module.vpc.vpc-id}"
}
