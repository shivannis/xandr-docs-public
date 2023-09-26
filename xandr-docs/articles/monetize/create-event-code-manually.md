---
Title : Create Event Code Manually
Description : You can manually create event code based on a template and deploy it on
your website.
---


# Create Event Code Manually



You can manually create event code based on a template and deploy it on
your website.

<div id="create-standard-event-code-manually__section_ojc_gpp_rsb"
>

Use the following template to create the code for your standard event,
where:

- `EventName` is the name for your event
- `UUID` is the unique ID for your pixel as shown in the
  Xandr UI

See <a href="standard-events-and-parameters.html" class="xref">Standard
Events and Parameters</a> for the names of standard events.

``` pre
<script> 
     pixie('event', 'EventName'); 
</script> 

<noscript>
     <img width="1" height="1" style="display:none;" 
     src="//ib.adnxs.com/pixie?pi=UUID&e=EventName&script=0" />
</noscript> 
```



<div id="create-standard-event-code-manually__section_mqd_nh1_nmb"
>

## Related Topics

- <a href="universal-pixel-code-structure.html" class="xref"
  title="The general universal pixel code to be deployed in the &lt;head&gt; tag on each page of the advertiser website is different from the pixel code required for standard and custom events, which is deployed only on pages of interest.">Universal
  Pixel Code Structure</a>
- <a href="standard-events-and-parameters.html" class="xref">Standard
  Events and Parameters</a>
- <a href="create-custom-events-and-parameters.html" class="xref"
  title="If you click the pencil icon next to a pixel on the Universal Pixels page, you can create custom events and parameters for the universal pixel using the UI and include them in your generated pixel code.">Create
  Custom Events and Parameters</a>






