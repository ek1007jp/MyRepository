# coding: utf-8
with open("README.txt", "r") as f1:
    with open("output.txt", "w") as f2:
        for f in f1.readlines():
            f2.write(f)
