---
Title : API Use Cases for Enhanced Bidder Profiles
Description : Below are some common use cases with Enhanced Bidder Profiles.
---


# API Use Cases for Enhanced Bidder Profiles



Below are some common use cases with Enhanced Bidder Profiles.



## Create New Profiles

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000022ec__entry__1" class="entry colsep-1 rowsep-1">ID</th>
<th id="ID-000022ec__entry__2"
class="entry colsep-1 rowsep-1">Action</th>
<th id="ID-000022ec__entry__3" class="entry colsep-1 rowsep-1">Example
JSON Files and Calls</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__2">Create a new profile that targets
exchanges and has included/excluded members.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022ec__entry__3">JSON
File
<pre class="pre codeblock"><code>cat np_4.json
{
        &quot;bidder_profile&quot;: {
                &quot;targeting&quot;: {
                        &quot;exchanges&quot;: {
                                &quot;targets&quot;: [{
                                        &quot;id&quot;: 1
                                }, {
                                        &quot;id&quot;: 3
                                }],
                                &quot;action&quot;: &quot;exclude&quot;,
                                &quot;excluded_members&quot;: [{
                                        &quot;id&quot;: 389
                                }, {
                                        &quot;id&quot;: 1202
                                }],
                                &quot;included_members&quot;: [{
                                        &quot;id&quot;: 101
                                }, {
                                        &quot;id&quot;: 1200
                                }]
                        },
                        &quot;non_audited_url_action&quot;: &quot;include&quot;
                }
        }
}</code></pre>
<p>POST Call</p>
<pre class="pre codeblock"><code> curl -b cookies -c cookies -X POST -d &#39;@np_4.json&#39; &quot;https://api.adnxs.com/bidder-profile?bidder_id=129&quot;  | json_reformat
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1318  100   913  100   405    947    420 --:--:-- --:--:-- --:--:--   947
{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;id&quot;: 12,
        &quot;bidder_profile&quot;: {
            &quot;id&quot;: 12,
            &quot;bidder_id&quot;: 129,
            &quot;code&quot;: null,
            &quot;description&quot;: null,
            &quot;targeting&quot;: {
                &quot;exchanges&quot;: {
                    &quot;action&quot;: &quot;exclude&quot;,
                    &quot;targets&quot;: [
                        {
                            &quot;id&quot;: 1,
                            &quot;name&quot;: &quot;Direct&quot;
                        },
                        {
                            &quot;id&quot;: 3,
                            &quot;name&quot;: &quot;Network&quot;
                        }
                    ],
                    &quot;included_members&quot;: [
                        {
                            &quot;id&quot;: 101,
                            &quot;billing_name&quot;: &quot;AdNexus (DW)&quot;
                        },
                        {
                            &quot;id&quot;: 1200,
                            &quot;billing_name&quot;: &quot;Performance Advertising GmbH&quot;
                        }
                    ],
                    &quot;excluded_members&quot;: [
                        {
                            &quot;id&quot;: 389,
                            &quot;billing_name&quot;: &quot;Admeld - KickApps&quot;
                        },
                        {
                            &quot;id&quot;: 1202,
                            &quot;billing_name&quot;: &quot;Agenda Media Ltd.&quot;
                        }
                    ]
                },
                &quot;ad_types&quot;: {
                    &quot;banner&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;video&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;audio&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;native&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    }
                }
            },
            &quot;last_activity&quot;: &quot;2018-05-31 16:15:20&quot;,
            &quot;created_on&quot;: &quot;2018-05-31 16:15:20&quot;,
            &quot;active&quot;: false
        },
        &quot;dbg&quot;: {
            &quot;warnings&quot;: [
            ],
            &quot;version&quot;: &quot;1.18.552&quot;,
            &quot;output_term&quot;: &quot;bidder_profile&quot;
        }
    }
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__2">Create a new profile that only targets
native inventory.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022ec__entry__3">JSON
File
<pre class="pre codeblock"><code>cat np_4.json
{
        &quot;bidder_profile&quot;: {
                &quot;targeting&quot;: {
                        &quot;ad_types&quot;: {
                                &quot;native&quot;: {
                                        &quot;action&quot;: &quot;include&quot;
                                }
                        }
                }
        }
}</code></pre>
<p>POST Call</p>
<pre class="pre codeblock"><code>curlpost bidder-profile?bidder_id=129 @np_4.json
Using: curl -b ./auth/apiprodcookie -c ./auth/apiprodcookie -X POST -d &#39;@np_4.json&#39; &quot;https://api.adnxs.com/bidder-profile?bidder_id=129&quot;  | json_reformat
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   588  100   484  100   104   3123    671 --:--:-- --:--:-- --:--:--  3142
{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;id&quot;: 67,
        &quot;bidder_profile&quot;: {
            &quot;id&quot;: 67,
            &quot;bidder_id&quot;: 129,
            &quot;code&quot;: null,
            &quot;description&quot;: null,
            &quot;targeting&quot;: {
                &quot;ad_types&quot;: {
                    &quot;banner&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;video&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;audio&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;native&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    }
                }
            },
            &quot;last_activity&quot;: &quot;2018-12-05 21:45:04&quot;,
            &quot;created_on&quot;: &quot;2018-12-05 21:45:04&quot;,
            &quot;active&quot;: false
        },
        &quot;dbg&quot;: {
            &quot;warnings&quot;: [
            ],
            &quot;version&quot;: &quot;1.18.923&quot;,
            &quot;output_term&quot;: &quot;bidder_profile&quot;
        }
    }
}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__1">3</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__2">Create a new profile that targets a
member (id 958).

