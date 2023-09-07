# User Sync

<div class="body">

<div id="ast-usersync__p-8bac2bb7-af6c-490e-944d-767728a1a084"
class="p">

<div class="note">

<span class="notetitle">**Note:**</span> This feature is a sub-set of
<a href="set-page-options.md" class="xref">Set Page Options</a> AST
API.

</div>

</div>

<div id="ast-usersync__p-4e6be1cf-02f4-46e2-9e8c-a4f908ed0338"
class="p">

The user sync configuration object offers publishers the control over
the behaviour of AST when it loads the AppNexus user sync script after
completion of an auction. This object is designed to create and/or
update cookies for users with IDs. These cookies provide better
knowledge about the users to DSPs (buyers) and other systems in ad
server. They share information with buyers about the user's interests,
behaviors, and history that enables the buyers to bid on impressions on
the publisher site(s) more efficiently.

<div class="note">

<span class="notetitle">**Note:**</span> The user information collected here
is not PII (personally identifiable information) and the logic used by
the user sync script follows regulatory requirements about sharing
information found within General Data Protection Regulation (GDPR) ,
U.S. Privacy Laws, Global Privacy Platform (GPP) Interactive Advertising
Bureau (IAB) specification. If the user does not provide consent in
their respective regions, then the information is not shared with the ad
server.

</div>

</div>

The user sync script is loaded by AST after each auction when
`loadTags()` or `refresh()` call is made. By default, the script is
loaded 3 seconds after the auction gets over, but this delay can be
altered according to the publisher's preference.

Although the AST user sync feature is enabled by default in the
publisher's interest, there are options available to disable this
feature if desired. Please see the table below for
`trackingManagement.userSync` settings in
<a href="set-page-options.md" class="xref">Set Page Options</a>:

<div class="p">

<div class="tablenoborder">

<table id="ast-usersync__table-8997c915-91e7-445a-b863-8cf3556d766b"
class="table" data-cellpadding="4" data-cellspacing="0" data-summary=""
data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col />
<col />
<col />
<col />
</colgroup>
<thead class="thead">
<tr class="header ">
<th id="d154183e101" class="entry cellborder"
style="text-align: center; vertical-align: top;">Parameter</th>
<th id="d154183e104" class="entry cellborder"
style="text-align: center; vertical-align: top;">Type</th>
<th id="d154183e107" class="entry cellborder"
style="text-align: center; vertical-align: top;">Default</th>
<th id="d154183e110" class="entry cellborder"
style="text-align: center; vertical-align: top;">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d154183e101 "><code class="ph codeph">syncEnabled</code></td>
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d154183e104 ">boolean</td>
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d154183e107 ">true</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d154183e110 "><p>Enables or disables the logic in AST that
loads the <code class="ph codeph">userSync</code> script after the
auction ends.</p></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d154183e101 "><code class="ph codeph">syncDelay</code></td>
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d154183e104 ">number</td>
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d154183e107 ">3000</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d154183e110 ">Specifies the amount of time (in milliseconds)
that AST waits after the auction ends before loading the <code
class="ph codeph">userSync</code> script.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d154183e101 "><code class="ph codeph">publisherId</code></td>
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d154183e104 ">number</td>
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d154183e107 ">none</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d154183e110 ">Numeric identifier for the publisher entity used
for the auction on this page. It includes the value that is passed to
the <code class="ph codeph">userSync</code> script, which provides more
information downstream.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d154183e101 "><code class="ph codeph">sellerId</code></td>
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d154183e104 ">number</td>
<td class="entry cellborder"
style="text-align: center; vertical-align: top;"
headers="d154183e107 ">none</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"
headers="d154183e110 ">Numeric identifier of the seller entity used for
the auction on this page. It includes the value that is passed to the
<code class="ph codeph">userSync</code> script, which provides more
information downstream.</td>
</tr>
</tbody>
</table>

</div>

</div>

**Example of how to populate the settings for AST**

<div id="ast-usersync__p-82a98dc0-8e61-4e29-ae96-e5b99ac909ad"
class="p">

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

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Further Reading:**
- [AST References](ast-api-reference.md)

</div>

</div>

</div>
