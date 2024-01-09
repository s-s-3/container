terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.45.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1" #The region where the environment 
  #profile = "penguin"
}

resource "aws_ecr_repository" "app_ecr_repo" {
  name = "app-repo"
}

resource "aws_ecs_cluster" "my_cluster" {
  name = "app-cluster" # Name your cluster here
}
