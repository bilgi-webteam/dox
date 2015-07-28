# GIT konfigürasyon

`~/.gitconfig` dosyasına ekleyin;

    [alias]
      deleted = add -u
      st = status
      sts = status -sb
      ci = commit
      br = branch -v
      bra = branch -avv
      brr = branch -rv
      brd = branch -d
      co = checkout
      df = diff
      lg = log --graph --decorate --oneline --all
      lg2 = log --graph --decorate --pretty='%C(auto)%h%d %C(white)%s%C(reset) [%aN,%ad]' --date=relative
      unstage = reset HEAD --
      ls = ls-files
      ign = ls-files -o -i --exclude-standard
      add-untracked = !git status -sb | grep -e \"^??\" | awk \"{ print \\$2 }\" | xargs git add
      add-modified = !git status -sb | grep -e \"^ M \" | awk \"{ print \\$2 }\" | xargs git add
      list-remote-tags = ls-remote --tags
      show-remotes = remote -v
      wip = !"git add -A; git ls-files --deleted -z | xargs -0 git rm; git commit -m \"wip...\""

    [color]
      ui = auto

    [color "branch"]
      current = yellow reverse
      local = yellow
      remote = green

    [color "diff"]
      meta = yellow bold
      frag = magenta bold
      old = red bold
      new = green bold

    [color "status"]
      added = yellow bold
      changed = green
      untracked = red

    [core]
      excludesfile = ~/.gitignore
      whitespace = fix,-indent-with-non-tab,trailing-space,cr-at-eol
      pager = less -FRX
      autocrlf = input

    [push]
      default = tracking

    [rerere]
        enabled = true

    [help]
        autocorrect = 0


---