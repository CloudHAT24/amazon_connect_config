variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "connect_instance_id" {
  description = "Amazon Connect Instance ID"
  type        = string
}

variable "queue_name" {
  description = "Amazon Connect Queue name"
  Name = "TP_Outbound_Queue"
  type        = string
}


variable "hours_of_operation_id" {
  description = "Amazon Connect Hours of Operation ID"
  HOOP = "Business Hours"
  type        = string
}

variable "outbound_caller_id_name" {
  description = "Outbound caller ID name"
  type        = string
  default     = null
}

variable "outbound_caller_id_number" {
  description = "Outbound caller ID number"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags for the Amazon Connect queue"
  type        = map(string)

  default = {
    ManagedBy   = "Terraform"
    Application = "AmazonConnect"
  }
}
