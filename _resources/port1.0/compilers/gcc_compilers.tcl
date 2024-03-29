# add all working GCC compilers to the variable compilers based on ${os.major}

# https://trac.macports.org/ticket/57135
# https://trac.macports.org/ticket/61636

lappend compilers macports-gcc-13 macports-gcc-12

if {${os.major} < 22} {
    lappend compilers macports-gcc-11 macports-gcc-10
    # GCC 9 and older only on OSX10.10 and older
    # https://trac.macports.org/ticket/65472
    if {${os.major} < 15} {
        if {${os.major} >= 10} {
            lappend compilers macports-gcc-9 macports-gcc-8
        }
        lappend compilers macports-gcc-7 macports-gcc-6 macports-gcc-5
    }
}

lappend compilers macports-gcc-devel
