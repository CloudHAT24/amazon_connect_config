output "queue_id" {
  description = "Amazon Connect Queue ID"
  value       = aws_connect_queue.this.queue_id
}

output "queue_arn" {
  description = "Amazon Connect Queue ARN"
  value       = aws_connect_queue.this.arn
}

output "queue_name" {
  description = "Amazon Connect Queue name"
  value       = aws_connect_queue.this.name
}
