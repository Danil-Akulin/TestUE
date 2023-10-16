*** Settings ***
Library    OperatingSystem

*** Tasks ***
Automate Notepad
    ${result}    Run    python resources/notepad.py
    Log    ${OUTPUT_FILE}