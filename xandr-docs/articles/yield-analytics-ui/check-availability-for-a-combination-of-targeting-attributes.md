---
title: Check Availability overview
description: The article explains how to check for available attributes, evaluating impressions, setting criteria, and examining results in the Availability Report panel.
ms.date: 10/28/2023
ms.custom: yield-analytics-ui
---
# Check availability overview
To check for available impressions, specify your lookup criteria and then view the results in the Availability Report panel.

1. On the Availability Dashboard page, in the Availability Tasks panel, click **Check Availability**. The **Availability Lookup** page appears.
1. In the Configuration panel on the left side of the page, select the high-level settings for your lookup, as follows.
    - **Time Period** – This field determines the timeframe for the availability lookup. By default, the lookup is for the next month. Click the link for the current selection (e.g., Next Month). Then in the Time Period dialog that appears, set the timeframe for which you want to check availability.
    - **Group By** – This field determines how available impressions and capacity are broken down in the lookup. By default, the lookup shows total available impressions and capacity only. Click the link for the current selection (e.g., None). Then choose a group from the drop-down list (e.g., select **Weekly** to see available impressions and capacity for each week in the selected time period).
    - **Priority** – This field determines the ad server priority for your availability lookup. By default, the lookup calculates availability by subtracting guaranteed consumption from capacity, regardless of priority. To set a priority, click the link for the current selection (e.g., None). Then in the Priority (DFP) dialog that appears, choose a priority from the drop-down list (e.g., select **4** to see availability for products with a priority of 4 and higher). Note that if you set a priority, availability will be calculated by subtracting all consumption (guaranteed as well as preemptible) from capacity below that priority level.  
    - **Frequency Cap** – This field determines the maximum number of times an ad should appear for a given user for a given number of minutes, hours, days, weeks, months, or for the lifetime of the ad. Available impressions and capacity are adjusted based on the cap you set. To set a frequency cap, click the current selection (e.g., None), Then in the Frequency Cap dialog that appears, type  the maximum number of views for the timeframe you want (e.g., for a weekly frequency of 3, set the frequency cap to be 3 views per 1 week).
1. In the Lookup Criteria panel, select the product attributes you want to use for your lookup.
    - To start with the attributes of an existing product, select it from the Products list. To start with the attributes across a product group, click **Group**, and select a product group from the list that appears.
    - To specify additional attributes, select them from the Attributes list. You can search for products/product groups by typing in the filter field at the top of each list. As you type, the list of products/product groups is narrowed accordingly.
1. In the Lookup Request panel, review the product criteria you selected and specify the values for the attributes you chose.
    - To specify attribute values, click the click to add attribute values link. Add the values you want to look up, and then click **Update**. You can type the values you want to look up or you can choose them from a comprehensive list by clicking **Select** and adding/removing values in the Attribute Values dialog.
    - By default, the lookup criteria you selected in step 3 appear in the Products must match all of these criteria box. Products that match all criteria in this box are returned in the lookup results. To have your lookup exclude results with certain attributes,       click **Include**. Then select **Exclude** from the drop-down list that appears.
    - To have your lookup also match any of a set of criteria, click the And any of these criteria box. Select attributes from
      the Lookup Criteria panel. Then specify the values for the attributes you chose.
1. (Optional) Add an advanced lookup option.
    - You can set up an OR lookup by clicking **Advanced**. Then select **Create Complex** Product. The lookup returns all products that match either set of criteria you define.
    - You can run a lookup for several values at the same time by clicking **Advanced**. Then select **Create Product** Variants. The lookup returns products that match all of the values in the main criteria, and each of the values in the Vary these attributes box.
1. Click **Check Availability**. The Availability Report panel displays the available inventory based on your lookup criteria.

After you check availability the structure of your query is retained, so you can use the previous lookup as a template for a new one.

## Related topics

- [Anatomy of the Availability Lookup Page](anatomy-of-the-availability-lookup-page.md)
- [Create an Availability Batch Lookup](create-an-availability-batch-lookup.md)
- [View Availability Batch Lookups](view-availability-batch-lookups.md)
- [Availability Overview (Old Workflow)](availability-overview-old-workflow.md)
- [Save an Availability Lookup](save-an-availability-lookup.md)
- [Open a Saved Availability Lookup](open-a-saved-availability-lookup.md)
