import os

dirname = "123"

if not os.path.isdir(dirname):
    os.mkdir(dirname)
    a = os.mkdir(dirname)
else:
    a = dirname

print(os.path.abspath(a))