Warning: <strong>Expected
Error</strong>: Members in Exchange 1 can only be excluded.
</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022ec__entry__3">JSON
File
<pre class="pre codeblock"><code> cat np_4.json
{
    &quot;bidder_profile&quot;: {
        &quot;targeting&quot;: {
            &quot;exchanges&quot;: {
                &quot;included_members&quot;: [{
                    &quot;id&quot;: 958
                }]
            }
        }
    }
}</code></pre>
<p>POST Call</p>
<pre class="pre codeblock"><code>curl -b ./auth/apiprodcookie -c ./auth/apiprodcookie -X POST -d &#39;@np_4.json&#39; &quot;https://api.adnxs.com/bidder-profile?bidder_id=129&quot;  | json_reformat
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   629  100   447  100   182   2066    841 --:--:-- --:--:-- --:--:--  2069
{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;id&quot;: 277,
        &quot;bidder_profile&quot;: {
            &quot;id&quot;: 277,
            &quot;bidder_id&quot;: 129,
            &quot;code&quot;: null,
            &quot;description&quot;: null,
            &quot;targeting&quot;: {
                &quot;exchanges&quot;: {
                    &quot;included_members&quot;: [
                        {
                            &quot;id&quot;: 958,
                            &quot;billing_name&quot;: &quot;AppNexus Services Network&quot;
                        }
                    ]
                }
            },
            &quot;last_activity&quot;: &quot;2018-12-05 21:43:42&quot;,
            &quot;created_on&quot;: &quot;2018-12-05 21:43:42&quot;,
            &quot;active&quot;: false
        },
        &quot;dbg&quot;: {
            &quot;warnings&quot;: [
            ],
            &quot;version&quot;: &quot;1.18.923&quot;,
            &quot;output_term&quot;: &quot;bidder_profile&quot;
        }
    }
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__1">4</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__2">Create a new profile that excludes Pesto
Harel Shemesh LTD (id 8495), a member in Exchange 3.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022ec__entry__3">JSON
File
<pre class="pre codeblock"><code> cat np_4.json
{
    &quot;bidder_profile&quot;: {
        &quot;targeting&quot;: {
            &quot;exchanges&quot;: {
                &quot;excluded_members&quot;: [{
                    &quot;id&quot;: 8945
                }]
            }
        }
    }
}</code></pre>
<p>POST Call</p>
<pre class="pre codeblock"><code>curl -b cookies -c cookies -X POST -d &#39;@np_4.json&#39; &quot;https://api.adnxs.com/bidder-profile?bidder_id=129&quot;  | json_reformat
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   755  100   572  100   183   2003    640 --:--:-- --:--:-- --:--:--  2000
{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;id&quot;: 14,
        &quot;bidder_profile&quot;: {
            &quot;id&quot;: 14,
            &quot;bidder_id&quot;: 129,
            &quot;code&quot;: null,
            &quot;description&quot;: null,
            &quot;targeting&quot;: {
                &quot;exchanges&quot;: {
                    &quot;excluded_members&quot;: [
                        {
                            &quot;id&quot;: 8945,
                            &quot;billing_name&quot;: &quot;Pesto Harel Shemesh LTD&quot;
                        }
                    ]
                },
                &quot;ad_types&quot;: {
                    &quot;banner&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;video&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;audio&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;native&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    }
                }
            },
            &quot;last_activity&quot;: &quot;2018-06-15 20:16:00&quot;,
            &quot;created_on&quot;: &quot;2018-06-15 20:16:00&quot;,
            &quot;active&quot;: false
        },
        &quot;dbg&quot;: {
            &quot;warnings&quot;: [
            ],
            &quot;version&quot;: &quot;1.18.594&quot;,
            &quot;output_term&quot;: &quot;bidder_profile&quot;
        }
    }
}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__1">5</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__2">Create a new active profile that targets
only banner inventory sized 200x100 and a domain list.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022ec__entry__3">JSON
File
<pre class="pre codeblock"><code> cat np_4.json
{
        &quot;bidder_profile&quot;: {
                &quot;targeting&quot;: {
                        &quot;ad_types&quot;: {
                                &quot;banner&quot;: {
                                        &quot;action&quot;: &quot;include&quot;,
                                        &quot;sizes&quot;: [{
                                                &quot;width&quot;: 200,
                                                &quot;height&quot;: 100
                                        }]
                                },
                                &quot;video&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;audio&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                },
                                &quot;native&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;
                                }
                        },
                        &quot;domain_lists&quot;: {
                                &quot;targets&quot;: [{
                                        &quot;id&quot;: 100675
                                }],
                                &quot;action&quot;: &quot;include&quot;
                        }
                },
                &quot;active&quot;: true
        }
}</code></pre>
<p>POST Call</p>
<pre class="pre codeblock"><code>curl -b cookies -c cookies -X POST -d &#39;@np_4.json&#39; &quot;https://api.adnxs.com/bidder-profile?bidder_id=129&quot;  | json_reformat
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1065  100   660  100   405   1872   1149 --:--:-- --:--:-- --:--:--  1875
{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;id&quot;: 16,
        &quot;bidder_profile&quot;: {
            &quot;id&quot;: 16,
            &quot;bidder_id&quot;: 129,
            &quot;code&quot;: null,
            &quot;description&quot;: null,
            &quot;targeting&quot;: {
                &quot;domain_lists&quot;: {
                    &quot;action&quot;: &quot;include&quot;,
                    &quot;targets&quot;: [
                        {
                            &quot;id&quot;: 100675,
                            &quot;name&quot;: &quot;Domains to exclude&quot;,
                            &quot;description&quot;: &quot;block facebook.com&quot;,
                            &quot;type&quot;: &quot;black&quot;
                        }
                    ]
                },
                &quot;ad_types&quot;: {
                    &quot;banner&quot;: {
                        &quot;action&quot;: &quot;include&quot;,
                        &quot;sizes&quot;: [
                            {
                                &quot;width&quot;: 200,
                                &quot;height&quot;: 100
                            }
                        ]
                    },
                    &quot;video&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;audio&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;native&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    }
                }
            },
            &quot;last_activity&quot;: &quot;2018-06-15 20:31:03&quot;,
            &quot;created_on&quot;: &quot;2018-06-15 20:31:03&quot;,
            &quot;active&quot;: true
        },
        &quot;dbg&quot;: {
            &quot;warnings&quot;: [
            ],
            &quot;version&quot;: &quot;1.18.594&quot;,
            &quot;output_term&quot;: &quot;bidder_profile&quot;
        }
    }
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__1">6</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__2">Create a new inactive profile that
excludes video inventory sized 100x100, excludes inventory with
non-english languages (inventory attribute id 17), and targets the
country France.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022ec__entry__3">JSON
File
<pre class="pre codeblock"><code> cat np_4.json
{
        &quot;bidder_profile&quot;: {
                &quot;targeting&quot;: {
                        &quot;ad_types&quot;: {
                                &quot;banner&quot;: {
                                        &quot;action&quot;: &quot;include&quot;
                                },
                                &quot;video&quot;: {
                                        &quot;action&quot;: &quot;exclude&quot;,
                                        &quot;sizes&quot;: [{
                                                &quot;width&quot;: 200,
                                                &quot;height&quot;: 100
                                        }]
                                },
                                &quot;audio&quot;: {
                                        &quot;action&quot;: &quot;include&quot;
                                },
                                &quot;native&quot;: {
                                        &quot;action&quot;: &quot;include&quot;
                                }
                        },
                        &quot;inventory_attributes&quot;: {
                                &quot;action&quot;: &quot;include&quot;,
                                &quot;targets&quot;: [{
                                        &quot;id&quot;: 2
                                }, {
                                        &quot;id&quot;: 4
                                }, {
                                        &quot;id&quot;: 6
                                }, {
                                        &quot;id&quot;: 8
                                }, {
                                        &quot;id&quot;: 10
                                }, {
                                        &quot;id&quot;: 12
                                }, {
                                        &quot;id&quot;: 16
                                }, {
                                        &quot;id&quot;: 17
                                }, {
                                        &quot;id&quot;: 29
                                }]
                        },
                        &quot;countries&quot;: {
                                &quot;action&quot;: &quot;include&quot;,
                                &quot;targets&quot;: [{
                                        &quot;id&quot;: 78
                                }]
                        }
                }
        }
}</code></pre>
<p>POST Call</p>
<pre class="pre codeblock"><code>curl -b cookies -c cookies -X POST -d &#39;@np_4.json&#39; &quot;https://api.adnxs.com/bidder-profile?bidder_id=129&quot;  | json_reformat
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1656  100  1018  100   638   2241   1405 --:--:-- --:--:-- --:--:--  2237
{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;id&quot;: 19,
        &quot;bidder_profile&quot;: {
            &quot;id&quot;: 19,
            &quot;bidder_id&quot;: 129,
            &quot;code&quot;: null,
            &quot;description&quot;: null,
            &quot;targeting&quot;: {
                &quot;countries&quot;: {
                    &quot;action&quot;: &quot;include&quot;,
                    &quot;targets&quot;: [
                        {
                            &quot;id&quot;: 78,
                            &quot;name&quot;: &quot;France&quot;,
                            &quot;code&quot;: &quot;FR&quot;,
                            &quot;active&quot;: true
                        }
                    ]
                },
                &quot;inventory_attributes&quot;: {
                    &quot;action&quot;: &quot;include&quot;,
                    &quot;targets&quot;: [
                        {
                            &quot;id&quot;: 2,
                            &quot;name&quot;: &quot;Political&quot;
                        },
                        {
                            &quot;id&quot;: 4,
                            &quot;name&quot;: &quot;Social media&quot;
                        },
                        {
                            &quot;id&quot;: 6,
                            &quot;name&quot;: &quot;Photo &amp; video sharing&quot;
                        },
                        {
                            &quot;id&quot;: 8,
                            &quot;name&quot;: &quot;Forums (moderated)&quot;
                        },
                        {
                            &quot;id&quot;: 10,
                            &quot;name&quot;: &quot;Forums (unmoderated)&quot;
                        },
                        {
                            &quot;id&quot;: 12,
                            &quot;name&quot;: &quot;Incentivized clicks&quot;
                        },
                        {
                            &quot;id&quot;: 16,
                            &quot;name&quot;: &quot;Streaming media&quot;
                        },
                        {
                            &quot;id&quot;: 17,
                            &quot;name&quot;: &quot;Toolbars, plugins, or extensions&quot;
                        },
                        {
                            &quot;id&quot;: 29,
                            &quot;name&quot;: &quot;Contextual Nudity&quot;
                        }
                    ]
                },
                &quot;ad_types&quot;: {
                    &quot;banner&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;video&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;,
                        &quot;sizes&quot;: [
                            {
                                &quot;width&quot;: 200,
                                &quot;height&quot;: 100
                            }
                        ]
                    },
                    &quot;audio&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;native&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    }
                }
            },
            &quot;last_activity&quot;: &quot;2018-06-15 20:52:43&quot;,
            &quot;created_on&quot;: &quot;2018-06-15 20:52:43&quot;,
            &quot;active&quot;: false
        },
        &quot;dbg&quot;: {
            &quot;warnings&quot;: [
            ],
            &quot;version&quot;: &quot;1.18.594&quot;,
            &quot;output_term&quot;: &quot;bidder_profile&quot;
        }
    }
}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__1">7</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__entry__2">Create a new profile that targets video
inventory sized 1x1.

