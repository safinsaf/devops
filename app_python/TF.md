# Best practices for Terraform

## 1. Don`t commit the .tfstate file
The .tfstate is a file outputted by Terraform when you run commands that alter your state. Such as when running terraform apply. The tfstate file stores information mappings between your created resource names and the real infrastructure.
Committing the state file comes with several risks… Firstly, you could be exposing secrets from your application configuration, such as  passwords, database connection strings. And secondly, you risk executing Terraform against stale or old state that you forgot to pull down from version control.

## 2. Configure a backend
A Terraform backend is configuration on how (and where) to store your Terraform state in a centralised, remote location.
Backends broadly speaking have two main features: state locking and remote state storage. Locking prevents two executions happening at the same time. And remote state storage allows you to put your state in a remote, yet accessible location.

## 3. Back up your state file
state file is the engine that drives your configuration it makes sense to ensure that the location where you store your state is backed up.

## 4. Keep your backends small
When you start on a Terraform project you’ll likely have all your configuration in one place. However, over time with your infrastructure growing there will come a point where you want to break down your infrastructure configurations.

## 5. Use one state per environment
Environments are used to test changes before they are deployed to your live environment. Similar to the last idea of breaking down your state files it also makes sense to break down your terraform configurations and state files per environment. Again, breaking down by envioronment reduces risk when you apply changes.

## 6. Setup backend state locking
Terraform state comes in two parts: remote state, and state locking. State locking prevents two mutating commands, such as terraform apply operating on the same state file at the same time.

## 7. Execute terraform in an automated build
Running code in an automated build tool has many advantages, which includes having a repeatable process, and a history of changes. The concept of builds is also very useful when applied to Terraform, ensuring that it’s more visible when and what has been executed against your infrastructure for auditing, debugging and collaborating purposes.

## 8. Don`t perform state surgery (use the CLI)
As the state file is a representation of your infrastructure in the real world sometimes situations come up that require you to modify your state. For instance, if you want to rename a resource block, you’ll need to re-assign your terraform state to the new resource name.
Many when they need to move or rename state are tempted to dive into the state file itself and start hacking around. But beware, there’s a much safer way! The Terraform CLI gives you commands that allow you to remove, or move (terraform state rm and terraform state mv)
In short… never touch the state file yourself.

## 9. Use variables
Variables allow you to store shared or repeating configuration values, which in turn keeps your code easy to manage and update.

## 10. Use modules (where necessary)
Terraform modules allow you to break down infrastructure configurations into shared blothecks. You can think of modules in Terraform like regular programming functions. Modules take some inputs, do things and return outputs.

## 11. Follow proper directory structure 
When working on large projects use separate directories for different purposes.

## 12. Use proper naming convention
When you have different enfironments in project you should call them **dev**, **stage**, **prod**

## 13. Use the latest version of Terraform
Terraform development community is active, therefore keep terraform up to date.

## 14. Use Docker
If you are running a CI/CD pipeline, use docker containers. By combining terraform and docker you get portable, reusable, repeatable infrastructure. 

# How to use

* To build **aws ec2** instance:
1. Install aws CLI and configure it for you account
2. run the following code
```bash
cd app_python/Terraform/aws
terraform init
terraform apply
``` 

To build instance in **VirtualBox**:
1. install virtualbox
2. run the following code
```bash
cd app_python/Terraform/virtualbox
terraform init
terraform apply
``` 