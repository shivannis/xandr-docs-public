---
Title : User Sync
Description : <div id="ast-usersync__p-8bac2bb7-af6c-490e-944d-767728a1a084"
>
Note: This feature is a sub-set of
<a href="set-page-options.html" class="xref">Set Page Options</a> AST
---


# User Sync



<div id="ast-usersync__p-8bac2bb7-af6c-490e-944d-767728a1a084"
>



Note: This feature is a sub-set of
<a href="set-page-options.html" class="xref">Set Page Options</a> AST
API.





<div id="ast-usersync__p-4e6be1cf-02f4-46e2-9e8c-a4f908ed0338"
>

The user sync configuration object offers publishers the control over
the behaviour of AST when it loads the AppNexus user sync script after
completion of an auction. This object is designed to create and/or
update cookies for users with IDs. These cookies provide better
knowledge about the users to DSPs (buyers) and other systems in ad
server. They share information with buyers about the user's interests,
behaviors, and history that enables the buyers to bid on impressions on
the publisher site(s) more efficiently.



Note: The user information collected
here is not PII (personally identifiable information) and the logic used
by the user sync script follows regulatory requirements about sharing
information found within General Data Protection Regulation (GDPR) ,
U.S. Privacy Laws, Global Privacy Platform (GPP) Interactive Advertising
Bureau (IAB) specification. If the user does not provide consent in
their respective regions, then the information is not shared with the ad
server.





The user sync script is loaded by AST after each auction when
`loadTags()` or `refresh()` call is made. By default, the script is
loaded 3 seconds after the auction gets over, but this delay can be
altered according to the publisher's preference.

Although the AST user sync feature is enabled by default in the
publisher's interest, there are options available to disable this
feature if desired. Please see the table below for
`trackingManagement.userSync` settings in
<a href="set-page-options.html" class="xref">Set Page Options</a>:



<table id="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__1"
class="entry align-center colsep-1 rowsep-1">Parameter</th>
<th
id="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__2"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th
id="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__3"
class="entry align-center colsep-1 rowsep-1">Default</th>
<th
id="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__4"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__1"><code
class="ph codeph">syncEnabled</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__2">boolean</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__3">true</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__4"><p>Enables
or disables the logic in AST that loads the <code
class="ph codeph">userSync</code> script after the auction
ends.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__1"><code
class="ph codeph">syncDelay</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__2">number</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__3">3000</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__4">Specifies
the amount of time (in milliseconds) that AST waits after the auction
ends before loading the <code class="ph codeph">userSync</code>
script.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__1"><code
class="ph codeph">publisherId</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__2">number</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__3">none</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__4">Numeric
identifier for the publisher entity used for the auction on this page.
It includes the value that is passed to the <code
class="ph codeph">userSync</code> script, which provides more
information downstream.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__1"><code
class="ph codeph">sellerId</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__2">number</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__3">none</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b__entry__4">Numeric
identifier of the seller entity used for the auction on this page. It
includes the value that is passed to the <code
class="ph codeph">userSync</code> script, which provides more
information downstream.</td>
</tr>
</tbody>
</table>



**Example of how to populate the settings for AST**

<div id="ast-usersync__p-82a98dc0-8e61-4e29-ae96-e5b99ac909ad"
>

``` pre
apntag.setPageOpts({
    trackingManagement: {
        userSync: {
            syncEnabled: true,
            syncDelay: 5000,
            publisherId: 12345,
            sellerId: 123
        }
    }
  });
```






