---
Title : Ad Quality Order of Operations
Description : In every auction, our system must decide which collection of ad quality
settings it will apply to the impression up for bid. This document
---


# Ad Quality Order of Operations



In every auction, our system must decide which collection of ad quality
settings it will apply to the impression up for bid. This document
describes the steps our system goes through to find a collection of ad
quality settings to apply to an impression.

Step 1. Check for Publisher Base and Conditional Rules

Base and conditional rules allow you to dynamically determine which
collection of ad quality settings (i.e., Publisher Template or Custom
Profile) you would like to apply to a particular impression based on
attributes such as creative size, placement, or user frequency.

If any Publisher Base and Conditional Rules are associated with this
publisher, they are checked against the impression in priority order. If
a match is found, the system goes to Check 3 below. Otherwise, it moves
on to Check 2.

For more information, see the section on Publisher Base and Conditional
Rules in
<a href="working-with-publisher-ad-quality.html" class="xref">Working
with Ad Quality</a>, and
<a href="create-publisher-ad-quality-rules.html" class="xref">Create
Publisher Ad Quality Rules</a>.

Step 2. Check for a Publisher Template or Custom Profile

If the publisher has an associated Publisher Template or Custom Profile,
then the settings from that template or profile are applied. For more
information, see
<a href="create-a-publisher-template.html" class="xref">Create a
Publisher Template</a> or
<a href="create-a-custom-profile.html" class="xref">Create a Custom
Profile</a>.

Whether such a template or profile is defined or not, the system goes to
Check 3.

Step 3. Apply the Network Profile

Finally, if a collection of publisher ad quality rules is selected
during Checks 1 and 2, it is applied in addition to the Network Profile.
If no publisher rules or templates were applied, the system defaults to
using only the ad quality settings defined in the Network Profile. For
more information, see
<a href="update-your-network-profile.html" class="xref">Update Your
Network Profile</a>.



Note: Note that only one collection of
publisher ad quality settings (from Check 1 or Check 2) is selected and
applied in addition to the settings defined by the Network Profile.



Related Topics

- <a href="working-with-publisher-ad-quality.html" class="xref">Working
  with Ad Quality</a>
- <a href="explore-publisher-ad-quality.html" class="xref">Explore
  Publisher Ad Quality</a>
- <a href="network-ad-quality-screen.html" class="xref">Network Ad Quality
  Screen</a>
- <a href="update-your-network-profile.html" class="xref">Update Your
  Network Profile</a>
- <a href="create-a-publisher-template.html" class="xref">Create a
  Publisher Template</a>
- <a href="create-a-custom-profile.html" class="xref">Create a Custom
  Profile</a>
- <a href="create-publisher-ad-quality-rules.html" class="xref">Create
  Publisher Ad Quality Rules</a>
- <a href="base-and-conditional-rules.html" class="xref">Base and
  Conditional Rules</a>




