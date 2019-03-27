# coding: utf-8
def main_syori():
    with open("README.txt", "r") as f1:
        with open("output.txt", "w") as f2:
            for f in f1.readlines():
                f2.write(f) 

if __name__ == "__main__":
    main_syori()
