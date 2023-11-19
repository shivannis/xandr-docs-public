---
Title : Bidder Profile Migration Guide
Description : Bidder Profiles (both the legacy Profile Service and Enhanced Bidder
ms.date : 10/28/2023
Profiles) allow you to filter traffic you receive from
Xandr. This profile migration guide helps you
---


# Bidder Profile Migration Guide



Bidder Profiles (both the legacy Profile Service and Enhanced Bidder
Profiles) allow you to filter traffic you receive from
Xandr. This profile migration guide helps you
migrate your setup from the legacy Bidder Profiles over to Enhanced
Bidder Profiles.



<b>Note:</b> **Step 4** on this page is only
relevant if you received a Breaking Change email communication about the
profile migration. If you did not, please contact your account manager
instead.

Breaking Change Notice: If You Don't Complete the Migration:

On October 4th, 2019, we will enable your bidder for Enhanced Bidder
Profiles, at which point your new profile(s) will control how you
receive traffic, and your legacy profiles will be deprecated. If you do
not update your Enhanced Bidder Profiles before this date, by default
your bidder will have no inventory restrictions configured.





## Migration Process Overview

1.  Get the current state through legacy Profile Service API
    (recommended) or legacy Bidder UI. (0.25~0.5 hours)
2.  Understand the changes and re-evaluate the filters based on your
    business needs. (0.5~1 hours)
3.  Set up Enhanced Bidder Profiles in new Bidder Platform UI
    (recommended) or via new Bidder Profile Service. (0.5~1 hours)
4.  Contact Support to flip the switch from using legacy Profiles to
    Enhanced Bidder Profiles. (~1 business day)

Your new Enhanced Bidder Profile configuration in
 or API does NOT impact the traffic flow until
you complete the Step 4 before May 21st, 2019.





## Migration Process

**Step 1: Get the Current State (0.25~0.5 hours)**

There are two ways to check the current state. We recommend the API
method since the legacy UI may not show all of your targeting
parameters.



<b>Tip:</b> Understanding the Relationship
Between Parent & Child Profile in Legacy Bidder Profile

In legacy Bidder Profiles, there are parent profile and (optional) child
profile(s). All incoming traffic from Xandr
must meet the conditions in the parent profile first. In addition, the
traffic must pass one of the child profiles if your bidder has active
child profiles. To summarize, traffic is sent when it meets the criteria
in
`(Parent Profile) AND (Child Profile 1 OR Child Profile 2 OR ... OR Child Profile N)`.

Example:

- If you include the United States in your parent profile, include the
  Mobile App supply type in your child profile 1, and include the Mobile
  Web supply type in your child profile 2, your bidder will receive both
  US mobile app traffic (through child profile 1) and US mobile web
  traffic (through child profile 2). Your bidder will not receive any US
  Desktop traffic or any non-US traffic.

For more information, please refer to the legacy <a
href="bidder-profile---faq.md"
class="xref" target="_blank">Bidder Profile FAQ</a>.



Method 1: Using API (Recommended)

Overview

- Get the active profile objects through Bidder Service API: GET
  bidder/\[bidder id\].
- For all active profile objects, GET profile/\[profile id\] through
  legacy Bidder Profile Service API.
- Summarize the results.

Step 1.1: Get the active profile objects through Bidder Service API: GET
bidder/\[bidder id\].

Active parent profile id is in the `parent_profile_id` field, and active
child profile ids are in the `child_profiles` array.

Reference: <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a> and
<a href="bidder-service.md" class="xref">Bidder Service</a>

**Example**

``` pre
-> curl -b cookie -c cookie -s "https://api.adnxs.com/bidder/129" # 129 is a sample bidder ID.
{
    "response": {
        "bidder": {
            ...
            "parent_profile_id": 12345,
            "child_profiles": [
                {
                    "id": 34567
                },
                {
                    "id": 56789
                }
            ],
            ...
        }
    }
}
```

