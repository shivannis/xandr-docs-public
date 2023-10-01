---
Title : Operating System Extended Service
Description : This read-only service shows you the list of specific operating system
versions that you can target in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
---


# Operating System Extended Service



This read-only service shows you the list of specific operating system
versions that you can target in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a>.



Tip:

You can also target operating systems as a whole (all versions). To see
the operating systems (Android, Apple iOS, Windows 7, etc.) registered
in the system, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-family-service.html"
class="xref" target="_blank">Operating System Family Service</a>.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002700__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00002700__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00002700__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__2"><a
href="https://api.appnexus.com/operating-system-extended" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/operating-system-extended</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__3">View
all operating systems</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__2"><a
href="https://api.appnexus.com/operating-system-extended?search=SEARCH_TERM"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/operating-system-extended?search=SEARCH_TERM</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__3">View
all operating systems with IDs or names containing certain
characters</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__2"><a
href="https://api.appnexus.com/operating-system-extended?family_id=OS_FAMILY_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/operating-system-extended?family_id=OS_FAMILY_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__3">View
all operating systems within a specific family</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__2"><a
href="https://api.appnexus.com/operating-system-extended?family_name=OS_FAMILY_NAME"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/operating-system-extended?family_name=OS_FAMILY_NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__3">View
all operating systems within a specific family</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__2"><a
href="https://api.appnexus.com/operating-system-extended?id=OPERATING_SYSTEM_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/operating-system-extended?id=OPERATING_SYSTEM_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__3">View
a specific operating system</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__2"><a
href="https://api.appnexus.com/operating-system-extended/meta"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/operating-system-extended/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002700__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002700__entry__23"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002700__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__24">The
Xandr ID of the operating system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__22"><code
class="ph codeph">family</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__23">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__24">The
operating system family, e.g., "Android", "Apple iOS", "Apple Mac/OSX",
etc. See <a
href="operating-system-extended-service.html#ID-00002700__fam"
class="xref">Family</a> below, for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__22"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__23">date</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__24">The
date and time when the operating system entry was last modified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__22"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__24">The
name of the specific operating system version.</td>
</tr>
</tbody>
</table>

**Family**

The `family` object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002700__entry__37"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002700__entry__38"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002700__entry__39"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__37"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__38">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__39">The
Xandr ID of the operating system family.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__37"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002700__entry__38">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002700__entry__39">The
name of the operating system family, e.g., "Android", "Apple iOS",
"Apple Mac/OSX", etc.</td>
</tr>
</tbody>
</table>





## Examples

**View all operating systems**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/operating-system-extended"
{
  "response": {
    "status": "OK",
    "count": 87,
    "start_element": 0,
    "num_elements": 100,
    "operating-systems-extended": [
      {
        "id": 15,
        "name": "Android 2.2 Froyo",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 16,
        "name": "Android 2.2.1 Froyo",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 17,
        "name": "Android 2.2.2 Froyo",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 18,
        "name": "Android 2.2.3 Froyo",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 19,
        "name": "Android 2.3 Gingerbread",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 20,
        "name": "Android 2.3.1 Gingerbread",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 21,
        "name": "Android 2.3.2 Gingerbread",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 22,
        "name": "Android 2.3.3 Gingerbread",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 23,
        "name": "Android 2.3.4 Gingerbread",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 24,
        "name": "Android 2.3.5 Gingerbread",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 25,
        "name": "Android 2.3.6 Gingerbread",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
...
      {
        "id": 95,
        "name": "Windows Phone 7",
        "last_modified": "2013-07-17 13:18:07",
        "family": {
          "id": "7",
          "name": "Microsoft Mobile"
        }
      },
      {
        "id": 96,
        "name": "Windows Phone 7.5",
        "last_modified": "2013-07-17 13:18:07",
        "family": {
          "id": "7",
          "name": "Microsoft Mobile"
        }
      },
      {
        "id": 97,
        "name": "Windows Phone 8",
        "last_modified": "2013-07-17 13:18:07",
        "family": {
          "id": "7",
          "name": "Microsoft Mobile"
        }
      },
      {
        "id": 98,
        "name": "Windows Mobile (all)",
        "last_modified": "2013-07-17 13:18:14",
        "family": {
          "id": "7",
          "name": "Microsoft Mobile"
        }
      },
      {
        "id": 99,
        "name": "Linux x64",
        "last_modified": "2013-07-17 13:18:28",
        "family": {
          "id": "8",
          "name": "Linux"
        }
      },
      {
        "id": 100,
        "name": "Linux i86",
        "last_modified": "2013-07-17 13:18:28",
        "family": {
          "id": "8",
          "name": "Linux"
        }
      },
      {
        "id": 101,
        "name": "Linux arm",
        "last_modified": "2013-07-17 13:18:28",
        "family": {
          "id": "8",
          "name": "Linux"
        }
      }
    ],
  }
}
```

**View all operating systems with names containing certain characters**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/operating-system-extended?search=and"
{
  "response": {
    "status": "OK",
    "count": 32,
    "start_element": 0,
    "num_elements": 100,
    "operating-systems-extended": [
      {
        "id": 15,
        "name": "Android 2.2 Froyo",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 16,
        "name": "Android 2.2.1 Froyo",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 17,
        "name": "Android 2.2.2 Froyo",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 18,
        "name": "Android 2.2.3 Froyo",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 19,
        "name": "Android 2.3 Gingerbread",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 20,
        "name": "Android 2.3.1 Gingerbread",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
...
      {
        "id": 42,
        "name": "Android 4.1.1 Jelly Bean",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 43,
        "name": "Android 4.1.2 Jelly Bean",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 44,
        "name": "Android 4.2 Jelly Bean",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 45,
        "name": "Android 4.2.1 Jelly Bean",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      },
      {
        "id": 46,
        "name": "Android 4.2.2 Jelly Bean",
        "last_modified": "2013-07-17 13:16:44",
        "family": {
          "id": "2",
          "name": "Android"
        }
      }
    ],
  }
}
```

**View all operating systems within a specific family**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/operating-system-extended?family_id=8"
{
  "response": {
    "status": "OK",
    "count": 3,
    "start_element": 0,
    "num_elements": 100,
    "operating-systems-extended": [
      {
        "id": 99,
        "name": "Linux x64",
        "last_modified": "2013-07-17 13:18:28",
        "family": {
          "id": "8",
          "name": "Linux"
        }
      },
      {
        "id": 100,
        "name": "Linux i86",
        "last_modified": "2013-07-17 13:18:28",
        "family": {
          "id": "8",
          "name": "Linux"
        }
      },
      {
        "id": 101,
        "name": "Linux arm",
        "last_modified": "2013-07-17 13:18:28",
        "family": {
          "id": "8",
          "name": "Linux"
        }
      }
    ],
  }
}
```

**View a specific operating system**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/operating-system-extended?id=46"
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "operating-system-extended": {
      "id": 46,
      "name": "Android 4.2.2 Jelly Bean",
      "last_modified": "2013-07-17 13:16:44",
      "family": {
        "id": "2",
        "name": "Android"
      }
    },
  }
}
```






