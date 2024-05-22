## tanzu telemetry metadata update

Update tanzu telemetry metadata

```
tanzu telemetry metadata update [flags]
```

### Examples

```

	# update entitlement account number
    tanzu telemetry metadata update --env-is-prod "true" --entitlement-account-number "1234" --csp-org-id "XXXX"
	# mark environment as a production environment
	tanzu telemetry metadata update --env-is-prod "true"
	# update csp org id
	tanzu telemetry metadata update --csp-org-id "XXXX"

```

### Options

```
      --csp-org-id string                   Accepts a string and sets a cluster-wide CSP org ID. Empty string is equivalent to unsetting this value.
      --entitlement-account-number string   Accepts a string and sets a cluster-wide entitlement account number. Empty string is equivalent to unsetting this value
      --env-is-prod string                  Accepts a boolean and sets a cluster-wide value denoting whether the target is a production cluster or not.
  -h, --help                                help for update
```

### SEE ALSO

* [tanzu telemetry metadata](tanzu_telemetry_metadata.md)	 - Management of shared tanzu telemetry metadata for the target cluster

