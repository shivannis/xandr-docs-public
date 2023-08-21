# Pass Custom Keywords on Android

<div class="body">

Custom keywords are used to attach arbitrary key-value pairs to the
request body of the ad call. These can be used for several purposes,
including:

- Custom campaign targeting options (see <a
  href="https://docs.xandr.com/bundle/xandr-api/page/custom-key-value-targeting.html"
  class="xref" target="_blank">Key-Value Targeting</a> for more
  information)
- Reporting (see <a
  href="https://docs.xandr.com/bundle/xandr-api/page/key-value-analytics-report.html"
  class="xref" target="_blank">Key Value Analytics Report</a>)

The following line of code adds a single key-value pair to the JSON body
of the ad call:

``` pre
// Add key foo with a single value (bar).
adView.addCustomKeywords("foo", "bar");
```

For a more robust/complex setup, you can pass multiple values for the
same key in the ad call. To do this, call `addCustomKeywords` multiple
times with the same key:

``` pre
adView.addCustomKeywords("foo", "bar");
adView.addCustomKeywords("foo", "baz");
adView.addCustomKeywords("foo", "foe");
adView.addCustomKeywords("customkey", "bar");
```

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="android-sdk-code-samples.html" class="link">Android SDK Code
Samples</a>

</div>

</div>

</div>
