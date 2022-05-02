module "test" {
  source = "../.."

  # add only required arguments and no optional arguments

  display_name = "unit-complete-${local.random_suffix}"
  parent       = "organization/${local.org_id}"
}
