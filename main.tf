

data "ibm_schematics_workspace" "vpc" {
  workspace_id = var.workspace_id
}

data "ibm_schematics_output" "vpc" {
  workspace_id = var.workspace_id
  template_id  = "${data.ibm_schematics_workspace.vpc.template_id.0}"
}


variable "workspace_id" {
  description = "Id of the source Schematics Workspace for target VSIs"
  default     = "ssh_bastion-host-0353ce37-3748-4c"
}