Step 1.2: For all active profile objects, GET profile/\[profile id\]
through legacy Bidder Profile Service API.

Each profile has an allowlist and/or blocklist of items. There are
usually “action” and “targets” per member, country, etc.

- "...\_action" can be set to “include” or “exclude”.
- "...\_targets" can have a list of IDs for seller member, country, etc.

Reference: Legacy
<a href="legacy-bidder-profile-service.md" class="xref">Bidder Profile
Service</a>

**Example**

``` pre
-> curl -b cookie -c cookie -s "https://api.adnxs.com/profile/129/12345" # 129 is a sample bidder id and 12345 is a sample bider profile ID.
{
    "response": {
        "profile": {
            "country_action": "include",
            "country_targets": [
                {
                    "active": true,
                    "code": "US",
                    "id": 233,
                    "name": "United States"
                }
            ],
            ...
        }
    }
}
```

Step 1.3: Summarize the results.

Remember to evaluate the parent & child profile logic: traffic is sent
when it meets the criteria in
`(Parent Profile) AND (Child Profile 1 OR Chile Profile 2 OR ... OR Child Profile N)`.

There are multiple deprecated fields in the legacy Profile API service.
We recommend you only focus on these targetable fields below. There is a
guide to which exact fields to look at in the Mapping of Legacy To
Enhanced Bidder Profile Fields section on this page.

To make it easier to set up the new Enhanced Bidder Profiles, for each
of these fields, list included/excluded attributes:

- Seller Members
- Countries
- Domain Lists
- Sizes
- Supply Types
- Inventory Attributes
- Known Users Only (<b>Note:</b> if you're listening to known users only, you
  have a 0% passthrough rate in your bidder profile.)
- Non-Audited URL Action



<b>Tip:</b> What is
AppNexus Direct?

Depending on your legacy profile setup, Xandr's
direct supply may be included in your profile object, in addition to
your included seller members. For more information, see: <a
href="xandr-monetize-supply-for-external-demand-partners.md"
class="xref" target="_blank">Microsoft Monetize
Supply for External Demand Partners</a>.

In the new Bidder Platform UI, you will be able to see which seller
members belong to Xandr's "direct" exchange
group.

How to pull the domains in your domain list

If you would like to review the domains in your domain list, you can get
or edit the list via the domain-list API service:
<a href="domain-list-service.md" class="xref">Domain List Service</a>



Method 2: Using the legacy bidder UI

Overview

- See the current filters in each bidder profile.
- Summarize the results.

Step 1.1: See the current filters in each bidder profile.

Go to <a href="https://bidder.adnxs.net/" class="xref"
target="_blank">https://bidder.adnxs.net/</a>
and log in with your bidder user credentials. If you cannot log in,
check with your company's integrations team first and please contact
Xandr Support.

Navigate to the Profiles tab on the left. You can see the parent profile
setup.

Non-italic child profiles are currently active. If you click on a child
profile, you can see the profile setup.

Step 1.2: Summarize the results.

Remember to evaluate the parent & child profile logic: All incoming
traffic from Xandr must meet the conditions in
the parent profile first; in addition, the traffic must pass one of the
child profiles if you have child profiles set up.

To make it easier to set up the new Enhanced Bidder Profiles, for each
of these fields, list included/excluded attributes:

- Seller Members
- Countries
- Domain Lists
- Sizes
- Supply Types
- Inventory Attributes
- Known Users Only (<b>Note:</b> if you're listening to known users only, you
  have a 0% passthrough rate in your bidder profile.)
- Non-Audited URL Action



<b>Tip:</b> What is
AppNexus Direct?

You may not see it in the legacy Bidder UI, but in addition to the
seller member targeting in a profile, seller members from
Xandr's direct supply are included in a profile.
For more information, see: <a
href="xandr-monetize-supply-for-external-demand-partners.md"
class="xref" target="_blank">Microsoft Monetize
Supply for External Demand Partners</a>.

