# VPC and Subnet Configuration

This terraform configuration sets up a Google Cloud Platform (GCP) Virtual Private Cloud (VPC) network with two subnets: 
 - A private subnet
 - A public subnet

## Providers

The configuration uses the `google` provider to interact with the GCP API.

## Variables

The configuration takes two input variables:
 - `project_id`: The GCP project ID where the resources will be created.
 - `region`: The GCP region where the resources will be created. Default is `us-central1`.

## Resources

1. `google_compute_network.vpc`:
    - Creates a new VPC network named "devyodha-vpc".
    - Sets `auto_create_subnetworks` to `false` to manually create subnets.
2. `google_compute_subnetwork.private_subnet`:
    - Creates a private subnet named "private-subnet" within the VPC.
    - Sets the IP CIDR range to `10.0.0.0/16`.
    - Enables `private_ip_google_access` to allow private Google access.
3. `google_compute_subnetwork.public_subnet`:
    - Creates a public subnet named "public-subnet" within the VPC.
    - Sets the IP CIDR range to `10.0.1.0/16`.
    - Disables `private_ip_google_access` to prevent private Google access.

## Outputs

The configuration exports the following output values:
 - `vpc_name`: The name of the created VPC.
 - `private_subnet_name`: The name of the created private subnet.
 - `public_subnet_name`: The name of the created public subnet.

 