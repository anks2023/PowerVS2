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
  ibmcloud_api_key = "owuTk68OtbpRxgOKLGEqrx2PTY-W1gpMHXm1Ps9y3oW5"
}