Warning: <strong>Expected
Error</strong>: User can not target the size 1x1 or 0x0.
</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022ec__entry__3">JSON
File
<pre class="pre codeblock"><code>cat np_4.json
{
        &quot;bidder_profile&quot;: {
                &quot;targeting&quot;: {
                        &quot;ad_types&quot;: {
                                &quot;video&quot;: {
                                        &quot;action&quot;: &quot;include&quot;,
                                        &quot;sizes&quot;: [{
                                                &quot;width&quot;: 1,
                                                &quot;height&quot;: 1
                                        }]
                                }
                        }
                }
        }
}</code></pre>
<p>POST Call</p>
<pre class="pre codeblock"><code>curl -b cookies -c cookies -X POST -d &#39;@np_4.json&#39; &quot;https://api.adnxs.com/bidder-profile?bidder_id=129&quot;  | json_reformat
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   897  100   263  100   634   2322   5599 --:--:-- --:--:-- --:--:--  5610
{
    &quot;response&quot;: {
        &quot;error_id&quot;: &quot;SYNTAX&quot;,
        &quot;error&quot;: &quot;1x1 and 0x0 sizes aren&#39;t valid for video size&quot;,
        &quot;error_description&quot;: null,
        &quot;error_code&quot;: &quot;INVALID_VIDEO_SIZE&quot;,
        &quot;service&quot;: &quot;bidder-profile&quot;,
        &quot;method&quot;: &quot;POST&quot;,
        &quot;dbg&quot;: {
            &quot;warnings&quot;: [
            ],
            &quot;version&quot;: &quot;1.18.594&quot;,
            &quot;output_term&quot;: &quot;not_found&quot;
        }
    }
}</code></pre></td>
</tr>
</tbody>
</table>



