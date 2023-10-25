---
Title : Pass Custom Keywords on iOS
Description : Custom keywords are used to attach arbitrary key-value pairs to the
request body of the ad call. These can be used for several purposes,
---


# Pass Custom Keywords on iOS



Custom keywords are used to attach arbitrary key-value pairs to the
request body of the ad call. These can be used for several purposes,
including:

- Custom campaign targeting options (see <a
  href="https://docs.xandr.com/bundle/xandr-api/page/custom-key-value-targeting.html"
  class="xref" target="_blank">Key-Value Targeting</a> for more
  information)
- Reporting (see <a
  href="https://docs.xandr.com/bundle/xandr-api/page/key-value-analytics-report.html"
  class="xref" target="_blank">Key Value Analytics Report</a> for more
  information)

The following line of code adds a single key-value pair to the JSON body
of ad the call:

``` pre
// Add key foo with a single value (bar).
[banner addCustomKeywordWithKey:@"foo" value:@"bar"];
```

For a more robust/complex setup, you can pass multiple values for the
same key in the ad call. To do this,
call `addCustomKeywordWithKey:(NSString *)key value:(NString *)value `multiple
times with the same key:

``` pre
[banner addCustomKeywordWithKey:@"foo" value:@"bar"];
[banner addCustomKeywordWithKey:@"foo" value:@"baz"];
[banner addCustomKeywordWithKey:@"foo" value:@"foe"];
[banner addCustomKeywordWithKey:@"customkey" value:@"bar"];
```




