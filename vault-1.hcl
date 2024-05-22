storage "raft" {
  path                = "/vault/data"
  node_id             = "vault-1"
  cluster_addr        = "http://$(POD_IP):8201"
  bolt_open_timeout   = "10s"
  autopilot {
    cleanup_dead_servers      = true
    last_contact_threshold    = "200ms"
    max_trailing_logs         = 250
    min_quorum                = 3
    server_stabilization_time = "10s"
    promote_standbys          = true
  }
}

listener "tcp" {
  address          = "0.0.0.0:8200"
  cluster_address  = "0.0.0.0:8201"
  tls_disable      = true
}

api_addr = "http://$(POD_IP):8200"
cluster_addr = "http://$(POD_IP):8201"
ui = true

