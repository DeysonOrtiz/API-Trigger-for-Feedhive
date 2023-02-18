# API-Trigger-for-Feedhive

API Trigger Script

This script sends an API request to the Feedhive API, with encoded variables in the query string. It can be used to trigger events or send data to other systems.

Prerequisites

curl: the script uses the curl command-line tool to send HTTP requests. Make sure it is installed on your system before running the script.
Usage

To use the script, open it in a text editor and modify the variables at the top of the script with the desired values:

makefile
Copy code
# Define variables
TITLE_OF_VIDEO="Your title of video text here"
VIDEO_DISCUSS="Your video discuss text here"
LINK_TO_VIDEO="Your link to video text here"
Replace each variable with the corresponding text you want to send in the API request.
Add you API LINK code
Save the script and then run it from the command line:

bash
Copy code
./trigger_api.sh
The script will automatically encode the variables and send the API request using curl.

Contributing

Contributions to this project are welcome. If you find a bug, have a feature request, or would like to suggest an improvement, please open an issue or submit a pull request.

License

This project is licensed under the MIT License. See the LICENSE file for details.

