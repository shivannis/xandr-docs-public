---
Title : Cookie Privacy Settings
Description : This document acts as an overview of the various cookie privacy-related
ms.date: 10/28/2023
settings that are available on the Xandr
platform. Below, you will find information about how to control use of
---


# Cookie Privacy Settings



This document acts as an overview of the various cookie privacy-related
settings that are available on the Xandr
platform. Below, you will find information about how to control use of
cookie data on a given impression. For the purposes of this document,
cookie data refers to information Xandr stores
on a user that is used for segment targeting, frequency capping, and
conversion attribution.

Simple use cases for these settings include:

- If you typically want to use cookie data stored on users, but want the
  ability to not use cookie data when a user has expressed a desire to
  not be tracked:
  - Leave the `enable_cookie_tracking_default` parameter set to `true`
    on the <a
    href="xandr-api/publisher-service.md"
    class="xref" target="_blank">Publisher Service</a> (this is the
    default setting).
  - For any users that do not wish to be tracked, include the
    `use_cookies=0` query string parameter as described in
    <a href="placement-tag-parameters.md" class="xref">Placement Tag
    Parameters</a> so no cookie data will be used or tracked for that
    user.
- If you only want to track or use cookie data on users that explicitly
  provide consent, you could:
  - Set the `enable_cookie_tracking_default` parameter set to `false` on
    the <a
    href="xandr-api/publisher-service.md"
    class="xref" target="_blank">Publisher Service</a>
  - For any users that do provide consent, include the `use_cookies=1`
    query string parameter as described in
    <a href="placement-tag-parameters.md" class="xref">Placement Tag
    Parameters</a> so cookie data will be tracked for those users.
- For third-party creatives, you can have the hosting ad server
  determine whether to set cookies by using the `${USE_COOKIES`} macro
  as described in <a href="creative-macros.md" class="xref"
  title="You can insert creative macros into your creative third-party tags, impression trackers, landing page URLs, and third-party pixels for reporting and optimization purposes.">Creative
  Macros</a>.

For more information, see the linked documentation.

Related Topics

- <a href="placement-tag-parameters.md" class="xref">Placement Tag
  Parameters</a>
- <a href="creative-macros.md" class="xref"
  title="You can insert creative macros into your creative third-party tags, impression trackers, landing page URLs, and third-party pixels for reporting and optimization purposes.">Creative
  Macros</a>
- <a
  href="xandr-api/publisher-service.md"
  class="xref" target="_blank">Publisher Service</a>




