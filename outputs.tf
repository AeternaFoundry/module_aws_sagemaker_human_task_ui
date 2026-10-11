output "sagemaker_human_task_uis_id" {
  description = "Map of id values across all sagemaker_human_task_uis, keyed the same as var.sagemaker_human_task_uis"
  value       = { for k, v in aws_sagemaker_human_task_ui.sagemaker_human_task_uis : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sagemaker_human_task_uis_arn" {
  description = "Map of arn values across all sagemaker_human_task_uis, keyed the same as var.sagemaker_human_task_uis"
  value       = { for k, v in aws_sagemaker_human_task_ui.sagemaker_human_task_uis : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sagemaker_human_task_uis_human_task_ui_name" {
  description = "Map of human_task_ui_name values across all sagemaker_human_task_uis, keyed the same as var.sagemaker_human_task_uis"
  value       = { for k, v in aws_sagemaker_human_task_ui.sagemaker_human_task_uis : k => v.human_task_ui_name if v.human_task_ui_name != null && length(v.human_task_ui_name) > 0 }
}
output "sagemaker_human_task_uis_region" {
  description = "Map of region values across all sagemaker_human_task_uis, keyed the same as var.sagemaker_human_task_uis"
  value       = { for k, v in aws_sagemaker_human_task_ui.sagemaker_human_task_uis : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_human_task_uis_tags" {
  description = "Map of tags values across all sagemaker_human_task_uis, keyed the same as var.sagemaker_human_task_uis"
  value       = { for k, v in aws_sagemaker_human_task_ui.sagemaker_human_task_uis : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sagemaker_human_task_uis_tags_all" {
  description = "Map of tags_all values across all sagemaker_human_task_uis, keyed the same as var.sagemaker_human_task_uis"
  value       = { for k, v in aws_sagemaker_human_task_ui.sagemaker_human_task_uis : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "sagemaker_human_task_uis_ui_template" {
  description = "Map of ui_template values across all sagemaker_human_task_uis, keyed the same as var.sagemaker_human_task_uis"
  value       = { for k, v in aws_sagemaker_human_task_ui.sagemaker_human_task_uis : k => one(v.ui_template) if v.ui_template != null && length(v.ui_template) > 0 }
}

