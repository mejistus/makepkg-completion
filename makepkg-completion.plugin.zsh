#compdef makepkg

# makepkg zsh completion plugin
# For makepkg (pacman) 7.x

_makepkg() {
    local ret=1

    _arguments -s -S \
        '(-A --ignorearch)'{-A,--ignorearch}'[Ignore incomplete arch field in PKGBUILD]' \
        '(-c --clean)'{-c,--clean}'[Clean up work files after build]' \
        '(-C --cleanbuild)'{-C,--cleanbuild}'[Remove $srcdir/ dir before building]' \
        '(-d --nodeps)'{-d,--nodeps}'[Skip all dependency checks]' \
        '(-D --dir)'{-D,--dir}'[Change to directory before processing PKGBUILD]:directory:_files -/' \
        '(-e --noextract)'{-e,--noextract}'[Do not extract source files]' \
        '(-f --force)'{-f,--force}'[Overwrite existing package]' \
        '(-g --geninteg)'{-g,--geninteg}'[Generate integrity checks for source files]' \
        '(-h --help)'{-h,--help}'[Show help message and exit]' \
        '(-i --install)'{-i,--install}'[Install package after successful build]' \
        '(-L --log)'{-L,--log}'[Log package build process]' \
        '(-m --nocolor)'{-m,--nocolor}'[Disable colorized output messages]' \
        '(-o --nobuild)'{-o,--nobuild}'[Download and extract files only]' \
        '-p[Use an alternate build script]:build script:_files' \
        '(-r --rmdeps)'{-r,--rmdeps}'[Remove installed dependencies after a successful build]' \
        '(-R --repackage)'{-R,--repackage}'[Repackage contents without rebuilding]' \
        '(-s --syncdeps)'{-s,--syncdeps}'[Install missing dependencies with pacman]' \
        '(-S --source)'{-S,--source}'[Generate a source-only tarball without downloaded sources]' \
        '(-V --version)'{-V,--version}'[Show version information and exit]' \
        '--allsource[Generate a source-only tarball including downloaded sources]' \
        '--check[Run the check() function in the PKGBUILD]' \
        '--config=[Use an alternate config file]:config file:_files' \
        '--holdver[Do not update VCS sources]' \
        '--key=[Specify a key to use for gpg signing]:gpg key:' \
        '--noarchive[Do not create package archive]' \
        '--nocheck[Do not run the check() function in the PKGBUILD]' \
        '--noprepare[Do not run the prepare() function in the PKGBUILD]' \
        '--nosign[Do not create a signature for the package]' \
        '--packagelist[Only list package filepaths that would be produced]' \
        '--printsrcinfo[Print the generated SRCINFO and exit]' \
        '--sign[Sign the resulting package with gpg]' \
        '--skipchecksums[Do not verify checksums of the source files]' \
        '--skipinteg[Do not perform any verification checks on source files]' \
        '--skippgpcheck[Do not verify source files with PGP signatures]' \
        '--verifysource[Download source files and perform integrity checks]' \
        '--asdeps[Install packages as non-explicitly installed]' \
        '--needed[Do not reinstall targets that are already up to date]' \
        '--noconfirm[Do not ask for confirmation when resolving dependencies]' \
        '--noprogressbar[Do not show a progress bar when downloading files]' && ret=0

    return ret
}

compdef _makepkg makepkg
