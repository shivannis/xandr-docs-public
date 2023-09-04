# Clear Request

<div class="body refbody">

<div class="section">

This function resets the state of the `apntag` back to its uninitialized
state. The function clears out the relevant objects in the AST tag,
enabling the user to call `defineTag` for new placements with an
unconfigured AST tag. This can be useful in single page applications to
reset all the previously defined ad slots, page targeting, etc. Only use
this function if you need to hard reset all the states in the `apntag` .

<div class="note">

<span class="notetitle">Note:</span> Unlike the refresh function,
`clearRequest` does not remove any DOM elements, including `iFrames`. It
is the responsibility of the user to manage their DOM elements.

</div>

``` pre
clearRequest()
```

</div>

<div class="section">

## Example

``` pre
apntag.clearRequest(); 
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../seller-tag/ast-api-reference.html" class="link">AST API
Reference</a>

</div>

</div>

</div>
