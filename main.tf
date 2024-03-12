resource "ibm_pi_instance" "test-instance" {
    pi_memory             = "2"
    pi_processors         = "0.25"
    pi_instance_name      = "test-vm"
    pi_proc_type          = "shared"
    pi_image_id           = "4c71bfb1-1f09-4816-aa14-298e882ccccd"
    pi_key_pair_name      = key1
    pi_sys_type           = "s922"
    pi_cloud_instance_id  = "4c71bfb1-1f09-4816-aa14-298e882ccccd"
    pi_pin_policy         = "none"
    pi_network {
      network_id = data.ibm_pi_public_network.dsnetwork.id
    }
}