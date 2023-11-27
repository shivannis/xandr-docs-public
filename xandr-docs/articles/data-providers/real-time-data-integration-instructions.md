---
Title : Real Time Data Integration Instructions
Description : Although the configuration is slightly different from regular bidders
ms.custom : data-providers
ms.date : 10/28/2023
that are actually purchasing media, data providers with real time
integrations are set up as "bidders" in our system.  Once your data
---


# Real Time Data Integration Instructions



Although the configuration is slightly different from regular bidders
that are actually purchasing media, data providers with real time
integrations are set up as "bidders" in our system.  Once your data
provider bidder has been created and you've received credentials, you
can begin configuring it with the below steps.



## Using the Impression Bus API (api.adnxs.com), you should complete the following steps:

**Step 1**. Use your API credentials to <a
href="xandr-bidders/authentication-service.md"
class="xref" target="_blank">authenticate</a>.

**Step 2**. You must set your ACL settings so as to accept
Xandr's impression bus IP ranges. Make sure to
allow IP ranges from the datacenters where you are listening to traffic
and exclusively allowlist impression bus IPs (contact your
Xandr Account Manager for a list of
Xandr-specific ACLs). Please remember to allow
both NYM1 and NYM2 IP ranges if you are in the NY datacenter and to
allow AMS3 and FRA1 IP ranges if you are in the AMS datacenter.

**Step 3**. <a
href="xandr-bidders/legacy-bidder-profile-service.md"
class="xref" target="_blank">Create your parent profile through the API
Bidder Profile Service</a>. The profile will allow you to pre-filter
traffic by parameters such as country, seller, and overall percentage.
For testing purposes, it is recommended that you set the
`passthrough_percent` field to something small like 5% until you are
ready to take in a larger amount. Data provider bidders cannot have
child profiles, they can only have a single parent profile.

**Step 4.** Configure your bidder by setting the `bid_uri` (endpoint for
bid requests), `ready_uri` (endpoint for ready requests), and
`parent_profile_id` fields. The `parent_profile_id` should be the ID of
the profile you created in step 3. The other bidder object fields
(`notify_uri`, `pixel_uri`, `click_uri`, etc) should not be set as they
do not apply to data providers.



<b>Tip:</b> Ensure that you include at least
one of our macros in your `bid_uri`. For a complete list of available
macros, see Xandr <a
href="xandr-macros-for-data-providers.md"
class="xref" target="_blank">Macros for Data Providers</a>.



**Step 5.** Add at least one bidder instance.



<b>Tip:</b> In production, at least one bidder
instance must be registered with each datacenter for which you would
like to see traffic.



**Step 6**. Create segments using the <a
href="xandr-api/segment-service.md"
class="xref" target="_blank">Segment Service</a>. The `code` field is
what you will return in your bid response. You may also create segments
in our <a href="https://bidder.xandr.com/login" class="xref"
target="_blank">Bidder UI</a> on the Segments tab. Please note that you
may only create segments in your own member's seat.

**Step 7.** Begin responding to ready requests with a 1 and to bid
requests with segment codes. If you cannot respond within 8-10ms or do
not have any segments for a given impression, respond with a new line:

- Ready requests: Respond with `'1\n'` 
- Bid requests: Respond with `'segmentCode1\nsegmentCode2\n' or '\n'` 



<b>Tip:</b> As a guiding principle your bidder
should seek to approach a 0% timeout rate. To achieve this it is very
important that your bidder respond to ALL bid requests (with codes or
with a new line) within approximately 7 milliseconds to account for
jitter.



**Step 8.** Confirm that your integration is working correctly by
looking at metrics in our
<a href="https://bidder.xandr.com/login" class="xref"
target="_blank">Bidder UI</a>.

**Step 9.** Share your segments with clients using the <a
href="member-data-sharing-service.md"
class="xref" target="_blank">Member-Data-Sharing Service.</a>

**Step 10.** Ongoing: Monitor your metrics in the
<a href="https://bidder.xandr.com/login" class="xref"
target="_blank">bidder UI</a> on the Metrics tab.





## Other Considerations



- Given the required response time of 10ms or less, real time data
  providers should consider co-locating within data centers used by
  Xandr to reduce latency and ensure the
  response times are 10ms or less.
- Real Time Data Provider integration usually takes multiple months to
  complete. We encourage prospective data providers to take that into
  account before starting integration with
  Xandr.







## Related API Services



- <a
  href="xandr-bidders/authentication-service.md"
  class="xref" target="_blank">Auth Service</a>
- <a
  href="xandr-bidders/bidder-service.md"
  class="xref" target="_blank">Bidder Service</a>
- <a
  href="xandr-bidders/bidder-instance-service.md"
  class="xref" target="_blank">Bidder Instance Service</a>
- <a
  href="xandr-api/segment-service.md"
  class="xref" target="_blank">Segment Service</a>
- <a
  href="member-data-sharing-service.md"
  class="xref" target="_blank">Member Data Sharing Service</a>








