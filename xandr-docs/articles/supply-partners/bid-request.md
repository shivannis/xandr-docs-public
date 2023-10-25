---
Title : Bid Request
Description : lorem ipsum
---


# Bid Request





Warning: We have disabled the Supply
Integration (ASI) protocol(formerly AppNexus
Supply Integration) for server-side supply integrations beginning on
October 1st, 2017. We strongly encourage that you migrate your supply to
the <a
href="https://docs.xandr.com/bundle/supply-partners/page/openrtb-specs.html"
class="xref" target="_blank">OpenRTB protocol</a>. Everything in this
section is legacy content.



To send a bid request to Xandr, you `POST` a
JSON-formatted file containing the bid request details to the following
endpoint:

``` pre
https://ib.adnxs.com/asi?member_id=YOUR_PROD_MEMBER_ID
```

For testing in our client-testing environment, you `POST` to the
endpoint:

``` pre
https://ib.client-testing.adnxs.net/asi?member_id=YOUR_TESTING_MEMBER_ID
```

For guidance on formatting your request, see the
<a href="bid-request.html#ID-00004b1e__examples_bid_request"
class="xref">Examples</a> at the bottom of the page.



## JSON Fields

Where fields are available for internal and external values (for
example, `int_blocked_categories` and `ext_blocked_categories`), include
only one of the fields in your JSON-formatted file. If both are
included, the internal value will be used.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004b1e__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004b1e__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004b1e__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">an_user_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
Xandr ID for the user viewing the page. You
include this field if you store user ID mappings in your system. See <a
href="https://docs.xandr.com/bundle/supply-partners/page/user-id-mapping.html"
class="xref" target="_blank">User ID Mapping</a> for more details.
<p><strong>Required:</strong>yes, if <code
class="ph codeph">ext_user_id</code> is not included</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">ext_user_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
supply partner ID for the user viewing the page. You include this field
if you store user ID mappings with Xandr. See <a
href="https://docs.xandr.com/bundle/supply-partners/page/user-id-mapping.html"
class="xref" target="_blank">User ID Mapping</a> for more details.
<p><strong>Required:</strong>yes, if <code
class="ph codeph">an_user_id</code> is not included</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">ext_auction_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
supply partner ID for the auction. 
<p><strong>Required:</strong>yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
width of the placement.
<p><strong>Required:</strong>yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
height of the placement.
<p><strong>Required:</strong>yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">ad_format</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
format of the creative that should be returned. Possible
values: "iframe", "javascript", or "vast". <strong>Note about
VAST:</strong> The "vast" format is <strong>not supported</strong>.
However, see the VAST bid request in the <a
href="bid-request.html#ID-00004b1e__examples_bid_request"
class="xref">Examples</a> section of what a bid request for a VAST video
creative is likely to look like.
<p><strong>Required:</strong>yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">template_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__3"><strong>Not yet supported</strong>. For
VAST video creatives, you may want Xandr to
include custom parameters in the <code class="ph codeph">ad_tag</code>
field of the bid response. To accomplish this, <span
class="ph">Xandr can create a "supply template" for you, which
you then reference here when requesting VAST video. For more details,
see <a
href="https://docs.xandr.com/bundle/supply-partners/page/bid-response.html"
class="xref" target="_blank">Supply Templates</a> in the Bid Response
documentation.
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">ip_address</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
IP address for the user viewing the page.
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">is_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">true
or false. The supply partner can request an SSL version of the creative
by setting this to true.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">page_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
full domain of the bid request (do not pass an encoded URL).
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">position</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
position of the placement on the page. Possible values: "above" (above
the fold), "below" (below the fold), or "unknown".
<p><strong>Default:</strong>"unknown"</p>
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">ext_pub_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
supply partner code for the publisher.
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">ext_placement_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
supply partner code for the placement.
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">an_placement_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
Xandr ID for the placement. To retrieve
placement IDs, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html"
class="xref" target="_blank">Placement Service</a>.
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">language</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
X ID for the language of the page. To retrieve language IDs, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/language-service.html"
class="xref" target="_blank">Language Service</a>.
<p><strong>Default:</strong>0</p>
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">user_agent</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
user agent for the request (i.e., the browser).
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">int_blocked_technical_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">array of ints </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
Xandr IDs for the creative technical attributes
that are not permitted. To retrieve technical attribute IDs, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/technical-attribute-service.html"
class="xref" target="_blank">Technical Attribute Service</a>.
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">ext_blocked_technical_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">array of ints</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
supply partner IDs for the creative technical attributes that are not
permitted.
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">int_blocked_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">array of ints</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
Xandr IDs for the creative categories that are
not permitted. To retrieve category IDs, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/category-service.html"
class="xref" target="_blank">Category Service</a>.
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">ext_blocked_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">array of ints</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
supply partner IDs for the creative categories that are not permitted.
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">int_content_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">array of ints</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
Xandr IDs for the content categories applied to
the placement. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/content-category-service.html"
class="xref" target="_blank">Content Category Service</a> to view all
possible values. This includes custom content categories created by the
supply partner under its Xandr member.
<p><strong>Default:</strong>0</p>
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">ext_content_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">array of ints</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
supply partner IDs for the content categories applied to the placement.
<p><strong>Default:</strong>0</p>
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">blocked_urls</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">array of strings</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
creative landing page URLs that are not permitted. Up to 20 URLs can be
blocked. Example formatting:
<pre class="pre codeblock"><code>{
    &quot;blocked_urls&quot;: [
        &quot;landingpage1.com&quot;,
        &quot;landingpage2.com&quot;
    ]
}</code></pre>
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">blocked_languages</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">array of ints </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
creative languages that are not permitted. To retrieve language IDs, use
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/language-service.html"
class="xref" target="_blank">Language Service</a>.
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">int_blocked_brands</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">array of ints </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
Xandr IDs for the brands that are not permitted.
To retrieve brand IDs, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/brand-service.html"
class="xref" target="_blank">Brand Service</a>.
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code class="ph codeph">age</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
age of the user viewing the page.
<p><strong>Default:</strong>0</p>
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">gender</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
gender of the user viewing the page. Possible values: "male", "female",
or "unknown".
<p><strong>Default:</strong>"unknown"</p>
<p><strong>Required:</strong>no</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__1"><code
class="ph codeph">supply_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b1e__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b1e__entry__3">The
display environment. Possible values: "web", "mobile_app", "mobile_web",
"in-stream-video", or "other".

