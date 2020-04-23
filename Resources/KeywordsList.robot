***Keywords***
#Below Keyword is Defined for logging into the EmpxTrack Website
Login to empxtrack

    Open Browser
    Maximize Browser Window  
    Go To  ${url}
    Element Should Be Visible  id:usr_1  message="Id not available"    
    Input Text  id:usr_1  ${id_name}
    Input Text  name:password  ${input_password}
    Input Text  id:location  ${input_company}
    Click Element  ${submit_css}
    Log  Login Successful
    Sleep  5s

#Below Keyword is Defined for finding if the Attendance is marked for the Day or not

Attendance Status and Marking

    Element Should Be Visible  css:.item > .slide-desktop  message="Id not available"
    CLick Element  id:attendanceWidget
    Sleep  2s

   ${IsElementVisible}=  Run Keyword And Return Status    Element Should Be Visible   css:.col-md-7>a

    Run Keyword if  ${IsElementVisible}    Need to mark attendance
    ...  ELSE  Attendance already marked
    
#Below Keyword is Defined when Attendance need to be marked

Need to mark attendance   
    Log  The attendance for the day has to be marked
    Attendance Marking
    
#Below Keyword is Defined when Attendace is already marked for the day

Attendance already marked
    Log  The attendance has already been marked

#Below Keyword is Defined for Attendance Marking

Attendance Marking
    Click Element  css:.col-md-7 > a
    Log  Attendance has been marked
    Sleep  3s

#Below Keyword is Defined for Logging off and closing the browser

Logging off
    Click Element  css:.img-emp>.icon-v
    Sleep  2s
    CLick Element  css:[class|="btn btn-default btn-pos"]
    Sleep  2s
    Close Browser  