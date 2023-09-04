# AST API Reference

<div class="body refbody">

<div class="section">

This page describes the usage of the functions and variables of
<span class="ph">Xandr</span>'s seller tag (AST) JavaScript library. For
an example of a page with these functions implemented, see
<a href="set-up-placements-with-ast.html" class="xref">Set Up Placements
with AST</a>.

<div class="note warning">

<span class="warningtitle">Warning:</span> Important

You cannot load ads from HTML hosted in `localhost`.

</div>

</div>

<div class="section">

## Public Variables

- `apntag`: Primary AST object class.
- `apntag.anq`: Command queue for AST functions. Allows commands to be
  queued during page load time and executed when the `ast.js` script
  loads asynchronously.

</div>

<div class="section">

## Debug Mode

The AST library suppresses its `console.log` statements by default
unless debug mode is enabled. In debug mode, developer console output is
available.

To enable debug mode for the page you are viewing, add `?ast_debug=true`
to the end of the URL of the page. For example,

`www.site.com/page.html?ast_debug=true`

You can also enable debug mode on a tag by
adding  `apntag.debug = true;`

</div>

<div class="section">

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

</div>

<div class="section">

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

</div>

<div class="section">

## Functions

- <a href="ad-object-api.html" class="xref">Ad Object API</a>
- <a href="attach-click-trackers.html" class="xref">Attach Click
  Trackers</a>
- <a href="clear-request.html" class="xref">Clear Request</a>
- <a href="define-tag.html" class="xref">Define Tag</a>
- <a href="enable-cookie-set.html" class="xref">Enable Cookie Set</a>
- <a href="fire-impression-trackers.html" class="xref">Fire Impression
  Trackers</a>
- <a href="get-ast-version.html" class="xref">Get AST Version</a>
- <a href="get-tag.html" class="xref">Get Tag</a>
- <a href="load-tags.html" class="xref">Load Tags</a>
- <a href="modify-tag.html" class="xref">Modify Tag</a>
- <a href="notify.html" class="xref">Notify</a>
- <a href="off-event.html" class="xref">Off Event</a>
- <a href="on-event.html" class="xref">On Event</a>
- <a href="push.html" class="xref">Push</a>
- <a href="refresh.html" class="xref">Refresh</a>
- <a href="resize-ad.html" class="xref">Resize Ad</a>
- <a href="set-endpoint.html" class="xref">Set Endpoint</a>
- <a href="set-keywords.html" class="xref">Set Keywords</a>
- <a href="set-page-options.html" class="xref">Set Page Options</a>
- <a href="set-safeframe-configuration.html" class="xref">Set SafeFrame
  Configuration</a>
- <a href="show-tag.html" class="xref">Show Tag</a>

</div>

</div>

<div class="related-links">

- **[Ad Object API](../seller-tag/ad-object-api.html)**  
- **[Attach Click
  Trackers](../seller-tag/attach-click-trackers.html)**  
- **[Clear Request](../seller-tag/clear-request.html)**  
- **[User Agent Client
  Hints](../seller-tag/ast-client-hints-for-adserver.html)**  
- **[Define Tag](../seller-tag/define-tag.html)**  
- **[Enable Cookie Set](../seller-tag/enable-cookie-set.html)**  
- **[Fire Impression
  Trackers](../seller-tag/fire-impression-trackers.html)**  
- **[Get AST Version](../seller-tag/get-ast-version.html)**  
- **[Get Tag](../seller-tag/get-tag.html)**  
- **[Load Tags](../seller-tag/load-tags.html)**  
- **[Modify Tag](../seller-tag/modify-tag.html)**  
- **[Notify](../seller-tag/notify.html)**  
- **[Off Event](../seller-tag/off-event.html)**  
- **[On Event](../seller-tag/on-event.html)**  
- **[Push](../seller-tag/push.html)**  
- **[Refresh](../seller-tag/refresh.html)**  
- **[Resize Ad](../seller-tag/resize-ad.html)**  
- **[Set Endpoint](../seller-tag/set-endpoint.html)**  
- **[Set Keywords](../seller-tag/set-keywords.html)**  
- **[Set Page Options](../seller-tag/set-page-options.html)**  
- **[Set SafeFrame
  Configuration](../seller-tag/set-safeframe-configuration.html)**  
- **[Show Tag](../seller-tag/show-tag.html)**  
- **[User Sync](../seller-tag/user-sync.html)**  

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../seller-tag/seller-tag.html" class="link">Seller Tag</a>

</div>

</div>

</div>
