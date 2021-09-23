import string
import sys
import os

DEFAULT_PASSWD = ""
DEFAULT_DEST = ""
DEFAULT_PORT = ""
FORMAT_STR = ""


def Help():
    print("./assignment_copier.py [file1] [file2] ...\n")
    print("  -P [PASS]\n  -d [DEST]\n  -p [PORT]\n  -F [FORMAT_STRING]")
    
    
def GetArgs():
    if "-h" in sys.argv:
        Help();
        exit();
    
    if "-F" in sys.argv:
        FORMAT_STR = sys.argv[sys.argv.index("-F")+1]
        sys.argv.remove("-F")
        sys.argv.remove(FORMAT_STR)
    
    if "-P" in sys.argv:
        passwd = sys.argv[sys.argv.index("-P")+1]
        sys.argv.remove("-P")
        sys.argv.remove(passwd)
    elif(DEFAULT_PASSWD != ""):
        passwd = DEFAULT_PASSWD
    else:
        passwd = input("Password: ")        
    
    if "-d" in sys.argv:
        dest = sys.argv[sys.argv.index("-d")+1]
        sys.argv.remove("-d")
        sys.argv.remove(dest)
    elif(DEFAULT_DEST != ""):
        dest = DEFAULT_DEST
    else:
        dest = input("Dest: ")        

    if "-p" in sys.argv:
        port = sys.argv[sys.argv.index("-p")+1]
        sys.argv.remove("-p")
        sys.argv.remove(port)
    elif(DEFAULT_PORT != ""):
        port = DEFAULT_PORT
    else:
        port = input("Port: ")       
        
    files = sys.argv[1:]
    
    return passwd, dest, port, files

def main():
    passwd, dest, port, files = GetArgs();

    for f in files:
        if(FORMAT_STR != ""):
            oldfile = f
            f = FORMAT_STR + f[f.index(".")-1]
            os(oldfile, f)
            
        os.system("sshpass -p " + passwd + " scp -o StrictHostKeyChecking=no" + " -P " + port + " " + f + " " + dest)
        





