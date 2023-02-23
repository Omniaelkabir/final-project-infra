# GCP_Final-Task
This project contains Terraform configuration for setting up infrastructure on Google Cloud Platform (GCP).

### Requirements:
        ◦ Terraform
        ◦ Create a bucket for the terraform state backend
        ◦ Google Cloud SDK
        ◦ Access to a GCP project to create and manage resources.
      
### Task:

![photo_2023-02-16_19-04-32](https://user-images.githubusercontent.com/88335759/220201452-185698ff-c860-4271-9595-feb36b7210b9.jpg)

### Getting started:

To Access this project do this steps:

1) get clone to this repo with this command

git clone https://github.com/Omniaelkabir/GCP_Final-Task.git

2) Enter terraform_files directory change projectid ... etc to match your needs

3) Open terminal to run terraform command

terraform init

![terraform-init](https://user-images.githubusercontent.com/88335759/220201569-068e8026-9b93-4999-9a27-528de0d91f3a.png)

terraform apply

![terraform-apply](https://user-images.githubusercontent.com/88335759/220201772-14694efd-df4a-4d25-b30d-823fd4b17a2e.png)

4) Enter App directory then open terminal to build Dockerfile and push image to GCR

![docker](https://user-images.githubusercontent.com/88335759/220202340-a404f57e-04cd-41eb-a1ad-524a7fdb10bc.png)

5) Go to google console in Compute Engine choose vm instance then click on SSH

  6-1. Update and Install Needed packages and auth login

![instance-ssh1](https://user-images.githubusercontent.com/88335759/220202797-ef75239f-49b6-4ef4-98b2-6d9f82fd5990.png)

 6-2. connect to cluster
 6-3. vim yaml files in k8s_files
 6-4. Apply then using kubectl apply

![instance-ssh2](https://user-images.githubusercontent.com/88335759/220206068-4891b13d-456b-45bd-bfa9-020814e51dd3.png)

 7-1. In google console open Kubernetes Engine then Services & Ingress 

![external-loadbalencer](https://user-images.githubusercontent.com/88335759/220203563-c6577f76-3bf4-4592-87d8-4a4c7f09f33c.png)

 7-2. You will find an External load balancer hit it 

![hello-output](https://user-images.githubusercontent.com/88335759/220203727-17302109-1724-4d17-906c-9a7f71b46cc1.png)

8) To clean Google console in terraform_files directory open terminal to run terraform destroy

![terraform-destroy](https://user-images.githubusercontent.com/88335759/220206866-53cf2b8f-d506-4903-91f4-ce83f6f3144f.png)
  



