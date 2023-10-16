---
Title : AST API Reference
Description : This page describes the usage of the functions and variables of
Xandr's seller tag (AST) JavaScript library. For
ms.custom : seller-tag
---


# AST API Reference





This page describes the usage of the functions and variables of
Xandr's seller tag (AST) JavaScript library. For
an example of a page with these functions implemented, see
<a href="set-up-placements-with-ast.md" class="xref">Set Up Placements
with AST</a>.



<b>Warning:</b> Important

You cannot load ads from HTML hosted in `localhost`.







## Public Variables

- `apntag`: Primary AST object class.
- `apntag.anq`: Command queue for AST functions. Allows commands to be
  queued during page load time and executed when the `ast.js` script
  loads asynchronously.





## Debug Mode

The AST library suppresses its `console.log` statements by default
unless debug mode is enabled. In debug mode, developer console output is
available.

To enable debug mode for the page you are viewing, add `?ast_debug=true`
to the end of the URL of the page. For example,

`www.site.com/page.html?ast_debug=true`

You can also enable debug mode on a tag by
adding  `apntag.debug = true;`





## Debug Auction

To run a debug auction, add
`?ast_debug=true&ast_dongle=ABC&ast_debug_member=1234` to the end of the
URL of the page you are viewing (where `ABC` is your dongle used for
debugs and `1234` is your debug member ID). For
example, `http://www.site.com/page.html?ast_debug=true&ast_dongle=ABC&ast_debug_member=1234`

Alternatively, debug mode can be enabled on the tag using:

``` pre
apntag.debug = true;
apntag.dongle = 'ABC';
apntag.debug_member = '1234';
```





## AST Toolkit

Publishers desire a way to quickly identify the source of particular ads
on their page so they can make decisions about allowing them to serve in
the future.  The AST Toolkit allows them to easily identify and block a
creative that they see on their page.

To turn on AST Toolkit, add `?ast_toolkit=true&ast_dongle=ABC` to the
end of the URL of the page you are viewing (where `ABC` is your dongle
used for debugs). For
example, `http://www.site.com/page.html?ast_toolkit=true&ast_dongle=ABC`

The AST Toolkit will provide the following data for each ad slot to the
user:

- Creative ID

- Buyer Member ID

- Creative size served

- Available sizes on the auction

- Winning bid (CPM)

- Demand source

- Ad type (Banner, Video, Native)

- Media Type ID

- Link to UI Ad Quality screen for profile

- Link to Creative Preview 

  AST Toolkit requires that `member` is set
  in `setPageOpts()` or `defineTag()`.





## Functions

- <a href="ad-object-api.md" class="xref">Ad Object API</a>
- <a href="attach-click-trackers.md" class="xref">Attach Click
  Trackers</a>
- <a href="clear-request.md" class="xref">Clear Request</a>
- <a href="define-tag.md" class="xref">Define Tag</a>
- <a href="enable-cookie-set.md" class="xref">Enable Cookie Set</a>
- <a href="fire-impression-trackers.md" class="xref">Fire Impression
  Trackers</a>
- <a href="get-ast-version.md" class="xref">Get AST Version</a>
- <a href="get-tag.md" class="xref">Get Tag</a>
- <a href="load-tags.md" class="xref">Load Tags</a>
- <a href="modify-tag.md" class="xref">Modify Tag</a>
- <a href="notify.md" class="xref">Notify</a>
- <a href="off-event.md" class="xref">Off Event</a>
- <a href="on-event.md" class="xref">On Event</a>
- <a href="push.md" class="xref">Push</a>
- <a href="refresh.md" class="xref">Refresh</a>
- <a href="resize-ad.md" class="xref">Resize Ad</a>
- <a href="set-endpoint.md" class="xref">Set Endpoint</a>
- <a href="set-keywords.md" class="xref">Set Keywords</a>
- <a href="set-page-options.md" class="xref">Set Page Options</a>
- <a href="set-safeframe-configuration.md" class="xref">Set SafeFrame
  Configuration</a>
- <a href="show-tag.md" class="xref">Show Tag</a>






