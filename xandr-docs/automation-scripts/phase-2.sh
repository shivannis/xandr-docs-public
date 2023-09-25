#!/bin/bash
unset LANG

#!/bin/bash
unset LANG

# Set the source directory path
source_directory=/"Users/rupam/Documents/Data_Migration/Conversion/html"

# Set the destination directory path and new name
output_directory="$source_directory-output"

# Create a copy of the source directory and rename it
#cp -r "$source_directory" "$output_directory"

# convert all html files of output directory to markdown using pandoc and rename the file from file.html to file.md
find "$output_directory" -type f -name "*.html" -exec sh -c 'pandoc -f html -t commonmark -o "${0%.html}.md" "$0"' {} \;

#delete all html files in output directory
find "$output_directory" -type f -name "*.html" -delete

#delete all css files in output directory
find "$output_directory" -type f -name "*.css" -delete

#remove all <div role="main"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div role="main">//g' {} \;

#remove all <div class="body refbody"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="body refbody">//g' {} \;

#remove all <div class="body taskbody"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="body taskbody">//g' {} \;

#remove all <div class="itemgroup stepresult"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="itemgroup stepresult">//g' {} \;

#remove all <div class="section section"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="section section">//g' {} \;

#remove all class="section section" tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/class="section section"//g' {} \;

#remove all class="section section prereq"  tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/class="section section prereq"//g' {} \;

#remove all class="p" tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/class="p"//g' {} \;

#remove all <div class="note note note_note"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="note note note_note">//g' {} \;

#remove all <div class="itemgroup info">  tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="itemgroup info">//g' {} \;

#remove all <div class="section section postreq"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="section section postreq">//g' {} \;

# remove all <span class="ph cmd"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<span class="ph cmd">//g' {} \;

# remove all <span class="keyword wintitle"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<span class="keyword wintitle">//g' {} \;

#remove all <span class="ph uicontrol"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<span class="ph uicontrol">//g' {} \;

#remove all <span class="ph"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<span class="ph">//g' {} \;

#remove all <span class="ph"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<span class="ph">//g' {} \;

#remove all <span class="note__title"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<span class="note__title">//g' {} \;

#remove all class="note note note_note"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/class="note note note_note">//g' {} \;

#remove all <div class="section section context"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="section section context">//g' {} \;

#remove all <div class="note tip note_tip"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="note tip note_tip">//g' {} \;

#remove all <span class="ph menucascade"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<span class="ph menucascade">//g' {} \;

# remove all <div id="*" class="*"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div id="[^<]*" class="[^<]*">//g' {} \;

# remove all class="section section postreq" tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/class="section section postreq"//g' {} \;

#remove all class="section" tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/class="section"//g' {} \;

#remove all <div class="body conbody"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="body conbody">//g' {} \;

#remove all <div class="section section prereq"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="section section prereq">//g' {} \;

#remove all <div class="p"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="p">//g' {} \;

#remove all <div class="note warning note_warning"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="note warning note_warning">//g' {} \;

#remove all <div class="note important note_important"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="note important note_important">//g' {} \;

#remove all <div class="section"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="section">//g' {} \;

#remove all <div class="body"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="body">//g' {} \;

#remove all <div > tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div >//g' {} \;

#remove all <div class="note note_note"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="note note_note">//g' {} \;

#remove all <div class="sectiondiv"> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<div class="sectiondiv">//g' {} \;

#remove all </div> and </span> tags from the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<\/div>//g' {} \;
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/<\/span>//g' {} \;

#rename "Xandr Invest" to "Microsoft Invest" in the markdown files
find "$output_directory" -type f -name "*.md" -exec sed -i '' 's/Xandr Invest/Microsoft Invest/g' {} \;

#find <table class="table"> tag in the markdown files and create a log file with file names and line number
find "$output_directory" -type f -name "*.md" -exec grep -Hn "<table class=\"table\">" {} \; > "$output_directory/pages_with_table.log"

# find unique .md file names in the log file and remove duplicate lines
cat "$output_directory/pages_with_table.log" | cut -d ":" -f 1 | sort | uniq > "$output_directory/pages_with_tables.log"



#append metadata to the markdown files
# shell script to read all files under a directory
input="$output_directory/html/*"
output="$output_directory/clean_files"

for file in $input
do
  if [ -d "$file" ]
  then
    echo "$file is a directory"
  else
    echo "$file is a file"
    # extract filename from path
    filename=$(basename -- "$file")
    # read first non empty line of the file to title
    title=$(cat "$file" | grep -v '^$'| head -n 1)
    # replace all # with empty string trim spaces at front and back
    title=$(echo "$title" | sed 's/#//g' | sed 's/^ *//g' | sed 's/ *$//g') 
    # read second non empty line of the file to description
    description=$(cat "$file" | grep -v '^$'| sed '1d' | sed '/\./q' | sed 's/^ *//g' | sed 's/ *$//g')

    # create a output file (output + title.md) with the title and description at top and the rest of the file below
    echo "---" > "$output/$filename"
    echo "Title : $title" >> "$output/$filename"
    echo "Description : $description" >> "$output/$filename"
    echo "---" >> "$output/$filename"
    cat "$file" >> "$output/$filename"
  fi
done

