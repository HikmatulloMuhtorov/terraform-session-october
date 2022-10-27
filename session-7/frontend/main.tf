resource "aws_sqs_queue" "main" {
  name  = replace(local.name, "rtype","sqs-main")
  count = length(var.sqs_queue)
  tags  = merge(local.common_tags, { Name = replace(local.name, "rtype", "sqs-main") })
}
