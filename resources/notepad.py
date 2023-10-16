import pyautogui
import time
import os

os.system("start notepad")

time.sleep(2)

pyautogui.hotkey("ctrl", "o")

time.sleep(2)

file_path = r"C:\Users\Danil Akulin\Desktop\Test\Test.txt"
pyautogui.write(file_path)

pyautogui.press("enter")

time.sleep(2)

os.system("taskkill /f /im notepad.exe")
