# ExpTrack-Automation
This repository contains the code which automates the attendance marking in Empxtrack using Robot-Framework.

# Prerequisites
The login credentials  need to be updated in the Resources.robot file present in the Resource folder.
Make sure Selenium Library is installed as the framework uses selenium library for automation process.
The code runs on Firefox driver that as been set in the PATH environment variable.
You can run the following commands and install the Firefox Driver with thhe help of pip

```
pip install webdrivermanager
webdrivermanager firefox  --linkpath /usr/local/bin
```

# Running the program

Run the program using the MainExecution.robot file.
Results folder can be used to store the execution/test results.
Use the following command tto run the script
```
robot -d Results Tests/MainExecution.robot