# Makes git auto completion faster favouring for local completions
__git_files () {
    _wanted files expl 'local files' _files
}

git-conflicts () {
  print `git status | grep -E 'both\smodified|by\s(us|them)' | awk '{print $3}'`
}
