module "test" {
  source = "../.."

  # add all required arguments

  display_name = "unit-complete-${local.random_suffix}"
  parent       = "organization/${local.org_id}"

  # add all optional arguments that create additional/extended resources

  iam = [
    {
      role  = "role/viewer"
      roles = ["role/browser"]
      members = [
        "user:example@example.com"
      ]
    }
  ]

  # add most/all other optional arguments
}
