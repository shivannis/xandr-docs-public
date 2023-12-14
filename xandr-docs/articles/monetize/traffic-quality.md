---
Title : Traffic Quality
Description : Xandr makes every effort to search for sellers,
ms.date: 10/28/2023
publishers, placements, or domains that are seeing illegitimate
conversion or click rates. We continue to improve the automated and
---


# Traffic Quality



Xandr makes every effort to search for sellers,
publishers, placements, or domains that are seeing illegitimate
conversion or click rates. We continue to improve the automated and
manual processes of analysis by which we patrol the inventory that runs
through our platform. If you have specific questions on how our Traffic
Quality team operates, please reach out to your
Xandr representative.

This page describes what to do if you discover suspicious traffic
affecting your business and answers some frequently asked questions
about traffic quality.



<b>Note:</b> A campaign should have at least
10,000 impressions on a given slice of inventory in order for the CTR or
conversion rate numbers to be considered significant (see <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Online Advertising and Ad Tech Glossary</a>
for more information on these terms). We define a "slice of inventory"
for this purpose as any given combination of publisher, placement,
domain, etc.



Investigate and Report Suspicious Traffic

If you believe that you are serving on inventory with artificially
inflated performance rates, our
<a href="https://help.xandr.com/" class="xref" target="_blank">support
team</a> is happy to investigate. Before submitting a support request,
please confirm the issue and narrow down the scope as much as possible
by following the steps below.

Step 1. Provide a high-level description of the issue

- What is the issue and what objects does it affect? For example, which
  advertisers or campaigns are affected?

Step 2. Determine the time range of the incident

- Please include when the observed behavior began and if it is still
  happening.
- Note that historical changes in performance are far more difficult to
  diagnose as the behavior can no longer be observed live.

Step 3. Run an Analytics Report, breaking results out by various
dimensions

See
<a href="network-analytics-report.md" class="xref">Network Analytics
Report</a> for details.

- Is the inflated performance specific to a member, publisher, or
  placement?
- Is it specific to a creative or creative size?
- Is it specific to a geographic area?

Step 4. Check the setup of your creatives

- Is click tracking set up properly? For instructions
  on checking your setup, see <a href="click-tracking.md" class="xref"
  title="Click tracking serves many useful purposes within the ad serving industry as a whole. For Xandr, click tracking is necessary for optimizing to CPC and CPA goals, for bidding CPC and CPA, and for measuring a campaign&#39;s success.">Click
  Tracking</a>.
- Did your advertiser set up their pixels correctly? Are there duplicate
  pixels on an advertiser's page?

Step 5. Run a Site Domain Performance report and note the sites where
the behavior is happening

See <a href="site-domain-performance.md" class="xref">Site Domain
Performance</a> for details.

- If the behavior is specific to a limited set of domains, inspect the
  domains to see if there is an explanation.

Step 6. Send Support your findings

After completing the above steps, if you believe you have isolated a
specific case, send your findings to
<a href="https://help.xandr.com" class="xref"
target="_blank">support</a>.

This should include the following:

- Demand-side object data from your line items and campaigns, grouped by
  day over the affected time range.
- Remember to include relevant performance metrics (clicks & CTR, conv
  rate & total conversions).

Frequently Asked Questions

This section is intended to help you understand our monitoring and
security systems, and any general questions you have about how we
respond or regulate unusual activity on the
Xandr Platform.

Does Xandr allow bidders/advertisers to bid on
ad requests where IP addresses are owned by cloud providers such as
Amazon Web Services or Rackspace?

We block some cloud providers but not all because some international
customers use various cloud providers as a proxy. This is temporary
until they fully migrate to our platform.

Does Xandr allow bidder/advertisers to bid on ad
requests where IP addresses are listed on the IAB's spider list?

No. We subscribe to the
<a href="http://www.iab.net/1418/spiders" class="xref"
target="_blank">IAB bots and spiders list</a>, so bots that are declared
in their user agents will not be bid on.

Does Xandr allow bidders/advertisers to bid on
ad requests where the UserAgent is not a known standard browser?

We have a list of banned user agents. However, due to the rapid pace of
change for many user agents, we can't guarantee we're blocking all
unsuitable agents. If you see a suspect user agent, please let us know.

Does Xandr have any detection for 'duplicate'
clicks?

We de-duplicate clicks on a particular ad impression in our data
pipeline.

Can I get Xandr to place on my blocklist a
specific IP address or domain?

We're happy to investigate but can't guarantee that action will be
taken. Abnormal performance you report may not be reflected across the
broader platform.




