resource "aws_ecs_cluster" "my_cluster" {
  name = "PearlThoughtsAssesment"
      
  setting {
    name  = "containerInsights"
    value = "enabled"
  }
  configuration{
    execute_command_configuration {
    logging = "OVERRIDE"
  
  log_configuration{
    cloud_watch_log_group_name     = aws_cloudwatch_log_group.cb_log_group.name
  }
    }
  }
}
