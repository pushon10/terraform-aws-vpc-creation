# terraform-aws-vpc-creation
This is a CI/CD pipeline for my terraform modules that create a VPC in AWS.

This project uses Terraform to create and manage AWS infrastructure including a VPC, subnets, an internet gateway, route tables, a NAT gateway, security groups, and an EC2 instance. The Terraform configuration and GitHub Actions workflow facilitate Infrastructure as Code (IaC) and CI/CD.

## Project Structure

```
.
├── .github
│   └── workflows
│       └── terraform.yml
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── .gitignore
└── README.md
```

## Resources Created

- **VPC**
  - CIDR Block: Defined in `terraform.tfvars`
  - DNS Support and Hostnames enabled
- **Subnets**
  - Public Subnet
  - Private Subnet
- **Internet Gateway**
- **Route Tables**
  - Public Route Table
  - Private Route Table
- **NAT Gateway**
- **Security Group**
  - Allows SSH access (port 22)
- **EC2 Instance**
  - AMI: `ami-0dcdf38b69b57740e`
  - Instance Type: `t2.micro`
  - Key Pair: `shayansre` (change to your key pair)

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS account
- AWS CLI configured with appropriate credentials
- GitHub account

## Setup Instructions

### Clone the Repository

git clone https://github.com/pushon10/terraform-aws-vpc-creation.git
cd terraform-aws-vpc-creation


### Configure AWS Credentials

Add your AWS credentials as GitHub Secrets:

1. Go to your repository on GitHub.
2. Navigate to **Settings** > **Secrets and variables** > **Actions**.
3. Add the following secrets:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`

### Update `terraform.tfvars`

Edit the `terraform.tfvars` file to define the values for your variables:

vpc_cidr = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"


### GitHub Actions Workflow

The GitHub Actions workflow is defined in `.github/workflows/terraform.yml`. It will automatically run `terraform plan` and `terraform apply` on each push to the `main` branch.

### Running Terraform Locally

To manually run Terraform:

1. Initialize the working directory:

    terraform init
    

2. Generate and show the execution plan:

    terraform plan

3. Apply the changes required to reach the desired state of the configuration:

    terraform apply

### Viewing the Infrastructure

To view the created infrastructure, log in to the [AWS Management Console](https://aws.amazon.com/console/):

- **VPC**: Navigate to **VPC Dashboard** > **Your VPCs** and look for `main-vpc`.
- **Subnets**: Navigate to **Subnets** and look for `public-subnet` and `private-subnet`.
- **Internet Gateway**: Navigate to **Internet Gateways** and look for `main-igw`.
- **Route Tables**: Navigate to **Route Tables** and look for `public-route-table` and `private-route-table`.
- **NAT Gateway**: Navigate to **NAT Gateways** and look for `main-nat-gateway`.
- **Security Group**: Navigate to **Security Groups** and look for `instance-sg`.
- **EC2 Instance**: Navigate to **Instances** and look for `AppInstance`.

## Clean Up

To destroy the infrastructure managed by this project, run:

terraform destroy

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

