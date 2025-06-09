variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "domain_name" {
    default = "shivakrishna.shop"
}

variable "zone_id" {
    default = "Z021448929NMXW4P65UQE"
}