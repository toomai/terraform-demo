locals {
  res_name = "extia-demo"
  mongodb_project_id= "5fda6a31d09ef1252cce5f74"
}

// module "terraform-module-atlas" {
//   source = "git@github.com:toomai/terraform-module-atlas.git?ref=main"
//   project_id = local.mongodb_project_id
//   cluster_name = local.res_name
// }

module "terraform-module-github" {
  source = "git@github.com:toomai/terraform-module-github.git?ref=main"
  repo_name = local.res_name
  repo_description = "This is a demo for extia and everyone enjoyed it !"
}

module "terraform-module-heroku" {
  source = "git@github.com:toomai/terraform-module-heroku.git?ref=main"
  app_name = local.res_name
  app_version = "1.1.0"
  #depends_on = [module.terraform-module-atlas, module.terraform-module-github]
}
