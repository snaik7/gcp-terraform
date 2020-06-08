terraform {
  backend "gcs" {
  	credentials = "account.json"
    bucket = "named-enigma-277405-state-bucket"       
#   prefix = "terraform/lab"
  }
}

data "terraform_remote_state" "network" {
  backend = "gcs"

  config = {
    bucket  = "named-enigma-277405-state-bucket" 
#   prefix  = "terraform/lab"
	credentials = file("account.json")
  }
}
