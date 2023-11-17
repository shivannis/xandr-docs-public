---
Title : Creative Macro Check Service
Description : If you are running third party creatives, you can use this service to
allow Xandr to check third party tags and append
parameters in the query string, replace the domain, or insert
Xandr click tracking macros in the appropriate
place for you. We currently support the following ad servers: MediaMind,
---


# Creative Macro Check Service



If you are running third party creatives, you can use this service to
allow Xandr to check third party tags and append
parameters in the query string, replace the domain, or insert
Xandr click tracking macros in the appropriate
place for you. We currently support the following ad servers: MediaMind,
Atlas, Fetchback, and DoubleClick.

If we are able to insert the Xandr macros, then
the new tag or URL will be returned in the response. If we are unable to
ensure that the right macro was inserted (the value in the
`existing_other_macros` or `unmatched` fields is not 0 within the
response), then the value within the `new_content` or `new_media_url`
field will not be displayed in .

<div id="ID-00004ac5__section_bxn_yqd_nwb" >

## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004ac5__section_bxn_yqd_nwb__entry__1"
class="entry colsep-1 rowsep-1">HTTP method</th>
<th id="ID-00004ac5__section_bxn_yqd_nwb__entry__2"
class="entry colsep-1 rowsep-1">End point</th>
<th id="ID-00004ac5__section_bxn_yqd_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__section_bxn_yqd_nwb__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__section_bxn_yqd_nwb__entry__2"><a
href="https://api..com/creative-macro-check" class="xref"
target="_blank">https://api..com/creative-macro-check</a>
<p>(replace_pattern_in_content_url JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__section_bxn_yqd_nwb__entry__3">Replace content
within a URL based on predefined patterns.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__section_bxn_yqd_nwb__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__section_bxn_yqd_nwb__entry__2"><a
href="https://api..com/creative-macro-check?include_tests=1"
class="xref"
target="_blank">https://api..com/creative-macro-check?include_tests=1</a>
<p>(replace_pattern_in_content_url JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__section_bxn_yqd_nwb__entry__3">Replace content
within a URL based on predefined patterns and test patterns.</td>
</tr>
</tbody>
</table>



<div id="ID-00004ac5__section_atb_grd_nwb" >

## JSON Fields

<table id="ID-00004ac5__table_azk_jrd_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004ac5__table_azk_jrd_nwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004ac5__table_azk_jrd_nwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004ac5__table_azk_jrd_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__1"><code
class="ph codeph">content</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__3"><strong>Field is used
when modifying content</strong>. The content that is being modified to
include Xandr macros.
<p><strong>Required On</strong>: PUT, when transforming content</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__1"><code
class="ph codeph">new_content</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__3"><strong>Field is
populated when modifying content</strong>. The updated content where all
non-secure macros have been evaluated. This field will contain the same
value as <code class="ph codeph">content</code> unless all <span
class="ph">Xandr macros are successfully inserted.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__1"><code
class="ph codeph">new_content_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__3"><strong>Field is
populated when modifying content</strong>. The updated content where all
macros, both secure and non-secure, have been evaluated. This field will
contain the same value as <code class="ph codeph">content</code> unless
all Xandr macros are successfully inserted.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__1"><code
class="ph codeph">media_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__3">Field is used when
modifying a media URL. The media URL that is being modified to include
Xandr macros.
<p><strong>Required On</strong>: PUT, when transforming a media
URL</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__1"><code
class="ph codeph">new_media_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__3"><strong>Field is
populated when modifying a media URL</strong>. The updated media URL
where all non-secure macros have been evaluated. This field will contain
the same value as <code class="ph codeph">media_url</code> unless all
Xandr macros are successfully inserted.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__1"><code
class="ph codeph">new_media_url_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__3"><strong>Field is
populated when modifying a media URL</strong>. The updated media URL
where all macros, secure and non-secure, have been evaluated. This field
will contain the same value as <code class="ph codeph">media_url</code>
unless all Xandr macros are successfully
inserted.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__1"><code
class="ph codeph">recognized_servers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__2">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__3">The names of the
adservers that contain a URL pattern matching the value within the <code
class="ph codeph">content</code> or <code
class="ph codeph">media_url</code> field. See Macro Replacements below
for more information.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__1"><code
class="ph codeph">found_urls</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__3">The number of 'src='
or 'href=' URLs found in the creative content.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__1"><code
class="ph codeph">matched_urls</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__3">The number of <code
class="ph codeph">found_urls</code> that are from a recognized ad
server.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__1"><code
class="ph codeph">macro_replacements</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__3">An array with
information about replacements that were done, listed out by macro type
(e.g. cachebuster). See Macro Replacements below for more
information.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__1"><code
class="ph codeph">warning</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_azk_jrd_nwb__entry__3">This field displays a
warning message if the value within the <code
class="ph codeph">new_content_secure</code> or <code
class="ph codeph">new_media_url_secure</code> is not secure.</td>
</tr>
</tbody>
</table>

**Macro Replacements**

<table id="ID-00004ac5__table_bzk_jrd_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004ac5__table_bzk_jrd_nwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004ac5__table_bzk_jrd_nwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004ac5__table_bzk_jrd_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__3">Specifies whether the
object has information about the cachebuster or the <code
class="ph codeph">click_url</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__1"><code
class="ph codeph">replaced</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__3">The number of URLs
that had a macro for that <code class="ph codeph">type</code>
successfully inserted.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__1"><code
class="ph codeph">existing_other_macro</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__3">The number of URLs
where we were able to determine where to insert the macro, but there was
already something there, so we left it alone. If this value is not 0,
then the value within the <code class="ph codeph">new_content</code> or
<code class="ph codeph">new_media_url</code> field will not be displayed
in .</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__1"><code
class="ph codeph">existing_</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">_macro</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__3">The number of URLs
where we were able to determine where to insert the macros.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__1"><code
class="ph codeph">unmatched</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_bzk_jrd_nwb__entry__3">Number of URLs for
which we could not determine how to insert the macros. If this value is
not 0, then the value within the <code
class="ph codeph">new_content</code> or <code
class="ph codeph">new_media_url</code> field will not be displayed in
.</td>
</tr>
</tbody>
</table>

**Recognized Servers**

<table id="ID-00004ac5__table_czk_jrd_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004ac5__table_czk_jrd_nwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004ac5__table_czk_jrd_nwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004ac5__table_czk_jrd_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_czk_jrd_nwb__entry__1"><code
class="ph codeph">adserver_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_czk_jrd_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004ac5__table_czk_jrd_nwb__entry__3">The name of the
adserver.</td>
</tr>
</tbody>
</table>





## Examples

**Replace macros within a third-party tag (content)**

The content field can include multiple URLs, however in this example the
content field only contains one URL.

``` pre
replace_pattern_in_content_url
{
        "creative-macro-check": {
                "content": "<a href=\"https://clk.atdmt.com/CCC/go/329458985/direct/01">test</a>"
        }
}
```

``` pre
{
  "response": {
    "status": "OK",
    "creative-macro-check": {
      "new_content": "<a href=\"${CLICK_URL}https:\/\/clk.atdmt.com\/CCC\/go\/329458985\/direct\/01\">test<\/a>",
      "new_content_secure": "<a href=\"${CLICK_URL}https:\/\/clk.atdmt.com\/CCC\/go\/329458985\/direct\/01\">test<\/a>",
      "content": "<a href=\"https:\/\/clk.atdmt.com\/CCC\/go\/329458985\/direct\/01\">test<\/a>",
      "media_url": null,
      "new_media_url": null,
      "new_media_url_secure": null,
      "recognized_servers": [
        "Atlas"
      ],
      "recognized_server": "Atlas",
      "found_urls": 1,
      "matched_urls": 1,
      "macro_replacements": [
        {
          "type": "click",
          "replaced": 1,
          "existing_other_macro": 0,
          "existing_appnexus_macro": 0,
          "unmatched": 0
        }
      ],
      "warning": "new_content_secure contains some non secure urls"
    },
    "count": 1,
    "start_element": null,
    "num_elements": null
  }
}
```

**Replace macros within a third-party URL (media URL)**

``` pre
replace_pattern_in_media_url
{
        "creative-macro-check": {
                "media_url": "https://clk.atdmt.com/CCC/go/329458985/direct/01"
        }
}
```

``` pre
$ curl -b cookies -c cookies -X PUT -d 'https://api.adnxs.com/creative-macro-check'
{
  "response": {
    "status": "OK",
    "creative-macro-check": {
      "content": null,
      "new_content": null,
      "new_content_secure": null,
      "media_url": "https:\/\/clk.atdmt.com\/CCC\/go\/329458985\/direct\/01",
      "new_media_url": "${CLICK_URL}https:\/\/clk.atdmt.com\/CCC\/go\/329458985\/direct\/01",
      "matched_urls": 1,
      "new_media_url_secure": "${CLICK_URL}https:\/\/clk.atdmt.com\/CCC\/go\/329458985\/direct\/01",
      "recognized_servers": [
        "Atlas"
      ],
      "recognized_server": "Atlas",
      "found_urls": 1,
      "macro_replacements": [
        {
          "type": "click",
          "replaced": 1,
          "existing_other_macro": 0,
          "existing_appnexus_macro": 0,
          "unmatched": 0
        }
      ],
      "warning": "new_media_url_secure is not secure"
    },
    "count": 1,
    "start_element": null,
    "num_elements": null
  }
  }
```






