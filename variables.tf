variable "sagemaker_human_task_uis" {
  description = <<EOT
Map of sagemaker_human_task_uis, attributes below
Required:
    - human_task_ui_name
    - ui_template (block):
        - content (optional)
Optional:
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    human_task_ui_name = string
    region             = optional(string)
    tags               = optional(map(string))
    tags_all           = optional(map(string))
    ui_template = object({
      content = optional(string)
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_human_task_uis : (
        (length(v.human_task_ui_name) >= 1 && length(v.human_task_ui_name) <= 63) && (can(regex("^[0-9a-z](-*[0-9a-z])*$", v.human_task_ui_name)))
      )
    ])
    error_message = "all of: must be between 1 and 63 characters; Valid characters are a-z, A-Z, 0-9, and - (hyphen)."
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

