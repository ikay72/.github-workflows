// main.go
package main

import (
    "github.com/hashicorp/vault/sdk/plugin"
    "github.com/mtnrwanda/vault-plugin-secrets-beyondtrust/beyondtrust"
)

func main() {
    plugin.Serve(&plugin.ServeOpts{
        BackendFactoryFunc: beyondtrust.Factory,
    })
}

