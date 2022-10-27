variable "env" {
  type        = string
  description = "The current environment"
  default     = "dev"
}

variable "sqs_queue" {
  type        = list(string)
  description = "The sqs_queues"
  default     = ["main", "main1", "main2"]
}

variable "names" {
  type        = list(string)
  description = "name of the sqs queues"
  default     = ["main", "main1", "main2"]
}

variable "region" {
  type        = string
  description = "the region"
  default     = "us-east-1"

}

variable "project" {
  type        = string
  description = "the project"
  default     = "cat"
}

variable "stage" {
  type        = string
  description = "the stage"
  default     = "nonprod"
}

