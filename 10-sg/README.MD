Started by user admin
Obtained 10-sg/Jenkinsfile from git https://github.com/ShivaKrishna44/expense-infra.git
[Pipeline] Start of Pipeline
[Pipeline] node
Running on Agent in /var/tmp/jenkins-agent/workspace/EXPENSE/infra/Dev/10-sg
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
 > git init /var/tmp/jenkins-agent/workspace/EXPENSE/infra/Dev/10-sg # timeout=10
Fetching upstream changes from https://github.com/ShivaKrishna44/expense-infra.git
 > git --version # timeout=10
 > git --version # 'git version 2.43.5'
 > git fetch --tags --force --progress -- https://github.com/ShivaKrishna44/expense-infra.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git config remote.origin.url https://github.com/ShivaKrishna44/expense-infra.git # timeout=10
 > git config --add remote.origin.fetch +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/main^{commit} # timeout=10
 > git config core.sparsecheckout # timeout=10
 > git checkout -f 683b5120a9937d0ed9366b96131ef6472bc45b4c # timeout=10
 > git rev-list --no-walk 63e14b5568f9261cb2f1996e6957f85a6c752cd4 # timeout=10
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
+ cd 10-sg
+ terraform init -reconfigure
[0m[1mInitializing the backend...[0m
[0m[32m
Successfully configured the backend "s3"! Terraform will automatically
use this backend unless the backend configuration changes.[0m
[0m[1mInitializing modules...[0m
Downloading git::https://github.com/DAWS-82S/terraform-aws-securitygroup.git?ref=main for alb_ingress_sg...
- alb_ingress_sg in .terraform/modules/alb_ingress_sg
Downloading git::https://github.com/DAWS-82S/terraform-aws-securitygroup.git?ref=main for bastion_sg...
- bastion_sg in .terraform/modules/bastion_sg
Downloading git::https://github.com/DAWS-82S/terraform-aws-securitygroup.git?ref=main for eks_control_plane_sg...
- eks_control_plane_sg in .terraform/modules/eks_control_plane_sg
Downloading git::https://github.com/DAWS-82S/terraform-aws-securitygroup.git?ref=main for eks_node_sg...
- eks_node_sg in .terraform/modules/eks_node_sg
Downloading git::https://github.com/DAWS-82S/terraform-aws-securitygroup.git?ref=main for mysql_sg...
- mysql_sg in .terraform/modules/mysql_sg
Downloading git::https://github.com/DAWS-82S/terraform-aws-securitygroup.git?ref=main for vpn_sg...
- vpn_sg in .terraform/modules/vpn_sg
[0m[1mInitializing provider plugins...[0m
- Reusing previous version of hashicorp/aws from the dependency lock file
- Installing hashicorp/aws v5.84.0...
- Installed hashicorp/aws v5.84.0 (signed by HashiCorp)
Terraform has made some changes to the provider dependency selections recorded
in the .terraform.lock.hcl file. Review those changes and commit them to your
version control system if they represent changes you intended to make.

[0m[1m[32mTerraform has been successfully initialized![0m[32m[0m
[0m[32m
You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.[0m
+ terraform plan
[0m[1mdata.aws_ssm_parameter.vpc_id: Reading...[0m[0m
[0m[1mdata.aws_ssm_parameter.vpc_id: Read complete after 0s [id=/expense/dev/vpc_id][0m
[0m[1mmodule.bastion_sg.aws_security_group.main: Refreshing state... [id=sg-04c41f9bd2273c66d][0m
[0m[1mmodule.mysql_sg.aws_security_group.main: Refreshing state... [id=sg-0d806c39564c7268a][0m
[0m[1mmodule.alb_ingress_sg.aws_security_group.main: Refreshing state... [id=sg-0b8a29683fb29d73c][0m
[0m[1mmodule.eks_control_plane_sg.aws_security_group.main: Refreshing state... [id=sg-0f10b9f8d220fa337][0m
[0m[1mmodule.vpn_sg.aws_security_group.main: Refreshing state... [id=sg-001c83e9e31afdda9][0m
[0m[1mmodule.eks_node_sg.aws_security_group.main: Refreshing state... [id=sg-015614566bf6870b8][0m
[0m[1maws_ssm_parameter.eks_control_plane_sg_id: Refreshing state... [id=/expense/dev/eks_control_plane_sg_id][0m
[0m[1maws_security_group_rule.alb_ingress_public_https: Refreshing state... [id=sgrule-3300578932][0m
[0m[1maws_security_group_rule.bastion_public: Refreshing state... [id=sgrule-2188382527][0m
[0m[1maws_ssm_parameter.alb_ingress_sg_id: Refreshing state... [id=/expense/dev/alb_ingress_sg_id][0m
[0m[1maws_ssm_parameter.bastion_sg_id: Refreshing state... [id=/expense/dev/bastion_sg_id][0m
[0m[1maws_security_group_rule.alb_ingress_bastion: Refreshing state... [id=sgrule-1455175936][0m
[0m[1maws_security_group_rule.alb_ingress_bastion_https: Refreshing state... [id=sgrule-949023238][0m
[0m[1maws_security_group_rule.eks_control_plane_bastion: Refreshing state... [id=sgrule-142624044][0m
[0m[1maws_ssm_parameter.mysql_sg_id: Refreshing state... [id=/expense/dev/mysql_sg_id][0m
[0m[1maws_security_group_rule.mysql_bastion: Refreshing state... [id=sgrule-654042135][0m
[0m[1maws_security_group_rule.eks_control_plane_node: Refreshing state... [id=sgrule-4020494101][0m
[0m[1maws_security_group_rule.eks_node_eks_control_plane: Refreshing state... [id=sgrule-480509991][0m
[0m[1maws_ssm_parameter.eks_node_sg_id: Refreshing state... [id=/expense/dev/eks_node_sg_id][0m
[0m[1maws_security_group_rule.mysql_eks_node: Refreshing state... [id=sgrule-2321771129][0m
[0m[1maws_security_group_rule.eks_node_alb_ingress: Refreshing state... [id=sgrule-728258158][0m
[0m[1maws_security_group_rule.node_vpc: Refreshing state... [id=sgrule-4259981650][0m
[0m[1maws_security_group_rule.node_bastion: Refreshing state... [id=sgrule-1374354524][0m

[0m[1m[32mNo changes.[0m[1m Your infrastructure matches the configuration.[0m

[0mTerraform has compared your real infrastructure against your configuration
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
+ cd 10-sg
+ terraform apply -auto-approve
[0m[1mdata.aws_ssm_parameter.vpc_id: Reading...[0m[0m
[0m[1mdata.aws_ssm_parameter.vpc_id: Read complete after 0s [id=/expense/dev/vpc_id][0m
[0m[1mmodule.vpn_sg.aws_security_group.main: Refreshing state... [id=sg-001c83e9e31afdda9][0m
[0m[1mmodule.alb_ingress_sg.aws_security_group.main: Refreshing state... [id=sg-0b8a29683fb29d73c][0m
[0m[1mmodule.bastion_sg.aws_security_group.main: Refreshing state... [id=sg-04c41f9bd2273c66d][0m
[0m[1mmodule.mysql_sg.aws_security_group.main: Refreshing state... [id=sg-0d806c39564c7268a][0m
[0m[1mmodule.eks_control_plane_sg.aws_security_group.main: Refreshing state... [id=sg-0f10b9f8d220fa337][0m
[0m[1mmodule.eks_node_sg.aws_security_group.main: Refreshing state... [id=sg-015614566bf6870b8][0m
[0m[1maws_security_group_rule.alb_ingress_public_https: Refreshing state... [id=sgrule-3300578932][0m
[0m[1maws_ssm_parameter.alb_ingress_sg_id: Refreshing state... [id=/expense/dev/alb_ingress_sg_id][0m
[0m[1maws_security_group_rule.mysql_bastion: Refreshing state... [id=sgrule-654042135][0m
[0m[1maws_security_group_rule.alb_ingress_bastion_https: Refreshing state... [id=sgrule-949023238][0m
[0m[1maws_security_group_rule.bastion_public: Refreshing state... [id=sgrule-2188382527][0m
[0m[1maws_ssm_parameter.bastion_sg_id: Refreshing state... [id=/expense/dev/bastion_sg_id][0m
[0m[1maws_security_group_rule.alb_ingress_bastion: Refreshing state... [id=sgrule-1455175936][0m
[0m[1maws_ssm_parameter.mysql_sg_id: Refreshing state... [id=/expense/dev/mysql_sg_id][0m
[0m[1maws_ssm_parameter.eks_node_sg_id: Refreshing state... [id=/expense/dev/eks_node_sg_id][0m
[0m[1maws_security_group_rule.node_vpc: Refreshing state... [id=sgrule-4259981650][0m
[0m[1maws_security_group_rule.eks_node_alb_ingress: Refreshing state... [id=sgrule-728258158][0m
[0m[1maws_security_group_rule.mysql_eks_node: Refreshing state... [id=sgrule-2321771129][0m
[0m[1maws_security_group_rule.node_bastion: Refreshing state... [id=sgrule-1374354524][0m
[0m[1maws_security_group_rule.eks_control_plane_node: Refreshing state... [id=sgrule-4020494101][0m
[0m[1maws_ssm_parameter.eks_control_plane_sg_id: Refreshing state... [id=/expense/dev/eks_control_plane_sg_id][0m
[0m[1maws_security_group_rule.eks_control_plane_bastion: Refreshing state... [id=sgrule-142624044][0m
[0m[1maws_security_group_rule.eks_node_eks_control_plane: Refreshing state... [id=sgrule-480509991][0m

[0m[1m[32mNo changes.[0m[1m Your infrastructure matches the configuration.[0m

[0mTerraform has compared your real infrastructure against your configuration
and found no differences, so no changes are needed.
[0m[1m[32m
Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
[0m
[Pipeline] }
[Pipeline] // withAWS
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Parallel Stages)
[Pipeline] parallel
[Pipeline] { (Branch: 20-bastion)
[Pipeline] { (Branch: 30-rds)
[Pipeline] { (Branch: 40-eks)
[Pipeline] { (Branch: 50-ecr)
[Pipeline] stage
[Pipeline] { (20-bastion)
[Pipeline] stage
[Pipeline] { (30-rds)
[Pipeline] stage
[Pipeline] { (40-eks)
[Pipeline] stage
[Pipeline] { (50-ecr)
[Pipeline] build
Scheduling project: EXPENSE » infra » Dev » 20-bastion
[Pipeline] }
[Pipeline] build
Scheduling project: EXPENSE » infra » Dev » 30-rds
[Pipeline] }
[Pipeline] build
Scheduling project: EXPENSE » infra » Dev » 40-eks
[Pipeline] }
[Pipeline] build
Scheduling project: EXPENSE » infra » Dev » 50-ecr
[Pipeline] }
[Pipeline] // stage
[Pipeline] // stage
[Pipeline] // stage
[Pipeline] // stage
[Pipeline] }
[Pipeline] }
[Pipeline] }
[Pipeline] }
[Pipeline] // parallel
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Sequential)
[Pipeline] stage
[Pipeline] { (60-acm)
[Pipeline] build
Scheduling project: EXPENSE » infra » Dev » 60-acm
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (70-ingress-alb)
[Pipeline] build
Scheduling project: EXPENSE » infra » Dev » 70-ingress-alb
[Pipeline] }
[Pipeline] // stage
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
Finished: SUCCESS
