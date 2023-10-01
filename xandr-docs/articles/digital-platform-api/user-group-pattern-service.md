---
Title : User Group Pattern Service
Description : The User Group Pattern Service allows you to divide a hypothetical
audience into up to five discrete buckets, each bucket defined to cover
a percentage of total users. The most common use case for doing this is
---


# User Group Pattern Service



The User Group Pattern Service allows you to divide a hypothetical
audience into up to five discrete buckets, each bucket defined to cover
a percentage of total users. The most common use case for doing this is
defining user groups for A/B testing of campaign targeting strategies.
See "Test and Control Targeting" in 
documentation for more information (customer login required).



Note: It is important to note that a
pattern does not perform any actual targeting; it simply helps you
calculate user group targeting values that you can manually apply to
your campaign profiles.



Here's the general process:

1.  You create a JSON file that defines your pattern.
2.  You make the `POST` request shown below.
3.  The response includes `usergroup_target` values for your pattern.
    You update the relevant profiles with these values (see
    `user_group_targets` in the
    <a href="profile-service.html" class="xref">Profile Service</a> for
    more details).



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000320b__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000320b__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000320b__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__2">https://api.<span
class="ph">appnexus.com/usergroup-pattern?id=USER_GROUP_PATTERN_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000320b__entry__3">View
a specific user group pattern</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__2">https://api.<span
class="ph">appnexus.com/usergroup-pattern</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000320b__entry__3">View
all of your user group patterns</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__2">https://api.<span
class="ph">appnexus.com/usergroup-pattern</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000320b__entry__3">Add
a new user group pattern</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000320b__entry__13"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000320b__entry__14" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-0000320b__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__13"><code
class="ph codeph">cookieless</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__14">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000320b__entry__15">If
true, the first user group in the <code class="ph codeph">groups</code>
array will be set to include cookieless users. By default, this is set
to <code class="ph codeph">false</code> because you cannot track clicks
or conversions for cookieless users and, therefore, cannot test
performance on them.
<p><strong>Required on</strong>: <code class="ph codeph">POST</code></p>
<strong>Default</strong>: <code class="ph codeph">false</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__13"><code
class="ph codeph">groups</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__14">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000320b__entry__15">The
user groups in the pattern. No more than five groups can be included.
See Groups below for more details.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__13"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000320b__entry__15">The
ID of the user group pattern.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__13"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__14">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000320b__entry__15">The
date on which the user group pattern was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__13"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__14">in</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000320b__entry__15">The
member to which the user group pattern belongs.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__13"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__14">string (255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000320b__entry__15">The
name of the user group pattern.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
</tbody>
</table>

**Groups**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000320b__entry__34"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000320b__entry__35" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-0000320b__entry__36"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__34"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__35">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000320b__entry__36">The
ID of the user group.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__34"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__35">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000320b__entry__36">The
name of the user group.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__34"><code
class="ph codeph">percent</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__35">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000320b__entry__36">The
percent of users that this group will target. The total for all user
groups must add up to 100%.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__34"><code
class="ph codeph">usergroup_target</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__35">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000320b__entry__36">This object is returned on <code
class="ph codeph">POST</code> and <code class="ph codeph">GET</code> and
specifies the information that you would use in the <code
class="ph codeph">user_group_targets</code> array of a <a
href="profile-service.html" class="xref">profile</a>. See the example
below for formatting.</td>
</tr>
</tbody>
</table>





## Examples

**Add a new user group pattern**

``` pre
$ cat pattern
{
    "usergroup-pattern": {
        "name": "Test pattern",
        "member_id": 1066,
        "cookieless": false,
        "groups": [
            {
                "name": "Group 1",
                "percent": 25
            },
            {
                "name": "Group 2",
                "percent": 25
            },
            {
                "name": "Group 3",
                "percent": 25
            },
            {
                "name": "Group 4",
                "percent": 25
            }
        ]
    }
}
$ curl -b cookies -c cookies -X POST -d @pattern 'https://api.appnexus.com/usergroup-pattern'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 43,
        "start_element": 0,
        "num_elements": 100,
        "usergroup-pattern": {
            "id": 43,
            "member_id": 1066,
            "name": "Test pattern",
            "cookieless": false,
            "groups": [
                {
                    "id": 1,
                    "name": "Group 1",
                    "percent": 25,
                    "usergroup_target": {
                        "include_cookieless_users": false,
                        "groups": [
                            {
                                "low": 0,
                                "high": 24
                            }
                        ]
                    }
                },
                {
                    "id": 2,
                    "name": "Group 2",
                    "percent": 25,
                    "usergroup_target": {
                        "include_cookieless_users": false,
                        "groups": [
                            {
                                "low": 25,
                                "high": 49
                            }
                        ]
                    }
                },
                {
                    "id": 3,
                    "name": "Group 3",
                    "percent": 25,
                    "usergroup_target": {
                        "include_cookieless_users": false,
                        "groups": [
                            {
                                "low": 50,
                                "high": 74
                            }
                        ]
                    }
                },
                {
                    "id": 4,
                    "name": "Group 4",
                    "percent": 25,
                    "usergroup_target": {
                        "include_cookieless_users": false,
                        "groups": [
                            {
                                "low": 75,
                                "high": 99
                            }
                        ]
                    }
                }
            ],
            "last_modified": "2011-12-13 20:18:02"
        }
    }
}
```

**View user group pattern 43**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/usergroup-pattern?id=40'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "usergroup-pattern": {
            "id": 43,
            "member_id": 1066,
            "name": "Test pattern",
            "cookieless": false,
            "groups": [
                {
                    "id": 1,
                    "name": "Group 1",
                    "percent": 25,
                    "usergroup_target": {
                        "include_cookieless_users": false,
                        "groups": [
                            {
                                "low": 0,
                                "high": 24
                            }
                        ]
                    }
                },
                {
                    "id": 2,
                    "name": "Group 2",
                    "percent": 25,
                    "usergroup_target": {
                        "include_cookieless_users": false,
                        "groups": [
                            {
                                "low": 25,
                                "high": 49
                            }
                        ]
                    }
                },
                {
                    "id": 3,
                    "name": "Group 3",
                    "percent": 25,
                    "usergroup_target": {
                        "include_cookieless_users": false,
                        "groups": [
                            {
                                "low": 50,
                                "high": 74
                            }
                        ]
                    }
                },
                {
                    "id": 4,
                    "name": "Group 4",
                    "percent": 25,
                    "usergroup_target": {
                        "include_cookieless_users": false,
                        "groups": [
                            {
                                "low": 75,
                                "high": 99
                            }
                        ]
                    }
                }
            ],
            "last_modified": "2011-12-13 20:18:02"
        }
    }
}
```






