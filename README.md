# final-project-infra

### About project 

![MicrosoftTeams-image](https://user-images.githubusercontent.com/88335759/220899117-541f5776-8f8a-426e-998a-0deb9e0af0a9.png)

![MicrosoftTeams-image (1)](https://user-images.githubusercontent.com/88335759/220899297-7eddd971-0265-4c39-adcb-f3b11615de93.png)

### Tools Used

    Terraform
    GCP
    Kubernetes
    Jenkins
    Docker
    Helm
    
    ### Getting Started
    Note: to apply this project you must have gcp account that access project and install required tools such as (Terraform, Docker)
    
    To Access this project do this steps:
    
    1) get clone to this repo with this command
      
      git clone git@github.com:Omniaelkabir/final-project-infra.git
      
    2) Enter terraform_files directory change projectid ... etc to match your needs
    
    3) Open terminal to run terraform command
    
      terraform init
      
      
      terraform apply
      
    4) Enter jenkins directory then open terminal to build Dockerfile and push image to GCR
      
      docker build . -t gcr.io/big-unison-377212/jenkins-deploy

      docker push gcr.io/big-unison-377212/jenkins-deploy:latest

    5) Go to google console in Compute Engine choose vm instance then click on SSH
    
      1. get clone to this repo with this command
        
         git clone git@github.com:Omniaelkabir/final-project-infra.git
              
      2. checking the version of helm which is installed in the script of the vm install.sh file
      
        helm version
        
      3. connect to the cluster:   
      
      


      
    
    
    
      
