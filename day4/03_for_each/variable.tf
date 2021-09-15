variable "instance_type" {
  type        = list(string)
  default     = ["t1.micro", "t2.micro"]
  description = "The list of instance type"
}