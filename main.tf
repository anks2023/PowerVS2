resource "ibm_pi_image" "aix" {
  pi_cloud_instance_id  = "307928bf-b47d-4492-8d9a-20eb2b879087"
  pi_image_id           = "79c3bb4f-6e86-4dea-a2fd-bd94365a3a80"
  pi_image_name         = "7300-02-01"
}
data "ibm_pi_image" "source-image" {
  pi_cloud_instance_id  = "307928bf-b47d-4492-8d9a-20eb2b879087"
  pi_image_name         = "7300-02-01"
}
resource "ibm_pi_instance" "testvm1" {
    pi_memory             = "2"
    pi_processors         = "0.25"
    pi_instance_name      = "testvm"
    pi_proc_type          = "shared"
    pi_key_pair_name      = "key1"
    pi_sys_type           = "s922"
    pi_cloud_instance_id  = "307928bf-b47d-4492-8d9a-20eb2b879087"
    pi_image_id           = resource.ibm_pi_image.aix.pi_image_id
    pi_storage_type       = "tier3"
    pi_pin_policy         = "none"
    pi_network {
      network_id = "b614897d-11bf-4440-ab03-6e70db69a2da"
    }
}
