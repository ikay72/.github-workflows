ui = true

cluster_name = "mtnrw-vault-storage"

listener "tcp" {
  address = "0.0.0.0:8200"
  cluster_address = "0.0.0.0:8201"
  tls_cert_file = "/vault/userconfig/vault-server-tls/tls.crt"
  tls_key_file = "/vault/userconfig/vault-server-tls/tls.key"
  tls_client_ca_file = "/vault/userconfig/vault-server-tls/ca.crt"
  tls_require_and_verify_client_cert = false
}

api_addr = "https://vault-0.vault-internal.vault.svc.cluster.local:8200"

storage "raft" {
  path = "/vault/data"

  retry_join {
    leader_api_addr = "https://vault-0.vault-internal.vault.svc.cluster.local:8200"
    leader_ca_cert_file = "/vault/userconfig/vault-server-tls/ca.crt"
    leader_client_cert_file = "/vault/userconfig/vault-server-tls/tls.crt"
    leader_client_key_file = "/vault/userconfig/vault-server-tls/tls.key"
    leader_tls_servername = "vault-0.vault-internal.vault.svc.cluster.local"
  }

  retry_join {
    leader_api_addr = "https://vault-1.vault-internal.vault.svc.cluster.local:8200"
    leader_ca_cert_file = "/vault/userconfig/vault-server-tls/ca.crt"
    leader_client_cert_file = "/vault/userconfig/vault-server-tls/tls.crt"
    leader_client_key_file = "/vault/userconfig/vault-server-tls/tls.key"
    leader_tls_servername = "vault-1.vault-internal.vault.svc.cluster.local"
  }

  retry_join {
    leader_api_addr = "https://vault-2.vault-internal.vault.svc.cluster.local:8200"
    leader_ca_cert_file = "/vault/userconfig/vault-server-tls/ca.crt"
    leader_client_cert_file = "/vault/userconfig/vault-server-tls/tls.crt"
    leader_client_key_file = "/vault/userconfig/vault-server-tls/tls.key"
    leader_tls_servername = "vault-2.vault-internal.vault.svc.cluster.local"
  }

  retry_join {
    leader_api_addr = "https://vault-3.vault-internal.vault.svc.cluster.local:8200"
    leader_ca_cert_file = "/vault/userconfig/vault-server-tls/ca.crt"
    leader_client_cert_file = "/vault/userconfig/vault-server-tls/tls.crt"
    leader_client_key_file = "/vault/userconfig/vault-server-tls/tls.key"
    leader_tls_servername = "vault-3.vault-internal.vault.svc.cluster.local"
  }

  retry_join {
    leader_api_addr = "https://vault-4.vault-internal.vault.svc.cluster.local:8200"
    leader_ca_cert_file = "/vault/userconfig/vault-server-tls/ca.crt"
    leader_client_cert_file = "/vault/userconfig/vault-server-tls/tls.crt"
    leader_client_key_file = "/vault/userconfig/vault-server-tls/tls.key"
    leader_tls_servername = "vault-4.vault-internal.vault.svc.cluster.local"
  }
}

plugin_directory = "/mnt/vault/plugins/"