Tip: The value of <code
class="ph codeph">supply_type</code> will override the supply type set
at the <a
href="https://docs.xandr.com/bundle/xandr-api/page/site-service.html"
class="xref" target="_blank">site</a> level.


Note: The "in-stream-video" format is
<strong>not yet supported</strong>

<p><strong>Default:</strong>"web"</p>
<p><strong>Required:</strong>no</p></td>
</tr>
</tbody>
</table>



<div id="ID-00004b1e__placement_mapping" >

## Placement Mapping

Xandr will submit a bid only when we can map
your request to a placement in Xandr. We look up
the following, in the following sequence:

1.  `an_placement_id`
2.  `ext_placement_code`
3.  `ext_pub_code` (the publisher's default tag)
4.  Your member's default placement (set up for your account by your
    Technical Account Manager before production login credentials are
    even assigned)

If none of the above are available, Xandr will
not submit a bid. Note that each `ext_placement_code` can map to only
one placement in Xandr, and each `ext_pub_code`
can map to only one publisher in Xandr.



<div id="ID-00004b1e__examples_bid_request" >

## Examples

**Sending a minimally acceptable bid request**

1.  Create a JSON-formatted file including the required fields only.
    This example uses the `an_user_id` field, but you could use the
    `ext_user_id` instead.

    ``` pre
    $ cat bid_request |
                   {
                   "an_user_id": 1089773736613054100,
                   "ext_auction_id": "395dj2j2j2dd",
                   "ad_format":"iframe",
                   "width": 300,
                   "height": 250
                   }
    ```

2.  POST the JSON-formatted file. Be sure to include your member ID in
    the querystring.

    ``` pre
    $ curl -X POST -d @bid_request 'https://ib.adnxs.com/asi?member_id=123'
    ```

**Sending a bid request that includes Xandr
values only**

1.  Create a JSON-formatted file with the fields for
    Xandr values instead of supply partner
    values, for example, `an_user_id` instead of `ext_user_id` and
    `int_blocked_technical_attributes` instead of
    `ext_blocked_technical_attributes`.

    ``` pre
    "$ cat bid_request"{
       "an_user_id":1089773736613054100,
       "ext_auction_id":"395dj2j2j2dd",
       "width":300,
       "height":250,
       "ad_format":"iframe",
       "ip_address":"38.108.249.106",
       "page_url":"publisher.com",
       "position":"above",
       "ext_pub_code":"203pub",
       "ext_site_code":"145site",
       "an_placement_id":40,
       "language":1,
       "user_agent":"Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.8) Gecko/20100214 Ubuntu/9.10 (karmic) Firefox/3.5.8",
       "int_blocked_technical_attributes":[
          6,
          10,
          11
       ],
       "int_blocked_categories":[
          16,
          17,
          19
       ],
       "int_content_categories":[
          5,
          6,
          7
       ],
       "blocked_urls":[
          "landingpage1.com",
          "landingpage2.com",
          "landingpage3.com",
          "landingpage4.com",
          "landingpage5.com"
       ],
       "blocked_languages":[
          2,
          3,
          4,
          5,
          6,
          7,
          8,
          9,
          10
       ],
       "age":25,
       "gender":"male",
       "supply_type":"web"
    }
    ```

2.  POST the JSON-formatted file. Be sure to include your member ID in
    the querystring.

    ``` pre
    $ curl -X POST -d @bid_request 'https://ib.adnxs.com/asi?member_id=123'
    ```

