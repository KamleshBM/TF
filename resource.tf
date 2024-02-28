module "ec2" {
  source = "./modules/ec2"
  instance_name = local.ws.name
  type = local.ws.type
  ami = "ami-03f4878755434977f" 
}
locals {
  workspaces = {
    stage= {
      name = "kamlesh_stage"
      type = "t2.micro"
     }
    prod  = {
      name = "kamlesh_prod"
      type = "t2.micro"
     }
  }
  ws = local.workspaces[terraform.workspace]
}
