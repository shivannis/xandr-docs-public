---
Title : Auto Macro Insertion
Description : Xandr offers automated insertion of macros like ${CLICK_URL} and ${CACHEBUSTER} into recognized third-party ad server formats for simplifying creative trafficking, with the option to use an encoded version of ${CLICK_URL}, and manual insertion is possible if automation fails, with support available for specific tag types.
---

# Auto Macro Insertion

When you add or edit third-party creative tags,Xandr automatically inserts the `${CLICK_URL}` and `${CACHEBUSTER}` macros into your creative third-party tags if the third-party ad server's format is recognized, which will allow you to
quickly traffic your creatives.

In some cases, Xandr will replace an ad server macro with a macro specific to Xandr.

**Note:** You can also use the encoded version of the `${CLICK_URL}` macro, such as `${CLICK_URL_ENC}`. For more information, see [Click Tracking](click-tracking.md).

If the Xandr auto-tagger fails to automatically insert the `${CLICK_URL}` and `${CACHEBUSTER}` macros into your third-party tag, you can manually insert them into the appropriate locations. For more information, see [Click Tracking](click-tracking.md). If you don't know which parameter to use when inserting
the macro, contact your client.

## Inserting Macros into Third-Party Tags Automatically

Xandr can automatically insert the `${CLICK_URL}` and `${CACHEBUSTER}` macros into a variety of third-party tags such as Sizmek and Atlas.

**Note:** Xandr can't auto insert the `${CLICK_URL}` and `${CACHEBUSTER}` macros into Google's DDM tags. However, these third-party tags can still be manually inserted.

Feel free to submit a [support ticket](https://help.xandr.com/) if you'd like to have a specific tag type added to our supported list. When creating the support ticket, be sure to provide:

- the name of the ad server that these tags appear on.
- the exact parameters used to traffic the `${CLICK_URL}` and
  `${CACHEBUSTER}` macros.

## Related Topics

- [Creative Macros](creative-macros.md)
- [Supported Creative Macros](supported-creative-macros.md)
