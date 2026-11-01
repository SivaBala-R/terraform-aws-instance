locals {
    ami_id = var.ami_id
    common_tags = {
     Project = var.project
     Environment = var.environment
     Component = var.component
    }
}