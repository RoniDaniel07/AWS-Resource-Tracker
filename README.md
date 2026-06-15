# AWS Resource Tracker

## Project Overview

AWS Resource Tracker is a Shell Scripting project that automates the monitoring of AWS resources using AWS CLI. The script generates a report containing information about EC2 instances, S3 buckets, Lambda functions, and IAM users.

The report is automatically generated using a Cron Job, eliminating the need for manual monitoring and helping improve cloud resource visibility.

---

## Features

* Lists EC2 Instance IDs
* Lists S3 Buckets
* Lists Lambda Functions
* Lists IAM Users
* Generates reports automatically
* Uses AWS CLI and JQ for resource monitoring
* Scheduled using Cron Jobs

---

## Technologies Used

* Linux (Ubuntu)
* Bash Shell Scripting
* AWS CLI
* JQ
* Cron Jobs
* AWS EC2
* AWS S3
* AWS Lambda
* AWS IAM

---

## Prerequisites

Install AWS CLI:

```bash
sudo apt update
sudo apt install awscli -y
```

Install JQ:

```bash
sudo apt install jq -y
```

Configure AWS CLI:

```bash
aws configure
```

---

## Script Workflow

1. Connect to AWS using AWS CLI.
2. Retrieve AWS resource information.
3. Parse JSON output using JQ.
4. Generate a report file.
5. Schedule automatic execution using Cron.

---

## Running the Script

Make the script executable:

```bash
chmod +x aws_resource_tracker.sh
```

Execute the script:

```bash
./aws_resource_tracker.sh
```

---

## Cron Job Configuration

Open crontab:

```bash
crontab -e
```

Schedule the script to run daily at 3:30 PM:

```bash
30 15 * * * /home/ubuntu/aws_resource_tracker.sh
```

---

## Sample Report

```text
List of instances
i-0123456789abcdef0

List of s3 buckets
my-bucket

List of lambda functions
my-function

List of users
admin
developer
```

---

## Project Structure

```text
AWS-Resource-Tracker/
│
├── aws_resource_tracker.sh
├── resourceTracker
└── README.md
```

---

## Author

Roni Daniel

---

## Future Enhancements

* Email notifications for reports
* Resource usage statistics
* Cloud cost monitoring
* Multi-region support
* Report generation in CSV format
* Integration with CloudWatch

```
```
