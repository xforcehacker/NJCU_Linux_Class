import sys

sys.stdout.write("this should go to standard out.\n")
sys.stderr.write("this should go to stderr\n")
sys.stdout.write("this too will go to stdout. It will not be see by standard error.\n")
