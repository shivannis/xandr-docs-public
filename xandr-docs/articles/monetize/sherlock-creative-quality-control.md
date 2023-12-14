---
Title : Sherlock: Creative Quality Control
Description : Xandr takes malware extremely seriously, and we
ms.date: 10/28/2023
are actively working to be at the forefront of prevention in order to
protect our customers.
---


# Sherlock: Creative Quality Control



Xandr takes malware extremely seriously, and we
are actively working to be at the forefront of prevention in order to
protect our customers.

>

We utilize our own automated creative scanning system, Sherlock, to
detect malicious content and assist our human auditors with ad quality.
Sherlock simulates real traffic as accurately as possible. Because we do
not wish to describe our methods to any potential bad actors, we are not
currently disclosing details of the process in our documentation. For
more information, please contact our Anti-Malvertising team. We also
recommend that all our clients visit and explore
<a href="https://www.anti-malvertising.com" class="xref"
target="_blank">https://www.anti-malvertising.com</a> for more
information and best practices on malware prevention.



<b>Note:</b> During the Sherlock testing
process, we are actually loading each creative a few times. Because of
this, you may see some very minimal activity for inactive or unaudited
creatives in reporting.





>

## Malware Policy

We have developed an
<a href="https://wiki.xandr.com/display/policies/Policies+for+Buying"
class="xref" target="_blank">anti-malvertising policy</a> (login
required) to ensure that our clients are taking all the necessary steps
to keep the Xandr platform safe.



>

## Contacting Our Team

If you have any malware related issues or questions, please complete our
<a href="https://help.xandr.com/" class="xref" target="_blank">Customer
Support form</a> and select
Anti-Malvertising as the
Request Type. If you feel that
your creative has been deactivated erroneously for loading a
non-malicious domain, please open a ticket and provide your reasoning as
well as contacts for the domain owner so that we are able to further
investigate.



>

## Violation Reports and Automated Emails

Upon detecting a violation, our system will send an email to the client
contact that we have for creative audit notifications. This email
includes the reason for violation. For example, loading a blocklist SLD,
as well as a link to a report showing a detailed call chain of the
violation. This report is similar to the output that one would see while
running a program such as TamperData or HTTPScoop and shows both the
order of the calls as well as a column titled "cache", which has a
cached copy of content loaded at each step. **Please be aware that these
cached copies could contain malicious components**. These cached copies
can be used for additional debugging on your end such as checking
javascript that was loaded to determine a creative ID in another system.



>

## Removing a Domain from Our Blocklist

>

We build our blocklists from a variety of sources both internal and
external. Our team investigates each of these domains, which remain
blocklisted if we are unable to contact the owner and determine the
validity. If you feel a domain has been incorrectly blocklisted, use our
<a href="https://help.xandr.com/" class="xref" target="_blank">Customer
Support form</a> to open a ticket. Select
Anti-Malvertising as the
Request Type and provide reasons as to
why the domain should be removed from our blocklist as well as contacts
for the owner of the domain. Here are some examples of the details that
we will need:

- Domain owner and their main business website, business address, and
  any other details
- Direct contact for the owner of the domain (email is fine)



Once we have this information, we will reach out to the owner to
determine if the domain can be removed from our blocklist. As a matter
of policy, we blocklist as soon as we see a potential problem and then
complete the investigation. This is to ensure that both your publisher
relationships and reputation are protected!



>

## Related Topics

- <a href="creative-standards.md" class="xref"
  title="Xandr has foundational policies that all creative and inventory content must follow. Creatives that violate these policies will be removed from the platform, and will be ineligible for both real-time bidding (RTB) and in-network buying. Repeated violation of these policies may result in strikes against offending members.">Creative
  Standards</a>






