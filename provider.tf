terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}

provider "ibm" {
  region = "lon"
  zone = "lon04"
  ibmcloud_api_key = "#K##################5#"
}
