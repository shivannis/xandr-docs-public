---
Title : Custom Models
Description : This page provides information on Custom Models, how Bid Value and
Expected Value are derived and lists the different types of Custom
Models .
---


# Custom Models



This page provides information on Custom Models, how Bid Value and
Expected Value are derived and lists the different types of Custom
Models .



## Overview

Custom Models enable Xandr API users to use <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/the-bonsai-language.html"
class="xref" target="_blank">Bonsai Decision Trees</a> and/or <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/logistic-regression-models.html"
class="xref" target="_blank">Logistic Regression Models</a> to add
decision making logic for Bid Valuation, Creative Delivery and
Non-Valuation purposes to their Augmented Line Items (ALI) or campaigns.
This page provides an overview on how to get started using Custom Models
for the various use-cases:  
  

- Bid Valuation: to override Xandr Optimization
  algorithms, or individual components of the algorithms. 
- Creative Selection: to support your Dynamic Creative Optimization
  strategies.
- Non Valuation Purposes: to insert custom creative macros into
  impression tracking calls to enhance reporting or affect learn status.





## Use Cases

**Bid Valuation Custom Models**

Custom Models are designed to allow data scientists, through the
Xandr API, to break out specific portions of
their Bid Valuation model by associating multiple Bonsai Decision Tree
and/or Logistic Regression Models to an <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---ali.html"
class="xref" target="_blank">Augmented Line Item</a> or campaign to
create a custom buying strategy. By associating specific types of models
to the Expected Value and/or Cadence Modifier and/or Bid Modifier
calculations for an impression, it is possible to override portions of
Xandr Optimization, and to allow our system to
only handle aspects of valuation that your own models do not cover.

<figure class="fig fignone">
<p><img src="data-science-toolkit/images/116524598.png" class="image"
height="181" /></p>
</figure>

Please refer to our <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/bid-valuation-with-custom-models.html"
class="xref" target="_blank">Bid Valuation with Custom Models</a>
documentation for more information on this use case. 

**Creative Selection Custom Models**

By default, Xandr randomly distributes the
creatives associated with a line item. Custom Models enable users to
override this default feature and assign a creative to a line item.
Users can write a decision tree using any of our Bonsai language's <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/bonsai-language-features.html"
class="xref" target="_blank">features</a> or logic to determine which
creative should be served.  For example: 

``` pre
$cat creative-tree
 
if user_hour = 1:
    leaf_name: "cs_1"
    creatives: {12345: 30, 67890: 20}
else:
    leaf_name: "cs_2"
    creatives: {12347: 1}
```

Please refer to our <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/creative-selection-custom-model.html"
class="xref" target="_blank">Creative Selection Custom Models </a>documentation
for more information on this use case. 

**Non-Valuation Custom Models**

Non-valuation custom models do not affect bid valuation. They're used to
insert custom creative macros into impression tracking calls, which can
eventually be used for other functions, such as affecting Learn status. 

Please refer to our <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/nonvaluation-custom-model.html"
class="xref" target="_blank">Non-Valuation Custom Models</a> documentation
for more information on this use case. 





## Getting Started

**Step 1: Decide on your use case**

Decide which use case(s) you want to proceed with and learn more about
how the Custom Models product can help you achieve your goals: 

- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/bid-valuation-with-custom-models.html"
  class="xref" target="_blank">Bid Valuation with Custom Models</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/creative-selection-custom-model.html"
  class="xref" target="_blank">Creative Selection Custom Models</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/nonvaluation-custom-model.html"
  class="xref" target="_blank">Non Valuation Custom Models</a>

**Step 2: Learn about Bonsai Decision Trees and Logistic Regression
Models**

Learn more about the two language types we support and select the one
that matches the needs to achieve your goals. For Bid Valuation Custom
Models use either Bonsai decision trees and/or Logistic Regression
Models. For Creative Selection or Non-Valuation Custom Models use Bonsai
decision trees. 

- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/the-bonsai-language.html"
  class="xref" target="_blank">Bonsai Language</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/logistic-regression-models.html"
  class="xref" target="_blank">Logistic Regression Models</a>

**Step 3: Learn how to upload Custom Models via the API**

Once you have built a Bonsai decision tree or Logistic Regression Model,
learn how to attach them to your ALI and which API services to use: 

- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/ali-workflow-with-custom-models.html"
  class="xref" target="_blank">ALI Workflow with Custom Models</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-model-api-reference.html"
  class="xref" target="_blank">Custom Model API Reference</a>

**Step 4: Learn how to use the Log-Level Custom Model Feed**

When your ALI or campaign, with attached Custom Models, is live, it is
useful to analyze and report on them. The <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/log-level-custom-model-feed.html"
class="xref" target="_blank">Log-Level Custom Model Feed</a> enables
users to review specific data on models associated with your ALI or
campaign and the values calculated by each model. 





## Related Items

- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/ali-workflow-with-custom-models.html"
  class="xref" target="_blank">ALI Workflow with Custom Models</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/bid-valuation-with-custom-models.html"
  class="xref" target="_blank">Bid Valuation With Custom Models</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/the-bonsai-language.html"
  class="xref" target="_blank">Bonsai Language</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/creative-selection-custom-model.html"
  class="xref" target="_blank">Creative Selection Custom Model</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-model-api-reference.html"
  class="xref" target="_blank">Custom Model API Reference</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/logistic-regression-models.html"
  class="xref" target="_blank">Logistic Regression Models</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/nonvaluation-custom-model.html"
  class="xref" target="_blank">NonValuation Custom Model</a>





- **[ALI Workflow with Custom
  Models](ali-workflow-with-custom-models.html)**  
- **[Bid Valuation with Custom
  Models](bid-valuation-with-custom-models.html)**  
- **[Creative Selection Custom
  Model](creative-selection-custom-model.html)**  
- **[Log-Level Custom Model Feed](log-level-custom-model-feed.html)**  
- **[Nonvaluation Custom Model](nonvaluation-custom-model.html)**  
- **[Logistic Regression Models](logistic-regression-models.html)**  
- **[Custom Model API Reference](custom-model-api-reference.html)**  
- **[Logistic Regression Custom Model
  Service](logistic-regression-custom-model-service.html)**  
- **[Custom Models Pre-Implementation and Troubleshooting
  Guide](custom-models-pre-implementation-and-troubleshooting-guide.html)**  
- **[Using Custom Models to Pass Macros to Dynamic Creative
  Optimizations](using-custom-models-to-pass-macros-to-dynamic-creative-optimizations.html)**  
- **[The Bonsai Language](the-bonsai-language.html)**  

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="data-science-toolkit-guide.html" class="link">Data Science
Toolkit Guide</a>






