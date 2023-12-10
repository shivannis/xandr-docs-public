---
Title : Targeting Key Service
Description : The **targeting-key** service works in conjunction with the
ms.date: 10/28/2023
ms.custom: digital-platform-api
**targeting-value** service to allow you to define your own key/value
combinations for use in targeting on line items, campaigns, and so on.
---


# Targeting Key Service



The **targeting-key** service works in conjunction with the
**targeting-value** service to allow you to define your own key/value
combinations for use in targeting on line items, campaigns, and so on.
(See <a
href="custom-key-value-targeting.md"
class="xref" target="_blank">Custom Key Value Targeting</a> for more
information.).

>

## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="targeting-key-service__section_w2n_n5q_swb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="targeting-key-service__section_w2n_n5q_swb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="targeting-key-service__section_w2n_n5q_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__2"><p><a
href="https://api.appnexus.com/targeting-key" class="xref"
target="_blank">https://api.appnexus.com/targeting-key</a></p>
<p>(create_target_key JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__3">Add a new
targeting key.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__2"><p><a
href="https://api.appnexus.com/targeting-key?id=TARGETING_KEY_ID"
class="xref"
target="_blank">https://api.appnexus.com/targeting-key?id=TARGETING_KEY_ID</a></p>
<p>(update_targeting_key JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__3">Modify a
targeting key.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__2"><a
href="https://api.appnexus.com/targeting-key" class="xref"
target="_blank">https://api.appnexus.com/targeting-key</a></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__3">View all
targeting keys.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__2"><a
href="https://api.appnexus.com/targeting-key?id=TARGETING_KEY_ID"
class="xref"
target="_blank">https://api.appnexus.com/targeting-key?id=TARGETING_KEY_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__3">View a
specific targeting key.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__2"><a
href="https://api.appnexus.com/targeting-key?name=TARGETING_KEY_NAME1,TARGETING_KEY_NAME2,TARGETING_KEY_NAME3"
class="xref"
target="_blank">https://api.appnexus.com/targeting-key?name=TARGETING_KEY_NAME1,TARGETING_KEY_NAME2,TARGETING_KEY_NAME3</a></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__3">View a
set of targeting keys by name.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__2"><a
href="https://api.appnexus.com/targeting-key?id=TARGETING_KEY_ID"
class="xref"
target="_blank">https://api.appnexus.com/targeting-key?id=TARGETING_KEY_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_w2n_n5q_swb__entry__3">Delete a
targeting key.</td>
</tr>
</tbody>
</table>



>

## JSON Fields



**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="targeting-key-service__section_ddr_dvq_swb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="targeting-key-service__section_ddr_dvq_swb__entry__2"
class="entry colsep-1 rowsep-1">Type (Length)</th>
<th id="targeting-key-service__section_ddr_dvq_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__3"><p>The ID
of the targeting key.</p>
<p><strong>Default</strong>: Auto-generated number</p>
<p><strong>Required On</strong>: <code class="ph codeph">PUT/</code>
<code class="ph codeph">DELETE</code>, in query string</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__3"><p>The
data type of the key and its associated values. Must be one of the
following values:</p>
<ul>
<li>string</li>
<li>numeric</li>
</ul>
<p><strong>Required On</strong>: POST</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__3"><p>The
name of the targeting key.</p>
<p>The value must be one word, with no spaces. This name must be unique
within your member.</p>
<p><strong>Required On</strong>: POST</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__1"><code
class="ph codeph">label</code></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__3">A label
for the key, to be used for reporting. This value is not required, but
if you do include a value, it must be unique within your member. Label
can be a maximum of 190 characters.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__3"><p>The
state of the targeting key. Possible values are <strong>active</strong>
and <strong>inactive</strong>.</p>
<p><strong>Default</strong>: active</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__3"><strong>Read-only.</strong>
The date and time the targeting key was created.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="targeting-key-service__section_ddr_dvq_swb__entry__3"><strong>Read-only.</strong>
The date and time the targeting key was last modified.</td>
</tr>
</tbody>
</table>



**Key Requirements**

Number of keys:

- You can have up to 500 active keys at one time.
- You can have up to 100,000 values per key.
- You can have up to 2,500,000 total active values at one time.

Key naming:

- Key names are not case-sensitive.
- Maximum key name length is 50 characters.
- Key names must be one word, with no whitespace.
- Key names cannot contain any of the following special characters:
  - " (double quotes)
  - ' (apostrophe)
  - = (equal sign)
  - ! (exclamation point)
  - \+ (plus sign)
  - \# (hashtag)
  - \* (asterisk)
  - ~ (tilde)
  - ; (semicolon)
  - ^ (caret)
  - () (parentheses)
  - \< \> (angle brackets)
  - \[ \] (square brackets)
  - , (comma)
  - & (ampersand)
  - @ (at)
  - : (colon)
  - ? (question mark)
  - % (percent sign)
  - / (forward slash)



>

## Examples

**View all targeting keys**

``` pre
$ curl -b cookies 'https://api.appnexus.com/targeting-key'

{
    "targeting-keys": [
        {
            "id": 7,
            "type": "string",
            "name": "key1",
            "label": null,
            "state": "active",
            "created_on": "2016-08-26 06:29:29",
            "last_modified": "2016-08-26 06:29:29"
        },
        {
            "id": 11,
            "type": "string",
            "name": "testkey",
            "label": null,
            "state": "active",
            "created_on": "2016-08-26 06:30:37",
            "last_modified": "2016-08-26 06:30:37"
        },
        {
            "id": 12,
            "type": "string",
            "name": "testkey3",
            "label": "This is a test",
            "state": "active",
            "created_on": "2016-08-26 08:04:42",
            "last_modified": "2016-08-26 08:15:02"
        }
    ]...
}
```

**View a specific targeting key**

``` pre
$ curl -b cookies 'https://api.appnexus.com/targeting-key?id=12'
 
{
    "targeting-key": {
        "id": 12,
        "type": "string",
        "name": "testkey3",
        "label": "This is a test",
        "state": "active",
        "created_on": "2016-08-26 08:04:42",
        "last_modified": "2016-08-26 08:15:02"
    }...
}
```

**Add a targeting key**

``` pre
$ cat create_targeting_key.json
{
    "targeting-key": {
        "name": "testkey4",
        "type": "string"
    } 
}
 
$ curl -b cookies -H "Content-Type:application/json" -X POST -d '@create_targeting_key.json' 'https://api.appnexus.com/targeting-key'
```

**Modify a targeting key**

``` pre
$ cat update_targeting_key.json
{
    "targeting-key": {
        "name": "newtestkey3",
        "label": "This is a test"
    } 
}
 
$ curl -b cookies -H "Content-Type:application/json" -X PUT -d @update_target_key.json 'https://api.appnexus.com/targeting-key?id=12'
```

**Filter targeting keys by name**

``` pre
$ curl -b cookies 'https://api.appnexus.com/targeting-key?name=key1,key2'

{
    "targeting-keys": [
        {
            "id": 7,
            "type": "string",
            "name": "key1",
            "label": null,
            "state": "active",
            "created_on": "2016-08-26 06:29:29",
            "last_modified": "2016-08-26 06:29:29"
        },
        {
            "id": 8,
            "type": "string",
            "name": "key2",
            "label": null,
            "state": "active",
            "created_on": "2016-08-26 06:30:37",
            "last_modified": "2016-08-26 06:30:37"
        }
    ]...
} 
```

**Search within a name or label**



This example searches for the string "car" anywhere within the **name**
or **label** fields.

``` pre
$ curl -b cookies 'https://api.appnexus.com/targeting-key?search=car'

{
    "targeting-keys": [
        {
            "id": 1,
            "type": "string",
            "name": "bluecar",
            "label": null,
            "state": "active",
            "created_on": "2016-08-26 06:29:29",
            "last_modified": "2016-08-26 06:29:29"
        },
        {
            "id": 2,
            "type": "string",
            "name": "key5",
            "label": "Scary values",
            "state": "active",
            "created_on": "2016-08-26 06:29:29",
            "last_modified": "2016-08-26 06:29:29"
        },
        {
            "id": 3,
            "type": "string",
            "name": "car",
            "label": null,
            "state": "active",
            "created_on": "2016-08-26 06:30:37",
            "last_modified": "2016-08-26 06:30:37"
        }
    ]...
} 
```

**Sort by last modified date**





You can sort your results by **id**, **name**, **label**,
**created_on**, or **last_modified**. You can sort in ascending
(**asc**) or descending (**desc**) order.

``` pre
$ curl -b cookies 'https://api.appnexus.com/targeting-key?sort=last_modified.asc'

{
    "targeting-keys": [
        {
            "id": 7,
            "type": "string",
            "name": "key1",
            "label": null,
            "state": "active",
            "created_on": "2016-08-26 06:29:29",
            "last_modified": "2016-08-26 06:29:29"
        },
        {
            "id": 10,
            "type": "string",
            "name": "akey",
            "label": null,
            "state": "active",
            "created_on": "2016-08-26 04:45:07",
            "last_modified": "2016-08-26 12:52:29"
        },
        {
            "id": 8,
            "type": "string",
            "name": "key2",
            "label": null,
            "state": "active",
            "created_on": "2016-08-26 06:30:37",
            "last_modified": "2016-08-30 10:34:37"
        }
    ]...
} 
```

**Delete a targeting key**





Deleting a targeting key will automatically delete all values under that
key.

``` pre
$ curl -b cookies -X DELETE 'https://api.appnexus.com/targeting-key?id=12'
```





>

## Related Topics



- <a
  href="targeting-value-service.md"
  class="xref" target="_blank">Targeting Value Service</a>
- <a
  href="custom-key-value-targeting.md"
  class="xref" target="_blank">Custom Key Value Targeting</a>








