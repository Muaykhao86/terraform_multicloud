# Terraform Patterns Repository

Welcome to the Terraform Patterns Repository! This repository contains various Terraform patterns to help you deploy infrastructure across multiple cloud providers.

## Patterns

In the `patterns` folder, you'll find different patterns for deploying infrastructure using Terraform.

### Pattern 1: Multi-Cloud VM Deployment

This pattern demonstrates deploying virtual machines (VMs) across Azure, AWS, and GCP simultaneously. You can customize the number of VMs to deploy and choose which cloud platforms to target.

### Pattern 2: Coming soon.
### Pattern 3: Coming soon.

## Usage

To use, follow these steps:

1. Clone the respository 
    ```bash
        git clone https://github.com/example/repo.git
    ```
2. Navigate to the desired patetrn to deploy
    ```bash
        cd patterns/1
    ```
3. Update parameters
    *

4. Run terraform init to initialize the Terraform environment:
    ```bash
        terraform init
    ```
5. Run terraform plan to review the planned changes:
    ```bash
        terraform plan
    ```
6. Run terraform apply to apply the Terraform configuration and deploy the pattern:
    ```bash
        terraform plan
    ```

### * Depending on deployment method will determine how you provide input parameters


## Folder Structure
```
terraform-multicloud/  
├── modules/  
|   ├──  aws/  
|   |   ├── main.tf  
|   |   ├── outputs.tf  
|   |   └── variables.tf    
|   ├──  azure/  
|   |   ├── main.tf  
|   |   ├── outputs.tf  
|   |   └── variables.tf    
|   └──  gcp/  
|   |   ├── main.tf  
|   |   ├── outputs.tf  
|   |   └── variables.tf    
├── patterns/    
|   ├── 1/  
|   |   ├── data.tf  
|   |   ├── main.tf  
|   |   ├── outputs.tf  
|   |   ├── terraform.tf  
|   |   └── variables.tf    
|   ├── 2/
|   |   ├── data.tf
|   |   ├── main.tf
|   |   ├── outputs.tf
|   |   ├── terraform.tf
|   |   └── variables.tf
|   └── 3/
|       ├── data.tf
|       ├── main.tf
|       ├── outputs.tf
|       ├── terraform.tf
|       └── variables.tf
├── scripts/
|   └──  startup.sh
├── .gitignore
└──  Readme.md
```
