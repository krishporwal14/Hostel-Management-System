import os
import platform

report_file_path = "E:/study/Btech IT/2nd Year/4th sem/DBMS/Project/Hostel Management System.pbix"

if platform.system() == "Windows":
    os.startfile(report_file_path)
elif platform.system() == "Darwin":
    os.system("open " + report_file_path)
elif platform.system() == "Linux":
    os.system("xdg-open " + report_file_path)
else:
    raise NotImplementedError("Unsupported operating system")
