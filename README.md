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
    
          terraform init and terraform apply
      ![Screenshot from 2023-02-23 14-41-01](https://user-images.githubusercontent.com/88335759/221208020-3fb944d6-152c-4a8c-a342-e1bd6187be35.png)    
      
   4) Enter jenkins directory then open terminal to build Dockerfile and push image to GCR
      
          docker build . -t gcr.io/big-unison-377212/jenkins-deploy
          ![Screenshot from 2023-02-24 16-46-08](https://user-images.githubusercontent.com/88335759/221208258-5ed49ece-8ea5-401b-babe-d2cead966528.png)

          docker push gcr.io/big-unison-377212/jenkins-deploy:latest
          
          
![Screenshot from 2023-02-24 16-46-17](https://user-images.githubusercontent.com/88335759/221208864-205c3d74-3462-4952-801d-085a9a69d260.png)

   5) Go to google console in Compute Engine choose vm instance then click on SSH
    
      1. get clone to this repo with this command
        
             git clone git@github.com:Omniaelkabir/final-project-infra.git
              
      2. checking the version of helm which is installed in the script of the vm install.sh file
      
             helm version
        
      3. connect to the cluster with this command 
            gcloud container clusters get-credentials private-cluster --zone us-central1-a --project big-unison-377212
            
      4. create namespace with name to add the jenkins deployment and services into it
            kubectl create ns jenkins

      5. install deployment jenkins using helm
            helm install jenkins ./final-project-infra/jenkins-helm/
            
      6. get your external ip from service:
            kubectl get svc -n jenkins 
            
      7.  use this ip to access jenkins then enter password , install plugins ,add your user name and password finally start use jenkins
      
            
![Screenshot from 2023-02-24 16-59-38](https://user-images.githubusercontent.com/88335759/221211348-45209f29-fe77-4eb5-91f9-173543024738.png)
    
### Deploy the Jenkins-Slave-Pod into the cluster using the private instance

    1. create the deployment files of the slave pod
        
        kubectl apply -f ./final-project-infra/jenkins -n jenkins
        
    2. make sure that the jenkins-slave-pod is running:
    
        kubectl get po -n jenkins
        
![Screenshot from 2023-02-24 17-07-01](https://user-images.githubusercontent.com/88335759/221213131-75d55aa4-adbd-4a90-baf1-77ac76f9bfaa.png)

### Configure the manage nodes inside the jenkins server to add the jenkins slave pod:

    1. Add Credentials from Manage Jenkins then Manage Credentials
    
![Screenshot from 2023-02-24 17-11-54](https://user-images.githubusercontent.com/88335759/221214553-381e160f-ea8d-4443-88cf-46cb4251abc4.png)

    2. Open Jenkins Server and go to manage jenkins then go to manage nodes and clouds and then click on add new node
    
    ![Screenshot from 2023-02-24 17-14-22](https://user-images.githubusercontent.com/88335759/221215154-2b9ad378-3b52-4358-a52b-97d8c1365a6b.png)
    
    ![Screenshot from 2023-02-24 17-14-38](https://user-images.githubusercontent.com/88335759/221215354-f6fb9d63-05e1-40ca-bd73-6d21ec6624e1.png)
    
    3. Some configuration we will do in the opened terminal -that have VM opened in SSH- to do to complete the Launching of the new node:

        . Connect to the slave-pod:
        
            kubectl exec --stdin --tty jenkins-deploy-5b8d548ff8-c8q4j -n jenkins -- /bin/bash 
        
        . open ssh service
        
            service ssh start
            
        . change password of the jenkins user:
    
            passwd jenkins
            
        . Go Back to the Jenkins Server as we were on the node jenkins-slave and go to Status then click on the button Launch
        
        ![Screenshot from 2023-02-24 16-35-59](https://user-images.githubusercontent.com/88335759/221216636-73f8200f-92eb-412e-b909-a89f62579f33.png)

        



        
      
      
      
      


      
    
    
    
      
