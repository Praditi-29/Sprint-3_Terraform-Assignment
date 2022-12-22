# NOTE: never declare excess variables which aren't in use in main.tf
variable "Tags" {
    type = map(any)
}

variable "BucketNames" {
    type = string
}