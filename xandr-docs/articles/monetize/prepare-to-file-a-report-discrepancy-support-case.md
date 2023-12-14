---
Title : Prepare to Request a Report Discrepancy Investigation
Description : To request a report discrepancy investigation, you should first rule out
ms.date: 10/28/2023
the most obvious sources of discrepancy, and then gather the information
Xandr Support needs to take further action.
---


# Prepare to Request a Report Discrepancy Investigation



To request a report discrepancy investigation, you should first rule out
the most obvious sources of discrepancy, and then gather the information
Xandr Support needs to take further action.



If you're considering working with Support to investigate a suspected
discrepancy, please use the following steps to prepare. Specific details
about case qualification and required documentation are covered in <a
href="requirements-for-filing-a-support-case-for-report-discrepancies.md"
class="xref"
title="To file a case exploring a possible report discrepancy with Product Support, you need to gather reports, including object IDs for the relevant objects, and create a spreadsheet that shows a discrepancy greater than 10% (15% for mobile).">Requirements
for Filing a Support Case for Report Discrepancies</a>. For some common
causes that can be addressed without Support intervention, see
<a href="what-to-check-if-you-suspect-a-report-discrepancy.md"
class="xref"
title="Report discrepancies have a number of common causes. Before you begin a fuller investigation, consider common potential causes like time frames, time zone differences, measurement units, macro configuration errors, and differences in how ad servers count impressions.">What
to Check if You Suspect a Discrepancy</a>.





1.  Double-check that the time timezone in the
    Xandr report matches the timezone in the
    third-party report.
2.  Make sure the reports you're comparing contain
    data from the same time frame. If the time frame isn't the same,
    Xandr does not consider this a discrepancy.
    
    

    

    <b>Tip:</b> A shorter time frame is more
    useful than a long one.

    

    
3.  Make sure you know how each ad server counts
    the activity you're comparing (impressions or clicks). You can
    contact your third-party ad server for this information. You'll need
    this information to file a case.
    

    Xandr counts an impression when the creative
    is rendered. For video ads, an impression takes place when the first
    frame of the video is loaded. If the third-party counts their
    impressions differently (for example, when a third party imp tracker
    loads on the page) the numbers aren't directly comparable, and
    Xandr does not consider this a discrepancy.

    
4.  Make sure the objects for which you're pulling
    data (for example a campaign, placement, or advertiser) are
    specified in both reports. 
    

    

    <b>Note:</b> The objects in the third
    party report must clearly correspond with objects in the
    Xandr system. Please include
    Xandr object IDs in both reports, so that
    Support can quickly and easily match objects and compare the data.
    Object names are not unique, and can’t be reliably used for
    matching.

    

    
5.  Apply different reporting dimensions to see if
    you can isolate the discrepancy to a specific object such as a
    placement, creative, or domain. Wherever possible, take note of the
    object IDs so you can demonstrate that the object is the same for
    both reports and you can demonstrate the mapping between
    objects.
6.  Make sure all tracking pixels and tags are in
    the correct format.
    <div class="itemgroup stepxmp">

    For example, if you paste a tracking pixel into your browser and it
    shows up as an image, but it's configured as an HTML URL in
    Xandr, this will cause a discrepancy.

    
7.  Create a spreadsheet that includes both
    Xandr and third-party reporting
    numbers.
    

    In the spreadsheet, you need to match the object IDs from each
    server to ensure one server is not counting more objects than the
    other. If it is, this isn't a true discrepancy.

    
8.   Calculate the discrepancy percentage using the
    formula `(1 - (Xandr Report/3rd Party Report)) x 100`. 
    

    If the discrepancy is greater than 10% (15% for mobile), you can
    file a case for Xandr to investigate the
    discrepancy. If the discrepancy is less, it's considered expected
    variation, and doesn't qualify for a case investigation.

    






