package security

deny[msg] {
  input.spec.template.spec.containers[_].securityContext.runAsUser == 0
  msg = "Running as root user is not allowed"
}
