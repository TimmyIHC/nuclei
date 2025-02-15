# Nuclei Vulnerability Scanner

## Introduction

This script can help you perform a Nuclei vulnerability scan on a linux local machine or a docker container, providing a detailed vulnerability report upon completion.

## Objective

The primary goal is to identify all potential vulnerabilities on a machine by scanning all active services.

## Pre-requisites

- This script is designed exclusively for scanning Linux machines and Linux Docker containers.

## How to Implement

### Preparation

Ensure all services on the machine to be scanned are up and running.

### Scenarios and Execution

#### Normal Linux Machine

For a standalone Linux machine with no Docker containers:

1. Copy the `vulnerability_scan.sh` script to the machine.
2. Execute the script.
3. Upon completion, a `nuclei_vulnerabilities_report.json` file will be generated, containing the scan results.

#### Linux Machine with Services Running in Containers

For a Linux machine with services running inside Docker containers:

1. Add a command within your Dockerfile to copy the `vulnerability_scan.sh` script into the container as the final step of your setup process.
2. Add a command to execute the script within the container.
3. Ensure the report is exported to a local machine path to retain the results even if the container is removed.

Example command:
```sh
docker run -v /tmp/:/output nuclei_local_scan
```

In this example, /tmp/ is the path on the local machine where the report will be stored, and /output is the path inside the container from which the report will be fetched.

#### Post-Scan

By default, the script removes all dependencies and the Nuclei software after the scan is complete. To prevent this, remove the last two lines from the vulnerability_scan.sh script.