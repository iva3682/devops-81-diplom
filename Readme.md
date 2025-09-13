### Необходимые пакеты:
yc, kubectl, terraform, ansible

### Разворачиваем инфраструктуру:
terraform init

terraform plan -var-file="secret.tfvars"

terraform apply -var-file="secret.tfvars"

### Что происходит:
terraform поднимает кластер k8s + ВМ для обслуживания приложения

terraform запускает ansible playbook, который:
  - устанавливает Docker, Helm
  - устанавливает OpenSearch + Dashboard
  - устанавливает Prometheus, Grafana, AlertManager, Node Exporter, BlackBox
  - устанавливает Jenkins (конфигурация с помощью JCasC)
  - применяет в кластере чарт Fluentd

Сборка приложения происходит при создании тега в репозитории (проверка раз в 15 минут)
