variable "inspector2_filters" {
  description = <<EOT
Map of inspector2_filters, attributes below
Required:
    - action
    - name
Optional:
    - description
    - reason
    - region
    - tags
    - filter_criteria (block):
        - aws_account_id (optional, block):
            - comparison (required)
            - value (required)
        - code_repository_project_name (optional, block):
            - comparison (required)
            - value (required)
        - code_repository_provider_type (optional, block):
            - comparison (required)
            - value (required)
        - code_vulnerability_detector_name (optional, block):
            - comparison (required)
            - value (required)
        - code_vulnerability_detector_tags (optional, block):
            - comparison (required)
            - value (required)
        - code_vulnerability_file_path (optional, block):
            - comparison (required)
            - value (required)
        - component_id (optional, block):
            - comparison (required)
            - value (required)
        - component_type (optional, block):
            - comparison (required)
            - value (required)
        - ec2_instance_image_id (optional, block):
            - comparison (required)
            - value (required)
        - ec2_instance_subnet_id (optional, block):
            - comparison (required)
            - value (required)
        - ec2_instance_vpc_id (optional, block):
            - comparison (required)
            - value (required)
        - ecr_image_architecture (optional, block):
            - comparison (required)
            - value (required)
        - ecr_image_hash (optional, block):
            - comparison (required)
            - value (required)
        - ecr_image_in_use_count (optional, block):
            - lower_inclusive (required)
            - upper_inclusive (required)
        - ecr_image_last_in_use_at (optional, block):
            - end_inclusive (optional)
            - start_inclusive (optional)
        - ecr_image_pushed_at (optional, block):
            - end_inclusive (optional)
            - start_inclusive (optional)
        - ecr_image_registry (optional, block):
            - comparison (required)
            - value (required)
        - ecr_image_repository_name (optional, block):
            - comparison (required)
            - value (required)
        - ecr_image_tags (optional, block):
            - comparison (required)
            - value (required)
        - epss_score (optional, block):
            - lower_inclusive (required)
            - upper_inclusive (required)
        - exploit_available (optional, block):
            - comparison (required)
            - value (required)
        - finding_arn (optional, block):
            - comparison (required)
            - value (required)
        - finding_status (optional, block):
            - comparison (required)
            - value (required)
        - finding_type (optional, block):
            - comparison (required)
            - value (required)
        - first_observed_at (optional, block):
            - end_inclusive (optional)
            - start_inclusive (optional)
        - fix_available (optional, block):
            - comparison (required)
            - value (required)
        - inspector_score (optional, block):
            - lower_inclusive (required)
            - upper_inclusive (required)
        - lambda_function_execution_role_arn (optional, block):
            - comparison (required)
            - value (required)
        - lambda_function_last_modified_at (optional, block):
            - end_inclusive (optional)
            - start_inclusive (optional)
        - lambda_function_layers (optional, block):
            - comparison (required)
            - value (required)
        - lambda_function_name (optional, block):
            - comparison (required)
            - value (required)
        - lambda_function_runtime (optional, block):
            - comparison (required)
            - value (required)
        - last_observed_at (optional, block):
            - end_inclusive (optional)
            - start_inclusive (optional)
        - network_protocol (optional, block):
            - comparison (required)
            - value (required)
        - port_range (optional, block):
            - begin_inclusive (required)
            - end_inclusive (required)
        - related_vulnerabilities (optional, block):
            - comparison (required)
            - value (required)
        - resource_id (optional, block):
            - comparison (required)
            - value (required)
        - resource_tags (optional, block):
            - comparison (required)
            - key (required)
            - value (required)
        - resource_type (optional, block):
            - comparison (required)
            - value (required)
        - severity (optional, block):
            - comparison (required)
            - value (required)
        - title (optional, block):
            - comparison (required)
            - value (required)
        - updated_at (optional, block):
            - end_inclusive (optional)
            - start_inclusive (optional)
        - vendor_severity (optional, block):
            - comparison (required)
            - value (required)
        - vulnerability_id (optional, block):
            - comparison (required)
            - value (required)
        - vulnerability_source (optional, block):
            - comparison (required)
            - value (required)
        - vulnerable_packages (optional, block):
            - architecture (optional, block):
                - comparison (required)
                - value (required)
            - epoch (optional, block):
                - lower_inclusive (required)
                - upper_inclusive (required)
            - file_path (optional, block):
                - comparison (required)
                - value (required)
            - name (optional, block):
                - comparison (required)
                - value (required)
            - release (optional, block):
                - comparison (required)
                - value (required)
            - source_lambda_layer_arn (optional, block):
                - comparison (required)
                - value (required)
            - source_layer_hash (optional, block):
                - comparison (required)
                - value (required)
            - version (optional, block):
                - comparison (required)
                - value (required)
EOT

  type = map(object({
    action      = string
    name        = string
    description = optional(string)
    reason      = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    filter_criteria = optional(list(object({
      aws_account_id = optional(list(object({
        comparison = string
        value      = string
      })))
      code_repository_project_name = optional(list(object({
        comparison = string
        value      = string
      })))
      code_repository_provider_type = optional(list(object({
        comparison = string
        value      = string
      })))
      code_vulnerability_detector_name = optional(list(object({
        comparison = string
        value      = string
      })))
      code_vulnerability_detector_tags = optional(list(object({
        comparison = string
        value      = string
      })))
      code_vulnerability_file_path = optional(list(object({
        comparison = string
        value      = string
      })))
      component_id = optional(list(object({
        comparison = string
        value      = string
      })))
      component_type = optional(list(object({
        comparison = string
        value      = string
      })))
      ec2_instance_image_id = optional(list(object({
        comparison = string
        value      = string
      })))
      ec2_instance_subnet_id = optional(list(object({
        comparison = string
        value      = string
      })))
      ec2_instance_vpc_id = optional(list(object({
        comparison = string
        value      = string
      })))
      ecr_image_architecture = optional(list(object({
        comparison = string
        value      = string
      })))
      ecr_image_hash = optional(list(object({
        comparison = string
        value      = string
      })))
      ecr_image_in_use_count = optional(list(object({
        lower_inclusive = number
        upper_inclusive = number
      })))
      ecr_image_last_in_use_at = optional(list(object({
        end_inclusive   = optional(string)
        start_inclusive = optional(string)
      })))
      ecr_image_pushed_at = optional(list(object({
        end_inclusive   = optional(string)
        start_inclusive = optional(string)
      })))
      ecr_image_registry = optional(list(object({
        comparison = string
        value      = string
      })))
      ecr_image_repository_name = optional(list(object({
        comparison = string
        value      = string
      })))
      ecr_image_tags = optional(list(object({
        comparison = string
        value      = string
      })))
      epss_score = optional(list(object({
        lower_inclusive = number
        upper_inclusive = number
      })))
      exploit_available = optional(list(object({
        comparison = string
        value      = string
      })))
      finding_arn = optional(list(object({
        comparison = string
        value      = string
      })))
      finding_status = optional(list(object({
        comparison = string
        value      = string
      })))
      finding_type = optional(list(object({
        comparison = string
        value      = string
      })))
      first_observed_at = optional(list(object({
        end_inclusive   = optional(string)
        start_inclusive = optional(string)
      })))
      fix_available = optional(list(object({
        comparison = string
        value      = string
      })))
      inspector_score = optional(list(object({
        lower_inclusive = number
        upper_inclusive = number
      })))
      lambda_function_execution_role_arn = optional(list(object({
        comparison = string
        value      = string
      })))
      lambda_function_last_modified_at = optional(list(object({
        end_inclusive   = optional(string)
        start_inclusive = optional(string)
      })))
      lambda_function_layers = optional(list(object({
        comparison = string
        value      = string
      })))
      lambda_function_name = optional(list(object({
        comparison = string
        value      = string
      })))
      lambda_function_runtime = optional(list(object({
        comparison = string
        value      = string
      })))
      last_observed_at = optional(list(object({
        end_inclusive   = optional(string)
        start_inclusive = optional(string)
      })))
      network_protocol = optional(list(object({
        comparison = string
        value      = string
      })))
      port_range = optional(list(object({
        begin_inclusive = number
        end_inclusive   = number
      })))
      related_vulnerabilities = optional(list(object({
        comparison = string
        value      = string
      })))
      resource_id = optional(list(object({
        comparison = string
        value      = string
      })))
      resource_tags = optional(list(object({
        comparison = string
        key        = string
        value      = string
      })))
      resource_type = optional(list(object({
        comparison = string
        value      = string
      })))
      severity = optional(list(object({
        comparison = string
        value      = string
      })))
      title = optional(list(object({
        comparison = string
        value      = string
      })))
      updated_at = optional(list(object({
        end_inclusive   = optional(string)
        start_inclusive = optional(string)
      })))
      vendor_severity = optional(list(object({
        comparison = string
        value      = string
      })))
      vulnerability_id = optional(list(object({
        comparison = string
        value      = string
      })))
      vulnerability_source = optional(list(object({
        comparison = string
        value      = string
      })))
      vulnerable_packages = optional(list(object({
        architecture = optional(list(object({
          comparison = string
          value      = string
        })))
        epoch = optional(list(object({
          lower_inclusive = number
          upper_inclusive = number
        })))
        file_path = optional(list(object({
          comparison = string
          value      = string
        })))
        name = optional(list(object({
          comparison = string
          value      = string
        })))
        release = optional(list(object({
          comparison = string
          value      = string
        })))
        source_lambda_layer_arn = optional(list(object({
          comparison = string
          value      = string
        })))
        source_layer_hash = optional(list(object({
          comparison = string
          value      = string
        })))
        version = optional(list(object({
          comparison = string
          value      = string
        })))
      })))
    })))
  }))
}

