My First Terraform Module Project - Development

This repository contains my **first Terraform project**, where I created AWS infrastructure using Terraform modules. I used **Visual Studio Code** for editing and **Git Bash** for version control operations.

📁 Project Structure
.
├── .gitignore            # Ignores local files like .terraform, tfstate
├── ec2.tf                # EC2 instance resource definition
├── infra.tf              # Provider and backend configuration
├── main.tf               # Root module calling submodules or resources
├── sg.tf                 # Security Group resource definition
├── terraform.tfvars      # Actual variable values
├── variables.tf          # Variable definitions

🛠️ Tools Used

* **Terraform** - Infrastructure as Code tool
* **AWS** - Cloud provider for deploying resources
* **VS Code** - Used for writing/modifying Terraform files
* **Git Bash** - Used for Git commands and pushing code to GitHub

✅ Step-by-Step Execution

1. Initialize Project

Open VS Code and create the necessary `.tf` files. Then run:

```bash
terraform init
```

2. Validate the Code

Ensure the Terraform code is syntactically correct:

```bash
terraform validate
```

3. Plan the Infrastructure

Preview the changes Terraform will make:

```bash
terraform plan -var-file="terraform.tfvars"
```

4. Apply the Configuration

Deploy the resources to AWS:

```bash
terraform apply -var-file="terraform.tfvars"
```

5. Check AWS Console

Login to your AWS Console to confirm:

* EC2 instance is created
* Security Groups are applied

6. Push Code to GitHub

Using Git Bash:

```bash
git init                              # Initialize local repo
git add .                             # Add all files
git commit -m "Initial commit"        # Commit changes
git remote add origin <repo_url>     # Link to GitHub
git push -u origin main               # Push to main branch
```

📦 Example Resources Created

* AWS EC2 instance
* Security Group allowing inbound SSH
* AWS provider configuration
* Environment-specific variables

🔒 .gitignore

Excluded files:

* `.terraform/` directory
* Terraform state files (`*.tfstate`)
* Sensitive files like `.tfvars` or `.env`

---

📌 Notes

* Use `terraform.tfvars` to keep sensitive and environment-specific data separate
* Do not commit secrets into GitHub
* Structure your files for modularity and scalability

---

Thank you for viewing my first Terraform project! 🌟