In the new Bidder Platform UI, you will be able to see which seller
members belong to Xandr's "direct" exchange
group.

How to pull the domains in your domain list

If you would like to review the domains in your domain list, you can get
or edit the list via the domain-list API service:
<a href="domain-list-service.md" class="xref">Domain List Service</a>



  
**Step 2: Understand the Changes and Re-evaluate the Filters (0.5~1
hours)**

Enhanced Bidder Profiles offers the following benefits:

- Flat Hierarchy: The parent and child profile model has been removed
- Ad Types: You can now easily target the four main ad types you wish to
  receive: Banner, Video, Native, Audio
- Exchanges: We have grouped seller members into Exchanges for easier
  targeting
- Simplified Profile: We have narrowed down the profile to only relevant
  fields for your business
- New Bidder Platform UI: We have built a new UI for you to manage and
  maintain your profiles. Additional capabilities will be added to this
  UI throughout 2019.

Please review these pages first: <a
href="changelog-for-enhanced-bidder-profiles.md"
class="xref" target="_blank">Change Log for Enhanced Bidder Profiles</a> and <a
href="frequently-asked-questions--faq--for-enhanced-bidder-profiles.md"
class="xref" target="_blank">Frequently Asked Questions (FAQ) for
Enhanced Bidder Profiles</a>.

**Step 3: Set Up Enhanced Bidder Profiles (0.5~1 hours)**



<b>Note:</b> Enhanced Bidder Profile setup in
new Bidder Profile Service API or new Bidder Platform UI does NOT affect
the traffic flow from Xandr until you complete
Step 4: Contact Xandr Support and we flip the
switch in the backend before May 21st, 2019.



There are two ways to set up Enhanced Bidder Profiles. We recommend
using the new Bidder Platform UI over API.

- Bidder Platform User Interface
  (Recommended): <a href="https://bidder.appnexus.com/login" class="xref"
  target="_blank">https://bidder.<span
  class="ph">appnexus.com/login</a>
  - <a
    href="bidder-platform-user-interface.md"
    class="xref" target="_blank">Bidder Platform User Interface</a>
  - <a
    href="profiles-screen.md"
    class="xref" target="_blank">Profiles Screen</a>
- New <a
  href="enhanced-bidder-profiles.md"
  class="xref" target="_blank">Bidder Profile Service API</a>: 

**Using Multiple Profiles in Enhanced Bidder Profile**

Impression must meet requirements of a single profile to be sent to your
bidder. If you create multiple profiles, the logic between the profiles
is OR. In other words, impression is sent when it meets the criteria
in `(Profile 1 OR Profile 2 OR ... Profile N).`

