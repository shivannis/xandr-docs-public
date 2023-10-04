---
Title : Create a Custom Creative Template
Description : You can create a new custom creative template from scratch at any time.
---


# Create a Custom Creative Template



You can create a new custom creative template from scratch at any time.

<div id="ID-00000359__context_55d64cce-6cfe-4054-9ee7-10ded1257c36"
class="section section context">

You can also duplicate an existing template and then modify it. For more
information, see
<a href="duplicate-an-existing-custom-creative-template.html"
class="xref"
title="Instead of creating a creative template from scratch, you can duplicate existing standard or custom creative templates and then modify the rendering code and macros as necessary.">Duplicate
an Existing Custom Creative Template</a>.





1.  Navigate to the
    Creative Templates screen by
    clicking
    Network
    \> Tools \>
    Creative
    Templates.
2.  Click
    New.
3.  <span id="ID-00000359__d119e33" class="ph cmd">Provide the following
    information:
    1.  <span id="ID-00000359__d119e38"><span id="ID-00000359__d119e40"
        class="ph cmd">Name: The name
        of the creative template, which helps buyers identify the
        creative template when uploading creatives that match this
        template's media type and format.
        

        

        Tip: Be sure to use a name that
        buyers will easily recognize.

        

        
    2.  <span id="ID-00000359__d119e52"><span id="ID-00000359__d119e54"
        class="ph cmd">Media Type:
        Defines the display style of the creatives that can use the
        template, such as banner.
    3.  <span id="ID-00000359__d119e60"><span id="ID-00000359__d119e62"
        class="ph cmd">Creative
        Format: Defines the creative resource type that can use
        this template such as Flash, iframe, or External
        File.
    4.  <span id="ID-00000359__d119e68"><span id="ID-00000359__d119e70"
        class="ph cmd">Template Code:
        Specifies how the creative should be rendered.
        

        

        Note: If you include custom
        macros in the template code, they must begin with the `#`
        symbol. If you include standard macros in the template code,
        they must begin with the `$` symbol. Be sure to replace any
        hard-coded
        <a href="http://adnxs.com/" class="xref" target="_blank">adnxs.com</a>
        references within the Template
        Code field with the `${XANDR_DOMAIN}` macro to ensure
        that the appropriate domain
        (<a href="http://adnxs.com/" class="xref" target="_blank">adnxs.com</a>
        or <a href="http://adnxs-simple.com/" class="xref"
        target="_blank">adnxs-simple.com</a>) will be used when the
        auction takes place.

        

        
4.  To add custom macros, expand the
    Custom macros section if
    necessary, click Add Macros, and
    do the following.
    

    

    Note: You can add up to 20 custom
    macros. If the template is being used by any active creatives, you
    cannot add additional custom macros.

    

    

    1.  Enter a name for this macro in the
        Name field that buyers will
        see when they upload creatives that use this template.
        

        The Name field is limited to a
        maximum of 50 characters.

        
    2.  Select a macro type from the
        Type pull-down menu such as
        String and
        True / False.
        <div class="itemgroup stepxmp">

        For example, if you select True /
        False, buyers will see the macro name followed by a
        checkbox.

        
    3.  If you selected
        Select from List, enter a
        value for Option 1.
        

        To add more options, click Add
        another option and enter the corresponding value.

        
    4.  If you want to require buyers to complete
        the macro when uploading new creatives that use this template,
        click the Required
        checkbox.
    5.  If you do not want the macro to be
        required, enter the Default
        Value that will be used when buyers do not complete the
        macro during creative uploads.
5.  Repeat step 4 to add each individual custom
    macro.
6.  Click
    Save.
    

    The new creative template is active by default and can be applied to
    new creatives.

    





Related Topics

- <a href="creative-templates.html" class="xref"
  title="If you want to customize the way creatives render, you can create your own templates from scratch, or you can copy Xandr standard templates and modify them to fit your needs.">Creative
  Templates</a>
- <a href="managing-creative-templates.html" class="xref"
  title="You can use the Creative Templates screen to view all corresponding details for each standard and custom creative template.">Managing
  Creative Templates</a>






