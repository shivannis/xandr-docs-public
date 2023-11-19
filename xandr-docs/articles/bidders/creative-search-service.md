---
Title : Creative Search Service
Description : This read-only service allows you to search for creatives based on
ms.date : 10/28/2023
specific criteria such as audit status, ID, size, etc. To add creatives
---


# Creative Search Service



This read-only service allows you to search for creatives based on
specific criteria such as audit status, ID, size, etc. To add creatives
to the system, see the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>.



<b>Warning:</b> Since this service searches
all creatives on Xandr's platform (not just your
own), a search that is too broad might cause an error. To ensure that
you get results, please narrow your search as much as possible.




## Implementation

**REST API**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004945__section_ppx_ftd_nwb__entry__1"
class="entry colsep-1 rowsep-1">HTTP method</th>
<th id="ID-00004945__section_ppx_ftd_nwb__entry__2"
class="entry colsep-1 rowsep-1">End point</th>
<th id="ID-00004945__section_ppx_ftd_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__section_ppx_ftd_nwb__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__section_ppx_ftd_nwb__entry__2"><a
href="https://api..com/creative-search" class="xref"
target="_blank">https://api..com/creative-search</a>
<p>(creative_search JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__section_ppx_ftd_nwb__entry__3">To search for
creatives.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__section_ppx_ftd_nwb__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__section_ppx_ftd_nwb__entry__2"><a
href="https://api..com/creative-search?sort=FIELD_NAME.ASC_OR_DESC"
class="xref"
target="_blank">https://api..com/creative-search?sort=FIELD_NAME.ASC_OR_DESC</a>
<p>(creative_search JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__section_ppx_ftd_nwb__entry__3">Search for
creatives and sort results.

<b>Note:</b> The fields used to search for
creatives are not exactly the same as the fields returned. This is
because the returned objects are drawn from the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> and formatted
accordingly.
<p>This service will only search active creatives.</p>
</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004945__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004945__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004945__entry__12"
class="entry colsep-1 rowsep-1">Sort?</th>
<th id="ID-00004945__entry__13" class="entry colsep-1 rowsep-1">Use</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">creative_ids</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">Yes, use "id" in query string.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13">Search for creatives by their
IDs. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13">Search for creatives by terms in their
descriptions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">array of enums</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13">Search for creatives by their audit
status. Possible values: "no_audit", "pending", "rejected",
"audited".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">ad_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13"><strong>Must be used with</strong>
<code class="ph codeph">brand_status</code>. Search for a creative by
the ID of its ad profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">brand_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">array of enums</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13"><strong>Must be used with</strong>
<code class="ph codeph">ad_profile_id</code>. Search for creatives by
their brand status. For example, if this is set to "trusted", all
trusted brands within the ad profiles specified in <code
class="ph codeph">ad_profile_id</code> will be returned in the response.
Possible values: "trusted", "case-by-case", "banned". The brand status
field is only returned in the response when you use this filter.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">review_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">array of enums</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13">Search for creatives based on their
review status (from the associated ad profiles). Possible values:
"reviewed", "unreviewed". The review status field is only returned in
the response when you use this filter.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">uploaded_since</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13">Search for creatives that were uploaded
since this date. Format: "YYYY-MM-DD HH:MM:SS".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">modified_since</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13">Search for creatives that were modified
since this date. Format: "YYYY-MM-DD HH:MM:SS".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">formats</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">array of enums</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">Yes, use "format" in query string.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13">Search for creatives by their formats.
Possible values: "url-html", "url-js", "flash", "image", "raw-js",
"raw-html", "iframe-html", "url-vast", "text".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">media_subtype</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">array of enums</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13"><strong>Deprecated, use</strong> <code
class="ph codeph">media_subtype_ids</code> instead. Search for creatives
by their media subtypes. Possible values: "Banner", "Popup",
"Popunder".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">media_subtype_ids</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">Yes, use "media_subtype_id" in query
string.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13">Search for creatives by their media
subtype via ID. You can use the <a
href="xandr-api/media-subtype-service.md"
class="xref" target="_blank">Media Subtype Service</a> to look up the
desired IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">media_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13">Search for a creative by its URL.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">media_content</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13">Search for a creative by the data in
its original_content field (see <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">Yes, use "width" and "height" in query
string.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13">Search for creatives by their sizes,
for example, "728x90".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">brand_ids</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13">Search for creatives by the IDs of
their brands.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">member_ids</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">Yes, use "member_id" in query
string.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13"><strong>Must be used with</strong>
<code class="ph codeph">member_action</code>. Search for creatives by
the IDs of their members.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">member_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13"><strong>Must be used with</strong>
<code class="ph codeph">member_ids</code>. If this is set to "exclude",
you exclude the members specified in <code
class="ph codeph">member_ids</code> from the search. Otherwise, the
specified IDs are included.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">template_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13">Search for creatives by their creative
template IDs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">size_in_bytes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13"><strong>Not a filter.</strong> Sort
results in ascending/descending size order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">click_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13"><strong>Not a filter</strong>. Sort
results in ascending/descending alphabetical click URL order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__10"><code
class="ph codeph">landing_page_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__12">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004945__entry__13"><strong>Not a filter</strong>. Sort
results in ascending/descending alphabetical landing page URL
order.</td>
</tr>
</tbody>
</table>





## Examples

**Search for all banner creatives that have passed
Xandr's audit**

``` pre
$ cat creative_search
{
   "creative_search": {
      "audit_status": [
         "audited"
      ],
      "media_subtype": [
         "banner"
      ]
   }
}
```

``` pre
$ curl -b cookies -c cookies -X POST -d @creative_search 'https://api.adnxs.com/creative-search'
{
   "response": {
      "status": "OK",
      "creatives": [
         {
            "id": "48652",
            "width": "300",
            "height": "250",
            "media_url": "https:\/\/cdn.adnxs.com\/p\/05\/d1\/cd\/fe\/05d1cxxxxxx221db2ba8b.png",
            "content": null,
            "format": "image",
            "member_id": "408",
            "brand_id": "1",
            "click_url": "https:\/\/www.sample.com",
            "audit_status": "audited",
            "size_in_bytes": "14545",
            "landing_page_url": null,
            "last_activity": "2010-07-23 16:40:41",
            "created_on": "2010-04-30 07:20:23",
            "media_subtypes": [
               "banner"
            ],
            "pop_values": null
            },
         {
            "id": "73163",
            "width": "300",
            "height": "250",
            "media_url": null,
            "content": "<iframe src=\"https:\/\/xxxx.net\/udm\/img.fetch?sid=2773;tid=2;ev=1;dt=1;\" width=300
             height=250 Marginwidth=0 Marginheight=0 Hspace=0 Vspace=0 Frameborder=0 Scrolling=No><\/iframe>
             <noscript><a href=\"https:\/\/fletcher.net\/udm\/clk.cpx?sid=2773;ev=2;tid=2;dt=3\"><img src=\
             "https:\/\/sample.net\/udm\/img.fetch?sid=2773;ev=1;tid=2;dt=3\" width=300 height=250 border=0>
             <\/a><\/noscript>",
            "format": "iframe-html",
            "member_id": "333",
            "brand_id": "17",
            "click_url": "",
            "audit_status": "audited",
            "size_in_bytes": "0",
            "landing_page_url": "https:\/\/www.appleblueberry.com",
            "last_activity": "2010-09-07 23:33:45",
            "created_on": "2010-08-25 16:31:43",
            "media_subtypes": [
               "banner"
            ],
            "pop_values": null
         },
         ...
      ]
   }
}
```

**Search for all flash creatives that have been uploaded since
2012-01-01 00:00:00**

``` pre
$ cat creative_search
{
   "creative_search": {
      "formats": [
         "flash"
      ],
      "uploaded_since": "2012-01-01 00:00:00"
   }
}
```

``` pre
$ curl -b cookies -c cookies -X POST -d @creative_search 'https://api.adnxs.com/creative-search'
{
   "response": {
      "status": "OK",
      "creatives": [
         {
            "id": "1207858",
            "width": "160",
            "height": "600",
            "media_url": "https:\/\/cdn.adnxs.com\/p\/c7\/6d\/5b\/bd\/c76d5bbdxxxxx8b9e1507c07cbe61.swf",
            "content": null,
            "format": "flash",
            "member_id": "326",
            "brand_id": "4467",
            "click_url": "https:\/\/clickclick.com\/witness\/p=28xxx96\/c=6sxd3",
            "audit_status": "audited",
            "size_in_bytes": "40077",
            "landing_page_url": "https:\/\/www.destination.com",
            "last_activity": "2012-01-01 15:56:59",
            "created_on": "2012-01-01 02:34:14",
            "media_subtypes": [
               "banner"
            ],
            "pop_values": null
         },
         {
            "id": "1207859",
            "width": "160",
            "height": "600",
            "media_url": "https:\/\/cdn.adnxs.com\/p\/3b\/d6\/f6\/1d\/3bd6f61dkdh4473djfb579430ed.swf",
            "content": null,
            "format": "flash",
            "member_id": "326",
            "brand_id": "4467",
            "click_url": "https:\/\/clickclick.com\/witness\/p=2ddssd6\/c=3423",
            "audit_status": "audited",
            "size_in_bytes": "32094",
            "landing_page_url": "https:\/\/www.destination.com",
            "last_activity": "2012-01-01 15:57:36",
            "created_on": "2012-01-01 02:35:52",
            "media_subtypes": [
               "banner"
            ],
            "pop_values": null
         },
         ...
      ]
   }
}
```

**Search for all 728x90 and 300x250 image creatives that belong to
member 333**

``` pre
$ cat creative_search
{
   "creative_search": {
      "sizes": [
         "728x90",
         "300x250"
      ],
      "formats": [
         "image"
      ],
      "member_ids": [
         333
      ]
   }
}
```

``` pre
$ curl -b cookies -c cookies -X POST -d @creative_search 'https://api.adnxs.com/creative-search'
{
   "response": {
      "status": "OK",
      "creatives": [
         {
            "id": "61967",
            "width": "300",
            "height": "250",
            "media_url": "https://cdn.adnxs.com/p/c8/fb/12/56/c8fb125634xxxx2e67a783d91cf.png",
            "content": null,
            "format": "image",
            "member_id": "333",
            "brand_id": "1",
            "click_url": "https://www.clickplace.com/",
            "audit_status": "no_audit",
            "size_in_bytes": "29433",
            "landing_page_url": null,
            "last_activity": "2011-05-13 02:34:47",
            "created_on": "2010-07-28 20:44:22",
            "media_subtypes": [
               "banner"
            ],
            "pop_values": null
         },
         {
            "id": "291801",
            "width": "728",
            "height": "90",
            "media_url": "https://cdn.adnxs.com/p/54/62/87/d1/546287aasxxx8e6431960ad2b1fb.png",
            "content": null,
            "format": "image",
            "member_id": "333",
            "brand_id": "2450",
            "click_url": "https://thatplace.com/careers",
            "audit_status": "audited",
            "size_in_bytes": "24091",
            "landing_page_url": "https://thatplace.com/careers",
            "last_activity": "2011-05-13 03:30:00",
            "created_on": "2011-04-05 18:28:29",
            "media_subtypes": [
               "banner"
            ],
            "pop_values": null
         },
         ...
      ]
   }
   }
```