**Mapping of Legacy To Enhanced Bidder Profile Fields**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001e76__entry__1"
class="entry colsep-1 rowsep-1">Targeting</th>
<th id="ID-00001e76__entry__2" class="entry colsep-1 rowsep-1">Legacy
Bidder Profile API fields</th>
<th id="ID-00001e76__entry__3" class="entry colsep-1 rowsep-1">Enhanced
Bidder Profile UI &amp; API fields</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__1">Seller Members/Groups</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__2"><code
class="ph codeph">member_targets</code> and <code
class="ph codeph">seller_member_group_targets</code> fields in API</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__3">Exchanges and Members tab in <span
class="ph">. All seller members belong to one of the three
Exchanges, and you can see which seller members belong to each Exchange
in .
<p><code class="ph codeph">exchanges</code> field in API (For
member-level control, use <code
class="ph codeph">excluded_members</code> and <code
class="ph codeph">included_members</code> arrays under <code
class="ph codeph">exchanges</code>)</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__1">Countries</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__2"><code
class="ph codeph">country_action</code> field has <code
class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><code class="ph codeph">country_targets</code> array has a list of
countries.</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__3">Countries tab in <span
class="ph">.
<p><code class="ph codeph">countries</code> field in API. (Use <code
class="ph codeph">action</code> and <code
class="ph codeph">targets</code> under <code
class="ph codeph">countries</code>. For targets, use ids retrieved from
<a
href="country-service.md"
class="xref" target="_blank">Country Service</a>.)</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__1">Domain Lists</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__2"><code
class="ph codeph">domain_list_action</code> field has <code
class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><code class="ph codeph">domain_list_targets</code> array has a list
of domain list. Use <a
href="domain-list-service.md"
class="xref" target="_blank">Domain List Service</a> to create, view, or
edit domains.</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__3">Domain Lists tab in <span
class="ph"> (To edit domains, use <a
href="domain-list-service.md"
class="xref" target="_blank">Domain List Service</a>).
<p><code class="ph codeph">domain_lists</code> field in API. (Use <code
class="ph codeph">action</code> and <code
class="ph codeph">targets</code> under <code
class="ph codeph">domain_lists</code>. For targets, use ids retrieved
from <a
href="domain-list-service.md"
class="xref" target="_blank">Domain List Service</a>.)</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__1">Sizes (and Ad Types)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__2"><code
class="ph codeph">size_targets</code> array (include only).</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001e76__entry__3">Ad
Types tab in . You can first select Ad Types to
include. If you include Banner ad type, you can select sizes to include.
<p><code class="ph codeph">ad_types</code> field in API. For each ad
type, set <code class="ph codeph">action</code> to <code
class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>. For <code
class="ph codeph">banner</code> ad type, you can include sizes in the
<code class="ph codeph">sizes</code> array.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__1">Supply Types</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__2"><code
class="ph codeph">supply_type_action</code> field has <code
class="ph codeph">include</code> or <code
class="ph codeph">exclude</code>.
<p><code class="ph codeph">supply_type_targets</code> array has web,
mobile web, or mobile app.</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__3">Supply Types tab in <span
class="ph">.
<p><code class="ph codeph">supply_types</code> field in API. (Use <code
class="ph codeph">action</code> and <code
class="ph codeph">targets</code> under <code
class="ph codeph">supply_types</code>. For targets, possible values are
<code class="ph codeph">web</code>, <code
class="ph codeph">mobile_web</code>, and <code
class="ph codeph">mobile_app</code>.)</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__1">Inventory Attributes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__2"><code
class="ph codeph">use_inventory_attribute_targets</code> has true or
false.
<p><code class="ph codeph">inventory_attribute_targets</code> array has
a list of inventory attributes (include only).</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__3">Sensitive Attributes tab in <span
class="ph">.
<p><code class="ph codeph">inventory_attributes</code> field in API.
(Action is include only. For targets, use ids retrieved from <a
href="inventory-attribute-service.md"
class="xref" target="_blank">Inventory Attribute Service</a>.)</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__1">Receiving Known Users Only</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001e76__entry__2">If
<code class="ph codeph">passthrough_percent</code> field has 0 and your
Bidder object has <code
class="ph codeph">always_send_owned_segments</code> set to true, you're
listening to known users only.
<p>Alternatively, your bidder profile may include a segment id to target
known users only.</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001e76__entry__3"><div
class="note note_note">
<b>Note:</b> To use this feature, you must be
using/setuid url with Xandr for user matching.

<p>Unknown Users toggle in . Set <code
class="ph codeph">Allow Unknown Users</code> to excluded.</p>
<p><code class="ph codeph">user_not_in_segment_action</code> field in
API. Set to <code class="ph codeph">exclude</code> to listen to known
users only.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__1">Non-Audited URL Action</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__2"><code
class="ph codeph">non_audited_url_action</code> field in API.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001e76__entry__3"><code
class="ph codeph">non_audited_url_action</code> field in API.</td>
</tr>
</tbody>
</table>

**Adjusting Traffic Volume: Passthrough Percent Alternative**

