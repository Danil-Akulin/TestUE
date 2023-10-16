*** Settings ***
Documentation   Открыть файл с использованием Notepad
Library         AutoItLibrary
Library         Process
Library         OperatingSystem
Library         SikuliLibrary

*** Test Cases ***
Открыть файл с Notepadd
    ${file_path}=    Set Variable    C:\Users\Danil Akulin\Desktop\Test\Test.txt
    Run    notepad.exe
    Sleep    2s

    # Используем SikuliLibrary для нажатия Ctrl + O
    Click   Ctrl    # Нажать клавишу Ctrl
    Type    o       # Нажать клавишу O

    # Ждем появления окна "Открыть файл"
    Wait For Active Window    Открыть

    # Вводим путь к файлу и нажимаем Enter
    Send    ${file_path}
    Send    {ENTER}