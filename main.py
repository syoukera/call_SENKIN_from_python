import ctypes
import numpy as np

def call_fortran():
    f = np.ctypeslib.load_library("senkinlib.so", ".")
    f.driver_.argtypes = []
    f.driver_.restype  = ctypes.c_void_p

    f.driver_()

def main():
    print("** calling fortran from python")
    call_fortran()

if __name__ == "__main__":
    main()