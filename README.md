# Frontend Deployment Infrastructure with S3 and CloudFront (Terraform)

This repository contains Terraform code to deploy a scalable and secure frontend application infrastructure on AWS using **Amazon S3** for static content hosting and **CloudFront** with **Origin Access Control (OAC)** for secure content delivery.

## Features

1. **S3 Bucket**
   - Configured to host static files for a frontend application.
   - Private bucket policy to restrict direct public access.
   - Automatically sets object-level permissions for smooth integration with CloudFront.

2. **CloudFront Distribution**
   - Integrated with OAC for secure access to the S3 bucket.
   - Configured with cache behaviors to optimize content delivery.
   - Support for custom domain names and HTTPS using ACM certificates.

3. **Origin Access Control (OAC)**
   - Grants secure access to the S3 bucket, eliminating the need for public bucket policies.

4. **Terraform State Management**
   - Supports remote backend configuration for safe state storage and collaboration.

5. **Customizable Settings**
   - Parameters for S3 bucket name, CloudFront settings, logging, and caching policies.

6. **Output Variables**
   - Exposes useful details like CloudFront distribution domain and S3 bucket name.

## Usage

### Prerequisites
- AWS CLI installed and configured.
- Terraform CLI installed (v1.4 or later recommended).
- IAM permissions to create S3 buckets, CloudFront distributions, and OAC.

## Setting up the S3 Bucket and DynamoDB for State and Lock Storage

1. **Create an S3 Bucket**:
    ```bash
    aws s3api create-bucket --bucket <bucket_name> --region <region> --create-bucket-configuration LocationConstraint=<region>
    ```

2. **Enable Versioning on the S3 Bucket**:
    ```bash
    aws s3api put-bucket-versioning --bucket <bucket_name> --versioning-configuration Status=Enabled
    ```

3. **Create a DynamoDB Table**:
    ```bash
    aws dynamodb create-table \
    --table-name <table_name> \
    --attribute-definitions AttributeName=LockID,AttributeType=S \
    --key-schema AttributeName=LockID,KeyType=HASH \
    --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
    ```


### Steps to Deploy

1. **Clone the repository:**

   ```bash
   git clone https://github.com/InfraCoderAnand/Frontend-Deployment-Infrastructure-with-S3-and-CloudFront-Terraform.git

2. **Checkout to the `main` Branch** and Update the `.tfvars` File with Your Desired Configuration Values:
    ```bash
    git checkout main
    ```

3. **Configure the backend.tf**

4. **Create a New Workspace (Optional)**:
    ```bash
    terraform workspace new <workspace-name>
    ```

5. **Select an Existing Workspace (Optional)**:
    ```bash
    terraform workspace select <workspace-name>
    ```

6. **Initialize Terraform**:
    ```bash
    terraform init
    ```

7. **Plan the Infrastructure Changes**:
    ```bash
    terraform plan
    ```

8. **Review the Plan and Apply the Changes if Satisfied**:
    ```bash
    terraform apply
    ```

9. **Destroy the Infrastructure (Optional)**:
    ```bash
    terraform destroy
    ```

10. **Apply Targeted Changes (Optional)**:
    ```bash
    terraform apply -target=module.<module-tag>
    ```

**Important**: Running `terraform apply` will create or modify infrastructure resources. Ensure you understand the changes before applying them.



   
