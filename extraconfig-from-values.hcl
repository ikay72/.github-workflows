# Additional configuration can be placed here

# Tune the default lease TTL for secrets
default_lease_ttl = "1h"
max_lease_ttl = "24h"

# Enable auditing to a file
audit "file" {
  options = {
    file_path = "/vault/logs/audit.log"
  }
}

# Example of setting up a secrets engine
# Secrets Engine "kv" version 2
mount "kv" {
  path = "secret"
  options = {
    version = "2"
  }
}

# Setup a sample policy
policy "example-policy" {
  rules = <<-EOH
    path "secret/data/*" {
      capabilities = ["create", "read", "update", "delete", "list"]
    }
  EOH
}

# Performance tuning parameters
disable_mlock = true

