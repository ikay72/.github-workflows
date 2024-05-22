## tanzu telemetry cli-usage-analytics collect

collects and drains data from the given SQLite database

```
tanzu telemetry cli-usage-analytics collect [flags]
```

### Examples

```
tanzu telemetry cli-usage-analytics collect --source="/dir/foo.db" -q
```

### Options

```
  -h, --help            help for collect
  -q, --quiet           disables logging for this command
  -s, --source string   points to SQLite file that should be drained by this command
  -t, --timeout int     timeout in seconds for collect command (default 2)
```

### SEE ALSO

* [tanzu telemetry cli-usage-analytics](tanzu_telemetry_cli-usage-analytics.md)	 - Management of local tanzu CLI telemetry

