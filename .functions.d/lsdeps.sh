# -----------------------------------------------------------------------------
# lsdeps: display arch package dependencies of listed pkgs
# -----------------------------------------------------------------------------


# -----------------------------------------------------------------------------
# colors

normal=$(tput sgr0)
bold=$(tput bold)
green=$(tput setaf 2)
white=$(tput setaf 7)


# -----------------------------------------------------------------------------
# depends

lsdeps() {
for _basepkg in "$@"; do
  echo "${bold}${white}Package ${green}${_basepkg}${normal} ${bold}${white}depends on${normal}:"
  for _pkg in `pacman -Qi "${_basepkg}" | ag 'depends on' | sed 's/.*:\s//' | sed -r 's/\s+/\n/g'`; do
    echo "$_pkg"
  done
  echo ""
done
}

# -----------------------------------------------------------------------------
# optdepends

lsoptdeps() {
for _basepkg in "$@"; do
  echo "${bold}${white}Package ${green}${_basepkg}${normal} ${bold}${white}optionally depends on${normal}:"
  pacman -Qi "${_basepkg}" | sed -n -r '/Optional Deps\s+:/,/Required By.*/p' | sed '/Required.*/d' | sed -r 's/Optional Deps\s+://' | sed -r 's/^\s+//'
  echo ""
done
}
