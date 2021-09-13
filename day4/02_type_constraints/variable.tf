variable "environment" {
  type        = string
  default     = "staging"
  description = "The environment of instance"
}

variable "sg" {
  type        = list(number)
  default     = [1, 2, 3, 4]
  description = "The list of sg for this instance"
}