variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)
  default     = ["yash"]
}

variable "access_key" {
  description = "Create IAM users with these names"
  type        = string
}

variable "secret_access_key" {
  description = "Create IAM users with these names"
  type        = string
}