**Sending a bid request that includes external values only**

1.  Create a JSON-formatted file with the fields for supply partner
    values instead of Xandr values, for example,
    `ext_placement_code` instead of `an_placement_id` and
    `ext_blocked_categories` instead of `int_blocked_categories`.

    ``` pre
    $ cat bid_request
    {
        "ext_user_id": 1089773736613054100,
        "ext_auction_id": "395dj2j2j2dd",
        "width": 300,
        "height": 250,
        "ad_format": "iframe",
        "ip_address": "38.108.249.106",
        "page_url": "publisher.com",
        "position": "above",
        "ext_pub_code": "203pub",
        "ext_site_code": "145site",
        "ext_placement_code": "40placement",
        "language": 1,
        "user_agent": "Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.8) Gecko/20100214 Ubuntu/9.10 (karmic) Firefox/3.5.8",
        "ext_blocked_technical_attributes": [
            3,
            5,
            8
        ],
        "ext_blocked_categories": [
            2,
            15,
            20
        ],
        "ext_content_categories": [
            2,
            9,
            13
        ],
        "blocked_urls": [
            "landingpage1.com",
            "landingpage2.com",
            "landingpage3.com",
            "landingpage4.com",
            "landingpage5.com"
        ],
        "blocked_languages": [
            2,
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            10
        ],
        "age": 25,
        "gender": "male",
        "supply_type": "web"
    }
    ```

2.  POST the JSON-formatted file. Be sure to include your member ID in
    the querystring.

    ``` pre
    $ curl -X POST -d @bid_request 'https://ib.adnxs.com/asi?member_id=123'
    ```

**Sending a bid request that does not include blocking details**

If you set up ad profiles to enforce your publishers' preferences, you
do not need to specify blocking details in your bid request.

1.  Create a JSON-formatted file excluding the fields for blocking
    technical attributes, creative categories, content categories, urls,
    and languages.

    ``` pre
    $ cat bid_request
    {
        "an_user_id": 1089773736613054100,
        "ext_auction_id": "395dj2j2j2dd",
        "width": 300,
        "height": 250,
        "ad_format": "iframe",
        "ip_address": "38.108.249.106",
        "page_url": "publisher.com",
        "position": "above",
        "ext_pub_code": "203pub",
        "ext_site_code": "145site",
        "an_placement_id": "40",
        "language": 1,
        "user_agent": "Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.8) Gecko/20100214 Ubuntu/9.10 (karmic) Firefox/3.5.8",
        "age": 25,
        "gender": "male",
        "supply_type": "web"
    }
    ```

2.  POST the JSON-formatted file. Be sure to include your member ID in
    the querystring.

    ``` pre
    $ curl -X POST -d @bid_request 'https://ib.adnxs.com/asi?member_id=123' 
    ```

**Sending a bid request for a VAST video creative (NOT YET SUPPORTED)**

When requesting a VAST video creative:

- The `ad_format` must be set to "vast".
- The `width` must be set to 1.
- The `height` must be set to 1.
- The request must map to a placement in the
  Xandr system that allows creatives of the
  "Video" media type or any combination of the "15-Second VAST",
  "30-Second VAST", or "Other VAST" media subtypes. If the request maps
  to a non-video placement, AppNexus will
  respond with an error (Request ad format does not match the placement
  format). For details about how we look up the placement to use, see
  Placement Mapping above.
- Do not pass `int_blocked_technical_attributes` or
  `ext_blocked_technical_attributes` to define which VAST video
  durations you want. Instead, as mentioned above, the
  Xandr placement should define the allowed VAST
  video duration.
- If you have asked Xandr to set up a supply
  template to include custom parameters in the `ad_tag` field of our bid
  response, set `template_id` to the ID of that supply template. For
  more details, see Supply Templates in the Bid Response documentation.

1.  Create a JSON-formatted file according to the requirements above.
    This example assumes that there is a specific placement in the
    Xandr system defined to allow VAST video
    creatives. The ID of this placement is passed in the
    `an_placement_id` field.

    ``` pre
    $ cat bid_request
    {
        "an_user_id": 1089773736613054100,
        "ext_auction_id": "395dj2j2j2dd",
        "ad_format":"vast",
        "width": 1,
        "height": 1.
        "an_placement_id": 204,
        "tmpl_id": 4,
        "ip_address": "38.108.249.106",
        "page_url": "ibdo.com",
        "position": "unknown",
        "language": 0,
        "user_agent": "Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.8) Gecko/20100214 Ubuntu/9.10 (karmic) Firefox/3.5.8",
        "age": 25,
        "gender": "female"
    }
    ```

2.  POST the JSON-formatted file. Be sure to include your member ID in
    the querystring.

    ``` pre
    $ curl -X POST -d @bid_request 'https://ib.adnxs.com/asi?member_id=123'
    ```






