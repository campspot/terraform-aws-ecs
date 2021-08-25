variable "create_ecs" {
  description = "Controls if ECS should be created"
  type        = bool
  default     = true
}
variable "name" {
  description = "Name to be used on all the resources as identifier, also the name of the ECS cluster"
  type        = string
  default     = "default-campspot-ecs"
}
variable "kms_key_id" {
  description = "KMS key arn to be used for logging"
  type        = string
  default     = ""
}
variable "tags" {
  description = "A map of tags to add to ECS Cluster"
  type        = map(string)
  default     = {
    name = "default-campspot-ecs",
    customer    = "campspot-default",
    environment = "default",
    costcenter  = "default",
    application = "default",
  }
}
variable "capacity_providers" {
  description = "List of short names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE_SPOT."
  type        = list(string)
  default     = ["FARGATE_SPOT", "FARGATE"]
}
variable "default_capacity_provider_strategy" {
  description = "The capacity provider strategy to use by default for the cluster. Can be one or more."
  type        = list(map(any))
  default     = [{capacity_provider = "FARGATE_SPOT"}]
}
variable "container_insights" {
  description = "Controls if ECS Cluster has container insights enabled"
  type        = bool
  default     = true
}
variable "owner" {
  default = "devops@campspot.com"
}