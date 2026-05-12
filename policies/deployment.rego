package deployment

deny[msg] {
  input.kind == "Deployment"
  not input.spec.template.spec.containers[_].image
  msg = "Container image missing"
}
