---
Title : RTSS Limitations
Description : <div id="rtss-limitations__note-6fb11a01-6f04-4eec-b4f8-9e51de4e87d7"
class="note warning note_warning">
Warning: Beta Notice
- The Real-Time Signals Service is in Beta, and is subject to change in
the future.
---


# RTSS Limitations





<div id="rtss-limitations__note-6fb11a01-6f04-4eec-b4f8-9e51de4e87d7"
class="note warning note_warning">

Warning: Beta Notice

- The Real-Time Signals Service is in Beta, and is subject to change in
  the future.
- As we transition to open beta, **we will be adding a monthly charge
  for new and existing clients that use RTSS**. For more information,
  please speak to your account manager.





This section describes situations and use cases that don't work well
with RTSS.

<div id="rtss-limitations__section-42eccfa1-8bcc-47cf-8019-1c279cdcc672"
>

## **Target Retrievals via Segment ID**

Currently, there's no way to retrieve all targets associated with a
segment. Please keep track of all targets uploaded to a segment.
Alternatively, you can use the RTSS API service to make GET calls and
check whether a single target belongs to a particular segment.



<div id="rtss-limitations__section-75d6f811-fb07-4f4c-8b0b-a4c876ec843f"
>

## Anti-Targeting

Because of the way RTSS works, exclusion targeting is not a good fit. If
there is a cache miss for a specific target that has not come through on
an impression yet, RTSS looks in the database to see if this target
exists, and then loads it into the cache for the next time it sees that
impression. For that initial impression, RTSS will skip adding the
anti-target segments, and the anti-target will not work. We do not
currently recommend using RTSS in this scenario.