In legacy Bidder Profile, some clients used `passthrough_percent`
to control traffic volume or bid request QPS (query per second).
Enhanced Bidder Profile does not have a volume control feature; instead,
please use the `qps_limit` field in <a
href="bidder-instance-service.md"
class="xref" target="_blank">Bidder Instance</a> to set up a QPS safety
cap per datacenter. To see your current traffic volume, see the Metrics
tab in the legacy bidder
UI: <a href="https://bidder.adnxs.net/metrics" class="xref"
target="_blank">https://bidder.<span
class="ph">adnxs.net/metrics</a>

If you have QPS safety caps in all bidder instances, you have an option
to enable the Optimized Bid Stream feature. All traffic is sent until
your QPS cap is met; when there is more available traffic than your QPS
cap, instead of cutting off the traffic volume randomly to meet your QPS
cap, low priority traffic based on your buying behavior that exceeds
your QPS cap will be cut. For more information, see <a
href="optimized-bid-stream-faq.md"
class="xref" target="_blank">Optimized Bid Stream FAQ</a>. If you're
interested in the feature, please contact your account manager or
Xandr Support.

**Activating a New Bidder Profile**

To activate a new Bidder Profile in API, set the
active field to `true`. You no longer
need to set a profile id in <a
href="bidder-service.md"
class="xref" target="_blank">Bidder Service</a> API to activate a
profile. Once the step 4 below is complete, `parent_profile_id` and
`child_profiles` in Bidder API object will be ignored.

In , you need to click on the Activate button in
the profile screen to activate the profile. Non-italic profiles are
active.

Please activate your new Bidder Profiles before moving onto step 4. Your
Enhanced Bidder Profile setup does not impact the traffic flow until the
backend switch is flipped by Xandr Support in
Step 4 before May 21st, 2019.

**Step 4: Contact Xandr Support to Complete the
Migration (~1 business day)**



<b>Note:</b> This section is only relevant if
you received a Breaking Change email communication about profile
migration. Do not follow this step if you did not. Instead, contact your
account manager.





<b>Warning:</b> Your new Enhanced Bidder
Profile setup does not impact the traffic flow until you complete this
step before May 21st, 2019.



Please open a support ticket. When entering information:

- Category: Select Product Support
- What Can We Help With?: Select External Bidder Integration

**Please use this template for your support ticket:**

I have reviewed and configured Enhanced Bidder Profiles. Please migrate
my profile setup.

1\. Bidder ID and bidder name:

2\. Did you configure using new Bidder Platform UI or API?:

3\. Please provide a brief explanation of the changes from the current
profile setup (if no change, write "N/A"):

**What will happen next?**

Our support specialists will review the legacy and Enhanced Bidder
Profile setup first. If they look good, support specialists will flip
the switch in the backend and send a confirmation note to you. When this
happens, your new Enhanced Bidder Profile configuration will start
taking affect on the traffic flow, and the legacy bidder profile setup
will be ignored.

Please monitor your traffic flow using the Metrics tab in the legacy
bidder UI: <a href="https://bidder.adnxs.net/metrics" class="xref"
target="_blank">https://bidder.<span
class="ph">adnxs.net/metrics</a>. If there is any problem,
support specialists can switch back to the legacy profile setup
immediately (which will take effect on the traffic flow in 5-10
minutes), and you can work on troubleshooting the Enhanced Bidder
Profile setup.

If there's no problem on the traffic flow for a day, your migration is
complete, and the support ticket will be closed.



<b>Tip:</b> Legacy bidder profiles will still
be shown as active in API and in the legacy Bidder UI after the
migration is complete. As long as it's migrated in the backend, the
legacy profile setup is ignored and does not impact the traffic flow.



**If you do not complete Step 4**

On May 21st, 2019, we will enable your bidder for Enhanced Bidder
Profiles, at which point your new profile(s) will control how you
receive traffic, and your legacy profiles will be deprecated. If you do
not update your Enhanced Bidder Profiles before this date, by default
your bidder will have no inventory restrictions configured.