<div id="ID-000022ec__section_vyw_kjt_mwb" >

## Modify Existing Profile

<table id="ID-000022ec__table_wyw_kjt_mwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000022ec__table_wyw_kjt_mwb__entry__1"
class="entry colsep-1 rowsep-1">ID</th>
<th id="ID-000022ec__table_wyw_kjt_mwb__entry__2"
class="entry colsep-1 rowsep-1">Action</th>
<th id="ID-000022ec__table_wyw_kjt_mwb__entry__3"
class="entry colsep-1 rowsep-1">Example JSON Files and Calls</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__table_wyw_kjt_mwb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__table_wyw_kjt_mwb__entry__2">Remove targeting on
all exchanges from an existing profile.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__table_wyw_kjt_mwb__entry__3">Existing Profile
<pre id="ID-000022ec__codeblock_xyw_kjt_mwb"
class="pre codeblock"><code>{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;id&quot;: &quot;11&quot;,
        &quot;bidder_profile&quot;: {
            &quot;id&quot;: 11,
            &quot;bidder_id&quot;: 129,
            &quot;code&quot;: null,
            &quot;description&quot;: null,
            &quot;targeting&quot;: {
                &quot;exchanges&quot;: {
                    &quot;action&quot;: &quot;include&quot;,
                    &quot;targets&quot;: [
                        {
                            &quot;id&quot;: 1,
                            &quot;name&quot;: &quot;Direct&quot;
                        }
                    ]
                },
                &quot;ad_types&quot;: {
                    &quot;banner&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;video&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;audio&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;native&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    }
                }
            },
            &quot;last_activity&quot;: &quot;2018-05-30 21:59:47&quot;,
            &quot;created_on&quot;: &quot;2018-05-30 21:58:53&quot;,
            &quot;active&quot;: false
        },
        &quot;dbg&quot;: {
            &quot;warnings&quot;: [
            ],
            &quot;version&quot;: &quot;1.18.552&quot;,
            &quot;output_term&quot;: &quot;bidder_profile&quot;
        }
    }
}</code></pre>
<p>JSON File to Remove Exchanges</p>
<pre id="ID-000022ec__codeblock_yyw_kjt_mwb"
class="pre codeblock"><code>cat np_3
{
        &quot;bidder_profile&quot;:{
                &quot;targeting&quot;:{
                        &quot;exchanges&quot;:{&quot;targets&quot;:[]}
                }
        }
}</code></pre>
<p>PUT Call</p>
<pre id="ID-000022ec__codeblock_zyw_kjt_mwb"
class="pre codeblock"><code>curl -b cookies -c cookies -X PUT -d &#39;@np_3&#39; &quot;https://api.adnxs.com/bidder-profile/129/11&quot;  | json_reformat
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   725  100   585  100   140   1811    433 --:--:-- --:--:-- --:--:--  1811
{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;id&quot;: &quot;11&quot;,
        &quot;bidder_profile&quot;: {
            &quot;id&quot;: 11,
            &quot;bidder_id&quot;: 129,
            &quot;code&quot;: null,
            &quot;description&quot;: null,
            &quot;targeting&quot;: {
                &quot;ad_types&quot;: {
                    &quot;banner&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;video&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;audio&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    },
                    &quot;native&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    }
                }
            },
            &quot;last_activity&quot;: &quot;2018-05-30 22:00:25&quot;,
            &quot;created_on&quot;: &quot;2018-05-30 21:58:53&quot;,
            &quot;active&quot;: false
        },
        &quot;dbg&quot;: {
            &quot;warnings&quot;: [
            ],
            &quot;version&quot;: &quot;1.18.552&quot;,
            &quot;output_term&quot;: &quot;bidder_profile&quot;
        }
    }
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__table_wyw_kjt_mwb__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__table_wyw_kjt_mwb__entry__2">Activate an existing
profile

