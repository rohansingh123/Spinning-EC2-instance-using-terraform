# Spinning-EC2-instance-using-terraform
To start a new EC2 instance using terraform template

To install terraform on linux run
1) wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
2) unzip terraform_0.11.7_linux_amd64.zip
3) sudo mv terraform /usr/local/bin/ or in case of amazon linux use sudo mv terraform /bin/
4) Confirm terraform binary is accessible: terraform --version

To Start an EC2 instance:-
1) mkdir terraform
2) vi Spinning_EC2_Using_terraform.tf
3) write the contents from this file on the vi editor
4) Create a second file vi terraform.tfvars
5) write the the AWS access key and secret key
6) If you have installed terraform for the first time on linux machine run "terraform init". This initializes various local settings and  data that will be used by subsequent commands.
7) Then run "terraform plan". To check what configurations will get assigned to the EC2.
8) "terraform apply" to spawn the EC2 instance.Check the AWS management console.
9) "terraform destroy" to destroy terraform managed infrastructure.
