resource "ibm_pi_instance" "test-instance" {
    pi_memory             = "2"
    pi_processors         = "0.25"
    pi_instance_name      = "test-vm"
    pi_proc_type          = "shared"
    pi_image_id           = "79c3bb4f-6e86-4dea-a2fd-bd94365a3a80"
    pi_key_pair_name      = key1
    pi_sys_type           = "s922"
    pi_cloud_instance_id  = "307928bf-b47d-4492-8d9a-20eb2b879087"
    pi_pin_policy         = "none"
    pi_network {
      network_id = data.ibm_pi_public_network.dsnetwork.id
    }
}
