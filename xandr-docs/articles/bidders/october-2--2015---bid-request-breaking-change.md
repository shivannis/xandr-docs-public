---
Title : October 2, 2015 - Bid Request Breaking Change
Description : We are making a breaking change to the Bid Request.
---


# October 2, 2015 - Bid Request Breaking Change



We are making a breaking change to the Bid Request.

This change will take place 45 days from today, on **November 16,
2015**.

Specifically, we are changing the default `escape_userdata` setting for
pixel requests from `false` (unescaped) to `true` (escaped). This
affects any current bidder who currently is using the unescaped setting
for pixel requests. These bidders must change their configuration to
process escaped data instead of unescaped data.

The `escape_userdata` field controls whether the Impression Bus sends
`userdata_json` as an escaped or unescaped string for three types of
requests: bid requests, click requests, and pixel requests. Changing the
setting for pixel requests ensures that all three requests have the same
behavior.

Read more about the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bid-request.html"
class="xref" target="_blank">Bid Request</a> on our wiki.

For more information about what constitutes a breaking change, please
see our <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/breaking-changes.html"
class="xref" target="_blank">Breaking Changes Policy</a>. If you have
any questions about this change, please reach out to your
AppNexus representative.




