---
Title : Sherlock - Creative Quality Control
Description : Xandr takes malware extremely seriously, and we
ms.date : 10/28/2023
are actively working to be at the forefront of prevention in order to
protect our customers.
---


# Sherlock - Creative Quality Control



Xandr takes malware extremely seriously, and we
are actively working to be at the forefront of prevention in order to
protect our customers.

We utilize our own automated creative scanning system system, Sherlock,
to detect malicious content and assist our human auditors with ad
quality. Sherlock simulates real traffic as accurately as possible.
Because we do not wish to describe our methods to any potential bad
actors, we are not currently disclosing details of the process in our
documentation. For more technical detail, please contact our
Anti-Malvertising team.




<b>Note:</b>

During the Sherlock testing process, we are actually loading each
creative a few times. Because of this, you may see some very minimal
activity for inactive or unaudited creatives in reporting.







## Anti-Malvertising Policy for Buyers

We have developed an
<a href="https://wiki.xandr.com/display/policies/Malware+Policy"
class="xref" target="_blank">anti-malvertising policy</a> whose goal is
to ensure that our clients are making all necessary efforts to keep our
platform safe, please click the above link read this policy careful to
understand your responsibilities.





## Contacting our team

If you have any malware related issues or questions, please complete
our <a href="https://help.xandr.com/" class="xref" target="_blank">Customer
Support form</a> and select "Anti-Malvertising" as the Request Type. If
you feel that your creative has been deactivated erroneously for loading
a non-malicious domain, please open a ticket and provide your reasoning
as well as contacts for the domain owner so that we are able to further
investigate.





## Violation reports and automated emails

Upon detecting a violation, our system will send an email to the client
contact that we have for creative audit notifications. This email
includes the reason for violation (for example loading a blocklist SLD)
as well as a link to a report showing a detailed call chain of the
violation. This report is similar to the output one would see while
running a program such as TamperData or HTTPScoop and shows both the
order of the calls as well as a column titled "cache" which has a cached
copy of content loaded at each step. **Please be aware that these cached
copies could contain malicious components if, for example, a virus was
loaded.** These cached copies can be used for additional debugging on
your end. For example, checking javascript that was loaded to determine
a creative ID in another system.





## Removing a domain from our blocklist

We build our blocklists from a variety of sources both internal and
external. Our team investigates each of these domains, which remain
blocked if we are unable to contact the owner and determine the
validity. If you feel a domain has been incorrectly blocked, use
our <a href="https://help.xandr.com/" class="xref" target="_blank">Customer
Support form</a> to open a ticket (select "Anti-Malvertising" as the
Request Type) and provide your reasons why the domain is legitimate as
well as contacts for the owner of the domain. Some examples of details
that we need (the more you can provide the better):

- What company owns this domain? What is their main business website,
  business address, and any other details?
- Direct contact for the owner of the domain (email is fine)

Once we have this information, we will reach out to the owner to
determine if the domain can be removed from our blocklist. As a matter
of policy, we blocklist as soon as we see a potential problem and then
complete the investigation. This is to ensure that both your publisher
relationships and your reputation are protected.