Note: By default, profiles are
inactive. In order for them to be in effect, the active flag will have
to be set to true.
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__table_wyw_kjt_mwb__entry__3">Existing Profile
<pre id="ID-000022ec__codeblock_bzw_kjt_mwb"
class="pre codeblock"><code>curl -b cookies -c cookies -X POST -d &#39;@np_4.json&#39; &quot;https://api.adnxs.com/bidder-profile?bidder_id=129&quot;  | json_reformat
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   676  100   484  100   192   2364    937 --:--:-- --:--:-- --:--:--  2372
{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;id&quot;: 13,
        &quot;bidder_profile&quot;: {
            &quot;id&quot;: 13,
            &quot;bidder_id&quot;: 129,
            &quot;code&quot;: null,
            &quot;description&quot;: null,
            &quot;targeting&quot;: {
                &quot;ad_types&quot;: {
                    &quot;banner&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;video&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;audio&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;native&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    }
                }
            },
            &quot;last_activity&quot;: &quot;2018-06-13 20:25:21&quot;,
            &quot;created_on&quot;: &quot;2018-06-13 20:25:21&quot;,
            &quot;active&quot;: false
        },
        &quot;dbg&quot;: {
            &quot;warnings&quot;: [
            ],
            &quot;version&quot;: &quot;1.18.591&quot;,
            &quot;output_term&quot;: &quot;bidder_profile&quot;
        }
    }
}</code></pre>
<p>JSON File</p>
<pre id="ID-000022ec__codeblock_czw_kjt_mwb"
class="pre codeblock"><code>cat np_4.json
{
        &quot;bidder_profile&quot;: {
                &quot;active&quot;: true
        }
}</code></pre>
<p>PUT Call</p>
<pre id="ID-000022ec__codeblock_dzw_kjt_mwb"
class="pre codeblock"><code>curl -b cookies -c cookies -X PUT -d &#39;@np_4.json&#39; &quot;https://api.adnxs.com/bidder-profile/129/13&quot;  | json_reformat
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   522  100   485  100    37   1212     92 --:--:-- --:--:-- --:--:--  1212
{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;id&quot;: &quot;13&quot;,
        &quot;bidder_profile&quot;: {
            &quot;id&quot;: 13,
            &quot;bidder_id&quot;: 129,
            &quot;code&quot;: null,
            &quot;description&quot;: null,
            &quot;targeting&quot;: {
                &quot;ad_types&quot;: {
                    &quot;banner&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;video&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;audio&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;native&quot;: {
                        &quot;action&quot;: &quot;include&quot;
                    }
                }
            },
            &quot;last_activity&quot;: &quot;2018-06-13 20:47:01&quot;,
            &quot;created_on&quot;: &quot;2018-06-13 20:25:21&quot;,
            &quot;active&quot;: true
        },
        &quot;dbg&quot;: {
            &quot;warnings&quot;: [
            ],
            &quot;version&quot;: &quot;1.18.591&quot;,
            &quot;output_term&quot;: &quot;bidder_profile&quot;
        }
    }
}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__table_wyw_kjt_mwb__entry__1">3</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__table_wyw_kjt_mwb__entry__2">Remove banner size
targeting on an existing profile.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022ec__table_wyw_kjt_mwb__entry__3">Existing Profile
<pre id="ID-000022ec__codeblock_ezw_kjt_mwb"
class="pre codeblock"><code>curl -b cookies -c cookies -X PUT -d &#39;@np_4.json&#39; &quot;https://api.adnxs.com/bidder-profile/129/16&quot;  | json_reformat
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   781  100   662  100   119   1999    359 --:--:-- --:--:-- --:--:--  1993
{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;id&quot;: &quot;16&quot;,
        &quot;bidder_profile&quot;: {
            &quot;id&quot;: 16,
            &quot;bidder_id&quot;: 129,
            &quot;code&quot;: null,
            &quot;description&quot;: null,
            &quot;targeting&quot;: {
                &quot;domain_lists&quot;: {
                    &quot;action&quot;: &quot;include&quot;,
                    &quot;targets&quot;: [
                        {
                            &quot;id&quot;: 100675,
                            &quot;name&quot;: &quot;Domains to exclude&quot;,
                            &quot;description&quot;: &quot;block facebook.com&quot;,
                            &quot;type&quot;: &quot;black&quot;
                        }
                    ]
                },
                &quot;ad_types&quot;: {
                    &quot;banner&quot;: {
                        &quot;action&quot;: &quot;include&quot;,
                        &quot;sizes&quot;: [
                            {
                                &quot;width&quot;: 200,
                                &quot;height&quot;: 100
                            }
                        ]
                    },
                    &quot;video&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;audio&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;native&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    }
                }
            },
            &quot;last_activity&quot;: &quot;2018-06-15 21:06:36&quot;,
            &quot;created_on&quot;: &quot;2018-06-15 20:31:03&quot;,
            &quot;active&quot;: true
        },
        &quot;dbg&quot;: {
            &quot;warnings&quot;: [
            ],
            &quot;version&quot;: &quot;1.18.594&quot;,
            &quot;output_term&quot;: &quot;bidder_profile&quot;
        }
    }
}</code></pre>
<p>JSON File</p>
<pre id="ID-000022ec__codeblock_fzw_kjt_mwb"
class="pre codeblock"><code>cat np_4.json
{
        &quot;bidder_profile&quot;: {
                &quot;targeting&quot;: {
                        &quot;ad_types&quot;: {
                                &quot;banner&quot;: {
                                        &quot;action&quot;: &quot;include&quot;,
                                        &quot;sizes&quot;:[]
                                }
                        }
                }
        }
}</code></pre>
<p>PUT Call</p>
<pre id="ID-000022ec__codeblock_gzw_kjt_mwb"
class="pre codeblock"><code>curl -b cookies -c cookies -X PUT -d &#39;@np_4.json&#39; &quot;https://api.adnxs.com/bidder-profile/129/16&quot;  | json_reformat
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   756  100   636  100   120   3211    606 --:--:-- --:--:-- --:--:--  3228
{
    &quot;response&quot;: {
        &quot;status&quot;: &quot;OK&quot;,
        &quot;count&quot;: 1,
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;id&quot;: &quot;16&quot;,
        &quot;bidder_profile&quot;: {
            &quot;id&quot;: 16,
            &quot;bidder_id&quot;: 129,
            &quot;code&quot;: null,
            &quot;description&quot;: null,
            &quot;targeting&quot;: {
                &quot;domain_lists&quot;: {
                    &quot;action&quot;: &quot;include&quot;,
                    &quot;targets&quot;: [
                        {
                            &quot;id&quot;: 100675,
                            &quot;name&quot;: &quot;Domains to exclude&quot;,
                            &quot;description&quot;: &quot;block facebook.com&quot;,
                            &quot;type&quot;: &quot;black&quot;
                        }
                    ]
                },
                &quot;ad_types&quot;: {
                    &quot;banner&quot;: {
                        &quot;action&quot;: &quot;include&quot;,
                        &quot;sizes&quot;: [
                        ]
                    },
                    &quot;video&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;audio&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    },
                    &quot;native&quot;: {
                        &quot;action&quot;: &quot;exclude&quot;
                    }
                }
            },
            &quot;last_activity&quot;: &quot;2018-06-15 21:06:50&quot;,
            &quot;created_on&quot;: &quot;2018-06-15 20:31:03&quot;,
            &quot;active&quot;: true
        },
        &quot;dbg&quot;: {
            &quot;warnings&quot;: [
            ],
            &quot;version&quot;: &quot;1.18.594&quot;,
            &quot;output_term&quot;: &quot;bidder_profile&quot;
        }
    }
}</code></pre></td>
</tr>
</tbody>
</table>



<div id="ID-000022ec__section_hzw_kjt_mwb" >

## Related Topics

- <a href="enhanced-bidder-profiles.html" class="xref">Enhanced Bidder
  Profiles</a>

- <a href="exchange-service.html" class="xref">Exchange Service</a>

- <a
  href="hierarchy-and-ad-type-targeting-for-enhanced-bidder-profiles.html"
  class="xref">Hierarchy and Ad Type Targeting for Enhanced Bidder
  Profiles</a>

- <a
  href="frequently-asked-questions-faq-for-enhanced-bidder-profiles.html"
  class="xref">Frequently Asked Questions (FAQ) for Enhanced Bidder
  Profiles</a>

- <a href="changelog-for-enhanced-bidder-profiles.html"
  class="xref">Changelog for Enhanced Bidder Profiles</a>

- <a href="bidder-profile-migration-guide.html" class="xref">Bidder
  Profile Migration Guide</a>






