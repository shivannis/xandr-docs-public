#!/bin/bash
unset LANG

# Set the source directory path
source_directory="/Users/rupam/Documents/Data_Migration/Conversion/sample-dita-files"

# Set the destination directory path and new name
output_directory="$source_directory-output"

# Create a copy of the source directory and rename it
cp -r "$source_directory" "$output_directory"

# create a input_files.log file in the output directory and list all the dita files and a at the end list a count of all of the files
find "$output_directory" -type f -name "*.dita" > "$output_directory/input_files.log"
echo "Total number of input files: $(wc -l < "$output_directory/input_files.log")" >> "$output_directory/input_files.log"

# Loop through each subdirectory in the output directory and convert to xhtml
for dir in "$output_directory"/*/
  do
    # Get the directory name
    dirname=$(basename "$dir")

    # find the ditamap file with the same name as the dirname
    baseditamap=$(find "$dir" -type f -name "$dirname.ditamap")

    #find the keydefs-invest.ditamap file in the directory
    keydefs_invest_path=$(find "$dir" -type f -name "keydefs-invest.ditamap")

    # find dita files in the directory and sub directories reffered by the ditamap file and copy them to the output directory

    # find "$dir" -type f -name "*.dita" -exec cp {} "$output_directory/$dirname" \;

    # convert the dita files in output directory to xhtml and put them in a directory with the same name as the dirname
    dita --input="$output_directory/$dirname" --args.resources="$keydefs_invest_path" --format=xhtml --output="$output_directory/$dirname-output" --logfile="$output_directory/output.log"

    
    # dita --input="$baseditamap" --args.resources="$keydefs_invest_path" --format=xhtml --output="$output_directory/$dirname-output" --logfile="$output_directory/output.log"

    # dita --input="$baseditamap" --args.resources="$keydefs_invest_path" --format=xhtml --output="$output_directory/$dirname-output" --logfile="$output_directory/output.log"

    # if there is a snippets directory, for each dita file in that directory, convert to markdown and put them in a snippets directory.
    if [ -d "$dir/snippets" ]; then
      for snippet in "$dir/snippets"/*.dita
        do
          snippetname=$(basename "$snippet" .dita)
          dita --input="$snippet" --format=xhtml --output="$output_directory/$dirname-output/snippets/" --logfile="$output_directory/output.log"
        done
    fi    

    # delete the directory
    rm -rf "$output_directory/$dirname"

   # rename the directory
    mv "$output_directory/$dirname-output" "$output_directory/$dirname"

    # create an attachment_files.log file in the output directory and list all the .xls, .xlsx, .zip, .pdf files in the attachments directory and at the end list a count of all of the files
    find "$output_directory/$dirname" -type f \( -name "*.xls" -o -name "*.xlsx" -o -name "*.zip" -o -name "*.pdf" \) > "$output_directory/attachment_files.log"
    echo "Total number of attachment files: $(wc -l < "$output_directory/attachment_files.log")" >> "$output_directory/attachment_files.log"

  done

# Loop through each subdirectory in the output directory and convert to markdown using pandoc
for dir in "$output_directory"/*/
  do
    # Get the directory name
    dirname=$(basename "$dir")
    
    # find all of the html files in the directory and sub directories and convert the .html files to .md files using pandoc and rename the file from file.html to file.md
    find "$dir" -type f -name "*.html" -exec sh -c 'pandoc -f html -t commonmark -o "${0%.html}.md" "$0"' {} \;

    #delete all of the .css files and .html files in the directory and sub directories
    find "$dir" -type f -name "*.css" -delete
    find "$dir" -type f -name "*.html" -delete

  done

# remove the "row" class from class attribute in tr tags in the markdown files but keep the other classes.
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/ class="\([^"]*\)row\([^"]*\)"/ class="\1\2"/g' {} \;
# delete all instances of style="something here" in the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' -e ':a' -e 'N' -e '$!ba' -e 's| style="[^\"]*"||g' {} \;

# create an output_files.log file in the output directory and list all the md files and at the end list a count of all of the files
find "$output_directory" -type f -name "*.md" > "$output_directory/output_files.log"
echo "Total number of output files: $(wc -l < "$output_directory/output_files.log")" >> "$output_directory/output_files.log"

echo "Completed conversion of DITA files to html to Markdown"

