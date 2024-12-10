data "aws_caller_identity" "current" {}

module "frontend" {
  source = "./modules/frontent_deployment"
  name   = "${data.aws_caller_identity.current.account_id}-${var.bucket_name}"
  path   = "./modules/frontent_deployment/index.html"
  tags = merge(var.tags, {
    Creation = timestamp()
  })
}
