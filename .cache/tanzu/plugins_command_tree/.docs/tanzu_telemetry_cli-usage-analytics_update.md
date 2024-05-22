## tanzu telemetry cli-usage-analytics update

updates metadata relevant to cli usage analytics

```
tanzu telemetry cli-usage-analytics update [flags]
```

### Examples

```
# opt into CLI usage analytics
tanzu telemetry cli-usage-analytics update --opt-in
# opt out of CLI usage analytics
tanzu telemetry cli-usage-analytics update --opt-out
# set EAN and CSP org ID
tanzu telemetry cli-usage-analytics update --entitlement-account-number XXXX --csp-org-id YYYY
```

### Options

```
      --csp-org-id string                   sets a CSP org ID to associate with local CLI telemetry
      --entitlement-account-number string   sets an entitlement account number to associate with local CLI telemetry
  -h, --help                                help for update
      --opt-in                              opt into collection of local CLI telemetry
      --opt-out                             opt out of collection of local CLI telemetry
```

### SEE ALSO

* [tanzu telemetry cli-usage-analytics](tanzu_telemetry_cli-usage-analytics.md)	 - Management of local tanzu CLI telemetry

