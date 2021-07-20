variable "create_ecs" {
  description = "Controls if ECS should be created"
  type        = bool
  default     = false
}
variable "name" {
  description = "Name to be used on all the resources as identifier, also the name of the ECS cluster"
  type        = string
  default     = "default-campspot-ecs"
}
variable "tags" {
  description = "A map of tags to add to ECS Cluster"
  type        = map(string)
  default     = {
    name = "default-campspot-ecs",
    customer = "",
    environment = "",
    costcenter = "",
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
  default     = ["FARGATE_SPOT"]
}
variable "container_insights" {
  description = "Controls if ECS Cluster has container insights enabled"
  type        = bool
  default     = true
}
variable "owner" {
  default = "devops@campspot.com"
}