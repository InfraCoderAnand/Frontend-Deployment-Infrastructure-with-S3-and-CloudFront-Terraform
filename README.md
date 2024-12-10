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

### Steps to Deploy

1. **Clone the repository:**

   ```bash
   git clone https://github.com/InfraCoderAnand/Frontend-Deployment-Infrastructure-with-S3-and-CloudFront-Terraform-.git
