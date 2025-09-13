variable "zone" {
  type        = string
  default     = "ru-central1-a"
  description = "зона доступности"
}

variable "folder_id" {
  type        = string
  description = "идентификатор каталога"
}

variable "cloud_id" {
  type        = string
  description = "идентификатор облака"
}

variable "token" {
  type        = string
  description = "IAM-токен"
  sensitive   = true
}

variable "jenkins_password" {
  type        = string
  description = "jenkins password"
  sensitive   = true
}

variable "docker_password" {
  type        = string
  description = "docker password"
  sensitive   = true
}

variable "opensearch_password" {
  type        = string
  description = "opensearch password"
  sensitive   = true
}

variable "grafana_password" {
  type        = string
  description = "grafana password"
  sensitive   = true
}