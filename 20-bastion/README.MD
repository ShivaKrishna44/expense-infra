[200~Started by upstream project "EXPENSE/infra/Dev/10-sg" build number 2
originally caused by:
 Started by user admin
 Obtained 20-bastion/Jenkinsfile from git https://github.com/ShivaKrishna44/expense-infra.git
 [Pipeline] Start of Pipeline
 [Pipeline] node
 Still waiting to schedule task
 Waiting for next available executor on ‘Agent’
 Running on Agent in /var/tmp/jenkins-agent/workspace/EXPENSE/infra/Dev/20-bastion
 [Pipeline] {
 [Pipeline] stage
 [Pipeline] { (Declarative: Checkout SCM)
 [Pipeline] checkout
 Selected Git installation does not exist. Using Default
 The recommended git tool is: NONE
 No credentials specified
 Cloning the remote Git repository
 Avoid second fetch
 Checking out Revision 683b5120a9937d0ed9366b96131ef6472bc45b4c (refs/remotes/origin/main)
 Commit message: "infra"
 Cloning repository https://github.com/ShivaKrishna44/expense-infra.git
  > git init /var/tmp/jenkins-agent/workspace/EXPENSE/infra/Dev/20-bastion # timeout=10
  Fetching upstream changes from https://github.com/ShivaKrishna44/expense-infra.git
   > git --version # timeout=10
    > git --version # 'git version 2.43.5'
     > git fetch --tags --force --progress -- https://github.com/ShivaKrishna44/expense-infra.git +refs/heads/*:refs/remotes/origin/* # timeout=10
      > git config remote.origin.url https://github.com/ShivaKrishna44/expense-infra.git # timeout=10
       > git config --add remote.origin.fetch +refs/heads/*:refs/remotes/origin/* # timeout=10
        > git rev-parse refs/remotes/origin/main^{commit} # timeout=10
         > git config core.sparsecheckout # timeout=10
          > git checkout -f 683b5120a9937d0ed9366b96131ef6472bc45b4c # timeout=10
           > git rev-list --no-walk 683b5120a9937d0ed9366b96131ef6472bc45b4c # timeout=10
           [Pipeline] }
           [Pipeline] // stage
           [Pipeline] withEnv
           [Pipeline] {
           [Pipeline] withEnv
           [Pipeline] {
           [Pipeline] timeout
           Timeout set to expire in 30 min
           [Pipeline] {
           [Pipeline] ansiColor
           [Pipeline] {

           [Pipeline] stage
           [Pipeline] { (Init)
           [Pipeline] script
           [Pipeline] {
           [Pipeline] withAWS
           Constructing AWS CredentialsSetting AWS region us-east-1 
            [Pipeline] {
            [Pipeline] sh
            + cd 20-bastion
            + terraform init -reconfigure
ueusing previous version of hashicorp/aws from the dependency lock file
- Installing hashicorp/aws v5.84.0...
- Installed hashicorp/aws v5.84.0 (signed by HashiCorp)
Terraform has made some changes to the provider dependency selections recorded
in the .terraform.lock.hcl file. Review those changes and commit them to your
version control system if they represent changes you intended to make.


usrform has been successfully initialized! this backend unless the backend configuration changestializing provider plugins....
u may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessaryrform plan
ta.aws_ssm_parameter.public_subnet_ids: Reading...ta.aws_ssm_parameter.bastion_sg_id: Reading...ta.aws_ssm_parameter.public_subnet_ids: Read complete after 0s [id=/expense/dev/public_subnet_ids]ta.aws_ssm_parameter.bastion_sg_id: Read complete after 0s [id=/expense/dev/bastion_sg_id_instance.this: Refreshing state... [id=i-00b207cf07f06dbbf]
 changes.
 ur infrastructure matches the configurationrform has compared your real infrastructure against your configuration
 and found no differences, so no changes are needed.
 [Pipeline] }
 [Pipeline] // withAWS
 [Pipeline] }
 [Pipeline] // script
 [Pipeline] }
 [Pipeline] // stage
 [Pipeline] stage
 [Pipeline] { (Apply)
 [Pipeline] script
 [Pipeline] {
 [Pipeline] withAWS
 Constructing AWS CredentialsSetting AWS region us-east-1 
  [Pipeline] {
  [Pipeline] sh
  + cd 20-bastion
  + terraform apply -auto-approve
ta.aws_ssm_parameter.bastion_sg_id: Reading...ta.aws_ssm_parameter.public_subnet_ids: Reading...ta.aws_ssm_parameter.public_subnet_ids: Read complete after 0s [id=/expense/dev/public_subnet_ids]ta.aws_ssm_parameter.bastion_sg_id: Read complete after 0s [id=/expense/dev/bastion_sg_id_instance.this: Refreshing state... [id=i-00b207cf07f06dbbf]
 changes.
 ur infrastructure matches the configurationrform has compared your real infrastructure against your configuration
 and found no differences, so no changes are needed.
pply complete! Resources: 0 added, 0 changed, 0 destroyed.
peline] }
[Pipeline] // withAWS
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Declarative: Post Actions)
[Pipeline] echo
I will always say Hello again!
[Pipeline] deleteDir
[Pipeline] echo
I will run when pipeline is success
[Pipeline] }
[Pipeline] // stage
[Pipeline] }

[Pipeline] // ansiColor
[Pipeline] }
[Pipeline] // timeout
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
Finished: SUCCESSchanges.

