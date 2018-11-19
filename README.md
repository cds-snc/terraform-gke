## Usage

1. Enable GKE API
2. Create a Service Account, grant access (Owner?) to GCP Project you wish to deploy into.
3. Export Service Account key as `json`, copy `account.json` to location where you execute this terraform code. 
4. Run `terraform init`
5. Run `terraform apply`

## Example

Create a cluster called `mycluster-tf` with 2 nodes.
```
module "gke" {
  source         = "git@github.com:cds-snc/terraform-gke.git"
  project        = "gke-test-222415"
  cluster_name   = "mycluster-tf"
  region         = "northamerica-northeast1"
  zone           = "northamerica-northeast1-a"
  machine_type   = "n1-standard-1"
  node_count     = "2"
  min_node_count = "2"
  max_node_count = "3"
  auto_repair    = "true"
  auto_upgrade   = "true"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| auto_repair | True/false Enable auto cluster repair | string | - | yes |
| auto_upgrade | True/false Enable auto cluster upgrade. | string | - | yes |
| cluster_name | Cluster name. | string | - | yes |
| machine_type | Machine type | string | - | yes |
| max_node_count | Max number of nodes. | string | - | yes |
| min_node_count | Minimum number of nodes. | string | - | yes |
| node_count | Number of cluster nodes | string | - | yes |
| project | Project ID to deploy into. | string | - | yes |
| region | GCP Region | string | - | yes |
| zone | Zone in region. | string | - | yes |

