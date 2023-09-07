# Breaking Changes - AST API

<div class="body">

Our AST API is continually changing. The vast majority of changes simply
add new functionality, but occasionally we introduce breaking
changes that may require you to adjust your integration.

This page explains what changes qualify as breaking changes to our AST
API. It also gives examples of changes that do not qualify as breaking
changes.

<div class="note">

<span class="notetitle">**Note:**</span> <span class="ph">Xandr</span>
reserves the right to fix bugs, adjust functionality to comply with our
<a href="https://wiki.xandr.com/display/policies" class="xref"
target="_blank">service policies</a> (login required) and legal
obligations, and change features and products in alpha and beta without
providing early notice.

</div>

<div class="section">

## Breaking Changes

The following types of changes qualify as breaking changes:

- Removal of or changing the name of a field in an event handler
  response (adObj api)
- Removal of the object from an event handler callback function
  definition
- Removal of or changing the name of an AST method (for
  example, `defineTag()` or `showTag()`)
- Modification of the data type of a field (for example, an array of IDs
  converted to an array of objects)

<div class="note">

<span class="notetitle">Note:</span> When we introduce a breaking change
into our AST API, we will support the version of AST without the
breaking change as the production (`/ast.js`) version for 45 days.
During this 45 day period, the new version (which includes breaking
changes) will be available at a static URL (`/v1.0.1/ast.js`). After the
45 days, the breaking change version will be promoted to the production
URL. All recent versions of AST will be available via the static URL, so
you may continue to use the version without the breaking change by
calling its specific version instead.

</div>

Additionally, we will notify AST users of these changes and how to
correctly reach each version during the breaking changes period.

- Breaking changes to the AST protocol will be announced on
  our <a href="ast-release-history.md" class="xref">AST Release History</a> page.
   We encourage you to subscribe to updates to be proactively notified
  of breaking changes. (For <span class="ph">Xandr</span> clients,
  breaking changes will also be announced in release notes.)

</div>

<div class="section">

## Examples of Non-Breaking Changes

The following types of changes do not qualify as breaking changes.
Please note that this list is not exhaustive; these are just some
examples of non-breaking changes.

- Addition of a new non-mandatory field
- Addition of a new AST method
- Deprecation of a field without removing it 
- Change in order of fields in an object, objects in an array, and so
  on.

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Further Reading:**
- [Seller Tag](seller-tag.md)


</div>

</div>

</div>
