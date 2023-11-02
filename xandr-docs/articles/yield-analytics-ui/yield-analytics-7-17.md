---
Title : Yield Analytics 7.17
Description : ## Feature Enhancements
ms.date : 10/28/2023
ms.custom : yield-analytics-ui
We have created an option to "Update All" datasets, when there are
multiple datasets in reports. This will eliminate the need to go into
---


# Yield Analytics 7.17





## Feature Enhancements

We have created an option to "Update All" datasets, when there are
multiple datasets in reports. This will eliminate the need to go into
each dataset to change a single metric filter.

1.  Single dataset
    1.  Normal operation
    2.  \*Update All\* not visible
2.  Add dataset
    1.  \*Update All\* immediately visible
    2.  This should be a clone of the current dataset
3.  Click \*Update All\* (each filter type)
    1.  Initial dataset
        1.  Standard date range should be set on other DS's
    2.  Subsequent/cloned dataset
        1.  Custom date range should be set on other DS's (including
            initial)
4.  Click \*Update\* (each filter type, w/multi datasets)
    1.  Filter should update on the current dataset only.
5.  Open saved report
    1.  Single dataset
        1.  \*Update All\* should not be visible
    2.  Multi dataset
        1.  \*Update All\* should be visible

        2.  Within Find Products the metadata model now allows you to
            link directly to Target Visibility.

            There is also a horizontal scroll bar to allow you to better
            access the data.





## Fixes

- Corrected discrepancies between what we are showing in analyze
  overlaps vs. what is shown in availability look up - when running
  overlaps between attribute values.
- Fixed session persistence issues within Saved Lookup Edit.





<a href="release-notes.md" class="link">Release Notes</a>






