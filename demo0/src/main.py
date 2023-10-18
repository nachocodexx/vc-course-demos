# import time as T
import os

def main(name:str):
    print("Hello {}".format(name))


if __name__ == "__main__":
    main(os.environ.get("NAME","Guest"))
    # T.sleep(10000)
