DATABRICKS-WORKSPACE-CREATION

Overview

This project provides a robust Terraform configuration to automate the deployment of secure, scalable Databricks environments on AWS. It orchestrates network setup, security policies, storage, and workspace provisioning, enabling developers to deploy cloud data platforms efficiently.

Why databricks-workspace-creation?

This project simplifies the complex process of building a secure, highly available Databricks environment on AWS. The core features include:

🛡️ Private Subnet Management: Ensures secure network segmentation across multiple availability zones.

🚀 Automated Infrastructure Setup: Streamlines provisioning of networking, storage, and Databricks workspace components.

🔒 Security Group Configuration: Controls network access to protect sensitive data and resources.

📦 Versioned S3 Storage: Provides secure, scalable data storage aligned with best practices.

🔑 Cross-Account IAM Roles: Facilitates seamless and secure cross-cloud integrations.

⚙️ Flexible Deployment: Supports parameterization and integration with existing network infrastructure for tailored setups.


Getting Started

Prerequisites
This project requires the following dependencies:

Programming Language: Terraform


## Note 1
This repo assumes you have a existing VPC and NAT gateway ready and need to provide the ID of it while in the variable file or as input while applying the terraform.

## Note 2
Also provide private subnet pair as a variable or as input while applying the terraform.
