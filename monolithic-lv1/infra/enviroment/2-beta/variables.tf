variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-2"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "1-beta"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "spring-starter-pack"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR block"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "Private subnet 1 CIDR block"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_2_cidr" {
  description = "Private subnet 2 CIDR block"
  type        = string
  default     = "10.0.3.0/24"
}

variable "availability_zone" {
  description = "Availability zone for first subnet"
  type        = string
  default     = "ap-northeast-2a"
}

variable "availability_zone_2" {
  description = "Availability zone for second subnet (RDS requirement)"
  type        = string
  default     = "ap-northeast-2c"
}

# NAT Instance Variables
variable "nat_ami" {
  description = "AMI ID for NAT instance (Amazon Linux 2 recommended)"
  type        = string
  default     = "ami-0c9c942bd7bf113a2" # Amazon Linux 2 in ap-northeast-2
}

variable "nat_instance_type" {
  description = "NAT instance type"
  type        = string
  default     = "t3.micro"
}

variable "nat_spot_price" {
  description = "Maximum spot price for NAT instance"
  type        = string
  default     = "0.01"
}

# Application EC2 Variables
variable "app_ami" {
  description = "AMI ID for application EC2 (Ubuntu 22.04 recommended)"
  type        = string
  default     = "ami-0c9c942bd7bf113a2" # Update with Ubuntu 22.04 AMI
}

variable "app_instance_type" {
  description = "Application instance type"
  type        = string
  default     = "t3.medium"
}

variable "app_spot_price" {
  description = "Maximum spot price for application instance"
  type        = string
  default     = "0.05"
}

variable "app_volume_size" {
  description = "Application instance root volume size in GB"
  type        = number
  default     = 30
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
  default     = ""
}

# RDS Variables
variable "db_engine_version" {
  description = "PostgreSQL engine version"
  type        = string
  default     = "15"
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "RDS allocated storage in GB"
  type        = number
  default     = 20
}

variable "db_max_allocated_storage" {
  description = "RDS maximum allocated storage in GB for autoscaling"
  type        = number
  default     = 100
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "appdb"
}

variable "db_username" {
  description = "Database master username"
  type        = string
  default     = "postgres"
  sensitive   = true
}

variable "db_password" {
  description = "Database master password"
  type        = string
  sensitive   = true
}