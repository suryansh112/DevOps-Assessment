resource "aws_ecs_cluster" "my_cluster" {
  name = "PearlThoughtsAssesment"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}