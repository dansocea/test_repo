# Check if a file is provided as an argument
#if [ $# -eq 0 ]; then
#    echo "Error: No file provided."
#    echo "Usage: ./script.sh <file>"
#    exit 1
#fi

file=textfile.txt

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "Error: File '$file' does not exist."
    exit 1
fi

# Read the file line by line
while IFS= read -r line; do
    # Check if the line does not start with #
    if [[ ! $line =~ ^\# ]]; then
        echo "$line"
    fi
done < "$file"