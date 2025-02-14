project_id = "coworkout-20230409"

instance_name  = "staging-vm-instance"
machine_type   = "f1-micro"
region         = "australia-southeast1"
zone           = "australia-southeast1-b"
startup_script = "./startup.sh"
tags           = ["staging", "web-server"]

