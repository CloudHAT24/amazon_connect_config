
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# ---------------------------------------------------------
# Amazon Connect Instance
# ---------------------------------------------------------
data "aws_connect_instance" "this" {
  instance_id = var.connect_instance_id
}

# ---------------------------------------------------------
# Queue
# ---------------------------------------------------------
resource "aws_connect_queue" "this" {
  instance_id = var.connect_instance_id

  name        = var.queue_name
  description = var.queue_description

  hours_of_operation_id = var.hours_of_operation_id

  # Optional outbound caller ID
  outbound_caller_id_name   = var.outbound_caller_id_name
  outbound_caller_id_number = var.outbound_caller_id_number

  tags = var.tags
}
