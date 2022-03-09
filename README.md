# Apex-Duration
This repository contains 2 files. One file test the other one.
# UTIL_Duration_Test.cls
This file sets all the test methode you need to test the other methodes in file UTIL_Duration.cls
# UTIL_Duration.cls
This class has a constructor wich takes as parametters two DateTime types. You need one start date and time, and one end date and time.
A first method calculates a Time in Milliseconds : calculateTimeInMS().
A second method calculates a length of time and express it in a String : generateAStringFromMS(Long timeInMilliseconds). The later method requieres a Long as parametter, to express a duration. Good practice is to leave the conditions in that order so as to keep the methode working.
