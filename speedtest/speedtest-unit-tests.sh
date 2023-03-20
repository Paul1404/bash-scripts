# Test that the script can download the file and measure the download speed:

#!/bin/bash

# Set the URL to download
url="https://speed.hetzner.de/100MB.bin"

# Set the number of iterations and the size of the file to download
num_iterations=1
file_size="100M"

# Loop through the iterations and measure the download speed
for (( i=1; i<=$num_iterations; i++ ))
do
    echo "Running iteration $i..."

    # Use wget to download the file and measure the download speed
    download_result=$(wget -O /dev/null $url 2>&1)
    download_speed=$(echo $download_result | grep -oP "\d+\.\d+\s\w+/s")

    # Check that the download speed is not empty
    if [[ -z $download_speed ]]; then
        echo "Error: download speed is empty."
        exit 1
    fi

    echo "Download speed: $download_speed"
done

# Test that the script can handle multiple iterations:

#!/bin/bash

# Set the URL to download
url="https://speed.hetzner.de/100MB.bin"

# Set the number of iterations and the size of the file to download
num_iterations=3
file_size="100M"

# Loop through the iterations and measure the download speed
for (( i=1; i<=$num_iterations; i++ ))
do
    echo "Running iteration $i..."

    # Use wget to download the file and measure the download speed
    download_result=$(wget -O /dev/null $url 2>&1)
    download_speed=$(echo $download_result | grep -oP "\d+\.\d+\s\w+/s")

    # Check that the download speed is not empty
    if [[ -z $download_speed ]]; then
        echo "Error: download speed is empty."
        exit 1
    fi

    echo "Download speed: $download_speed"
done



# Test that the script can handle different file sizes:

#!/bin/bash

# Set the URL to download
url="https://speed.hetzner.de/1GB.bin"

# Set the number of iterations and the size of the file to download
num_iterations=1
file_size="1G"

# Loop through the iterations and measure the download speed
for (( i=1; i<=$num_iterations; i++ ))
do
    echo "Running iteration $i..."

    # Use wget to download the file and measure the download speed
    download_result=$(wget -O /dev/null $url 2>&1)
    download_speed=$(echo $download_result | grep -oP "\d+\.\d+\s\w+/s")

    # Check that the download speed is not empty
    if [[ -z $download_speed ]]; then
        echo "Error: download speed is empty."
        exit 1
    fi

    echo "Download speed: $download_speed"
done
