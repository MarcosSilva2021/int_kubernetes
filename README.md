#  Introdução ao kubernetes

Este projeto demonstra o uso do **Kubernetes** para orquestrar uma aplicação PHP integrada com um banco de dados MySQL. 
Toda a infraestrutura é provisionada usando manifests YAML e imagens Docker customizadas.

---

##  Estrutura do Projeto

int_kubernetes/
│
├── backend/ # Código-fonte PHP + Dockerfile
├── backend/database/ # Script SQL + Dockerfile do MySQL
├── frontend/ # interface visual
│
├── deployment.yml # Recursos: Deployments e PVC
├── services.yml # Recursos: Services (LoadBalancer, Headless)
├── script.bat # Automação: build, push e apply

##  Funcionalidades do Kubernetes

| Recurso                                | Descrição                                                                                                                                                                                      |
| -------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Deployment**                         | Garante o controle de versões e réplicas dos containers. Utilizado para o backend (PHP) e banco de dados (MySQL).                                                                              |
| **ReplicaSet**                         | Implementado via `replicas: 6` no backend, garantindo alta disponibilidade da aplicação PHP.                                                                                                   |
| **Service**                            | Facilita a comunicação entre os pods e expõe os serviços no cluster: <br>– `php`: LoadBalancer para expor a aplicação externamente <br>– `mysql-connection`: Headless para conexão entre pods. |
| **PersistentVolumeClaim (PVC)**        | Garante persistência dos dados do MySQL mesmo que o pod seja recriado.                                                                                                                         |
| **Script de automação (`script.bat`)** | Automatiza o build das imagens Docker, push para o Docker Hub e aplicação dos manifests no cluster.                                                                                            |

## Comandos Utilizados

kubectl apply -f deployment.yml → Cria os deployments no cluster.

kubectl apply -f services.yml → Cria os services que expõem os pods.

docker build / docker push → Prepara e envia as imagens para o Docker Hub.

## Passo a Passo: Executando Localmente com Minikube

> **Pré-requisitos:**
> - Docker instalado e rodando
> - Minikube instalado
> - kubectl configurado


