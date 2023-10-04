---
Title : Set Up Placements with AST
Description : This page contains a sample web page showing how
Xandr's seller tag  (AST) functions can be
implemented in the header and body of a sample client page.
---


# Set Up Placements with AST



This page contains a sample web page showing how
Xandr's seller tag  (AST) functions can be
implemented in the header and body of a sample client page.

<div id="ID-000000bd__note_lxk_h45_25b" 

Note: See the
<a href="ast-api-reference.html" class="xref">AST API Reference</a> for
more details on using the functions in this example.



<div id="ID-000000bd__note_mxk_h45_25b" 

Note:

Xandr now supports a domain,
adnxs-simple.com, which does not send or read
browser cookies on requests. Clients can leverage this cookie-free
domain when there is no consent to use personal data. Relevant calls
initiated by Xandr will automatically use this
domain when there is no consent or when cookies are not required for the
function. For more information, see  <a
href="https://wiki.xandr.com/display/policies/Reinforcing%2bPrivacy%2bControls%2bThrough%2ba%2bCookie-Free%2bDomain"
class="xref" target="_blank">Reinforcing Privacy Controls Through a
Cookie-Free Domain</a> (login required).

To use the adnxs-simple.com domain:

- If you load ast.js directly from Xandr's CDN,
  update the library tag to start loading from the new cookie-free
  domain:  
  <a href="https://acdn.adnxs-simple.com/ast/ast.js" class="xref"
  target="_blank">https://acdn.<span
  class="ph">adnxs-simple.com/ast/ast.js</a>
- If you load ast.js from a local server, update ast.js to the latest
  version (version 0.37.1 or higher)





## Step 1: Create the APN Object and Load the Xandr JavaScript Library

In line 5, we set up an empty AST object. In line 7, we create a
function queue on that object which allows us to push functions into
that queue with the information about the tags and be able to request
bids from the Xandr ad server. In lines 10–15,
we asynchronously load the client-side auction library from the
Xandr CDN. If the script exists, we process it;
otherwise, it is put in the queue.



Note: This code can be pasted directly
into your web page; no additional developer changes are required. You
may separate the code into the `head` and `body` as shown below or, if
you do not have access to the page `head`, you may put the entire tag in
one code block in the `body`.





Warning: Deploying the AST tag into an
external Javascript file or other customizations to the deployment of
this code could result in unintended outcomes or loss of functionality,
and will require customer action to test and utilize features in future
AST releases. Xandr may not be able to
troubleshoot or support in this instance.



``` pre
<html>
<head>
    <script type="text/javascript">
    //create empty apntag object if it doesn't exist
    var apntag = apntag || {};
    //create a queue on the apntag object        
    apntag.anq = apntag.anq || [];
        
        //load ast.js - async
    (function() {
       var d = document, e = d.createElement('script'), p = d.getElementsByTagName('head')[0];
       e.type = 'text/javascript';  e.async = true;
       e.src = '//acdn.adnxs.com/ast/ast.js';
       p.insertBefore(e, p.firstChild);
    })();
```





## Step 2: Set Global Page Options

Now we set the global page options with the `setPageOpts` function.
Here, we set the member ID to 958 and define the page-wide targeting
parameters (`member` is required in either `setPageOpts` or `defineTag`
(below). This example uses age and gender. 

``` pre
    //push commands to loading queue, to allow for async loading
    apntag.anq.push(function() {
        //set global page options
        apntag.setPageOpts({
            member: 958,
            keywords: {
                'artist': 'Prince',
                                'genre': ['rock', 'pop']
            },
                        user: {
                                age: 26,
                                gender: 1
                        }
        });
```





## Step 3: Define Ad Tags

Next, we define all the ad placements we want on this page using the
`defineTag` function. Here, we specify the following for each placement:

- `member`: can override the global page option with member ID for this
  placement (optional; must be present if not specified in
  `setPageOpts`)

- `invCode`: the placement code for this placement. (`invCode` OR
  `tagId` required)

- `tagId`: the placement id for this placement ( `invCode`  OR  `tagId`
   required)

- `sizes`: if you are using multiple sizes, the first item in the list
  is the placement size and other sizes are promo sizes.

- `targetId`: Any unique string; this must correspond to a unique `div`
  ID in the body of the page.

- Other options available; see
  the <a href="ast-api-reference.html" class="xref">AST API Reference</a>.  
    

  ``` pre
          //define ad tags
          apntag.defineTag({
                          invCode: 'ABC1234',
              sizes: [728,90],
              targetId: 'apn_ad_slot_1'
          });
          apntag.defineTag({
                          tagId: 123456,
              sizes: [[300,250],[300,600]],
              targetId: 'apn_ad_slot_2'
          });
  ```





## Step 4: Load Tags

As soon as all the tags are defined, call the `loadTags` function. This
function sends out ad requests for the tags in one ad call
asynchronously.

``` pre
        //start loading tags
        apntag.loadTags();
    });
    </script>
</head>
```





## Step 5: Define Location of Placements

In the body of the page, specify the location of each placement using
`div` tags that correspond to the `targetId` elements from each of your
`defineTag` calls. Use the `showTag` function to indicate that the
placement is ready to receive an ad. Once this function is called, the
impression will be marked as transacted and will be considered an
"impression" for accounting purposes.



Note: AST manages all the DOM elements
inside the ad placeholder `div` tag programmatically. Since these
elements may change, do not directly access any of the elements; use
only the built-in AST functions, such as `refresh`. Accessing these
elements directly may result in unexpected behavior, such as ads
appearing in the wrong location on the page, duplicate ads, or blanks.

``` pre
<body>
    <div id="apn_ad_slot_1">
        <script type="text/javascript">
        apntag.anq.push(function() {
            //signal to script that this DOM element has been loaded and is ready to be populated with an ad
            apntag.showTag('apn_ad_slot_1');
        });
        </script>
    
    <br>
    <div id="apn_ad_slot_2">
        <script type="text/javascript">
        apntag.anq.push(function() {
            apntag.showTag('apn_ad_slot_2');
        });
        </script>
    
 
</body>
</html>
```





<div id="ID-000000bd__section_ph4_xky_xvb" >

## Related Topics

<a href="seller-tag.html" class="xref">Seller Tag</a>

<a href="ast-api-reference.html" class="xref">AST API Reference</a>






