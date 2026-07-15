# ========================================================================= #
#
# Personal $HOME/.oh-my-zsh/custom/aliases.zsh file
# Author: Kevin Bowen <kevin.bowen@gmail.com>
# Version: 0.0.1
# Source : http://codeberg.org/kevinbowen/dotfiles
# Created: 20260701
# Last modified: 20260706
# ~/.oh-my-zsh/custom/aliases.zsh: called by ~/.zshrc
#
#  Create symlink in ~/$HOME
#    ln -s ~/dotfiles/zsh/custom/bash_aliases ~/.oh-my-zsh/custom/aliases.zsh
#
#       Sections
#
#  1. Sourced aliases
#  2. Custom Functions

# ========================================================================= #
#   Section 1: Sourced aliases and alias definitions.
# ========================================================================= #

# enable color support of ls
if [ -x /usr/local/opt/coreutils/libexec/gnubin/dircolors ]
then
    test -r ~/.dir_colors && eval "$(dircolors -b ~/.dir_colors)"
    alias ls='ls --color=always'
    alias dir='dir --color'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
else
    eval "$(dircolors -b)"
fi

#### Aliases
alias bat='bat --theme=Dracula'
alias batp='bat -p --theme=Dracula'
alias bashed='vi ~/.bashrc; source $HOME/.bashrc && echo "bashrc sourced  --ok."'
alias bestp='cd $HOME/docs/tech/best_practices'
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
alias cdoc='cdoc.sh'
alias cl='clear -x'
alias ctags='ctags --options=$HOME/.ctags'
alias deact='deactivate'
alias delenv='rm -rf .venv'
alias dict='sdcv'
alias djstart='cd ~/dev/python/repos/django/django-start'
alias djtree='tree -I "staticfiles|templates|__pycache__|htmlcov|static|media|docs|migrations|images"'
alias docs='cd $HOME/docs'
alias docu='docker compose up'
alias docd='docker compose down'
alias docnox='docker compose exec web nox'
alias docsh='cd $HOME/docs'
alias docstat='ps -ef | grep docker'
alias docub='docker compose up --build'
alias docup='docker compose exec web coverage run -m pytest'
alias docur='docker compose exec web coverage report'
alias docuh='docker compose exec web coverage html'
alias dot='cd $HOME/dotfiles'
alias drun='./drun'
alias ea='vi ~/.oh-my-zsh/custom/aliases.zsh; source $HOME/.oh-my-zsh/custom/aliases.zsh && echo "aliases sourced  --ok."'
alias ed='ed -p"★ > " --verbose'
alias egrep='egrep --color=auto'
alias etym='etym.py'
alias fd='fdfind'
alias fgrep='fgrep --color=auto'
alias fontfix='sudo fc-cache -vf'
alias fontfix_local='fc-cache -vf ~/.fonts'
alias fzf_update='cd ~/.config/fzf && git pull && ./install && cd -'
function ghic() { gh issue close "$1"; }
alias ghicb='gh issue create --label bug --assignee @me'
alias ghicd='gh issue create --label documentation --assignee @me'
alias ghice='gh issue create --label enhancement --assignee @me'
alias ghict='gh issue create --label testing --assignee @me'
function ghie() { gh issue edit "$1"; }
alias ghil='gh issue list --limit 100'
alias gits='git status'
alias gita='git add .'
alias gitl='git log'
alias gitp='git push all main;git push origin main'
alias gitpom='git push origin main'
alias gobase='cd ~/dev/projects/golang/'
alias gosand='cd ~/dev/projects/golang/sandbox'
alias gotut='cd ~/dev/projects/golang/tutorials'
alias gpg_list='gpg --list-secret-keys --keyid-format=long'
alias grep='grep --color=auto'
alias howto='cd $HOME/docs/tech/howto'
alias info='pinfo'
alias ip='ip -color address'
alias ipb='/usr/sbin/ip -brief address'
alias ipr='/usr/sbin/ip route'
alias ipy='ipython3'
alias l='ls -CF'
alias la='ls -aF'
alias lh='ls -1 --hyperlink=always'
alias ll='ls -lF'
# alias ls='ls --color -h --group-directories-first'
# alias ls='ls --color=always -h'
alias lsql='cd ~/dev/projects/learning/sql/'
alias matrix='gomuks'
alias meminfo='free -m -l -t'
alias mi='~/bin/map_it.py'
alias mlb='mlbscores.py'
alias mlbwest='mlb -s | head -n21 | tail -n6'
alias ms='~/bin/movie_search.py'
alias myip='curl myip.wtf && curl ipv4.text.myip.wtf && curl json.myip.wtf'
alias myip4='curl ipv4.text.myip.wtf'
alias myip6='curl myip.wtf'
alias nb='norwegianblue'
alias newenv='python3.13 -m venv --prompt . .venv && .venv/bin/pip install -U pip setuptools wheel'
alias odin='cd ~/dev/projects/learning/odin-project/'
alias pd='perldoc'
alias pathdup='echo "$PATH" | tr : "\n" | sort | uniq -d'
alias pep='peplum'
alias pgstat='ps -ef | grep postgres'
alias pgmstart='brew services start postgresql'
alias pgmstop='brew services stop postgresql'
alias pgstart='sudo systemctl start postgresql.service'
alias pgstop='sudo systemctl stop postgresql.service'
alias pip='python3 -m pip'
alias poetry_shell='eval $(poetry env activate)'
alias ports='netstat -tulanp'
alias proj='cd ~/dev/projects'
alias psc='ps xawf -eo pid,user,cgroup,args'
alias psmem='ps auxf | sort -nr -k -4'
alias psmem10='ps auxf | sort -nr -k -4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias py='python'
alias pyenv_list='pyenv install --list | grep -E " 3\.([9]|1[0-5])"'
alias pymrun='python manage.py runserver'
alias pymrun+='python manage.py runserver_plus --cert-file cert.crt'
alias pydj='cd ~/dev/python/repos/django'
alias pyr='cd ~/dev/python/repos'
alias pysand='cd ~/dev/python/sandbox'
alias pysource='cd ~/dev/python/src/cpython'
alias pysrc='cd ~/dev/python/src/cpython'
alias pyth='cd ~/dev/python'
alias python='/Users/kbowen/.pyenv/shims/python'
alias python3='/Users/kbowen/.pyenv/shims/python3'
alias python3.14='/Users/kbowen/.pyenv/shims/python3.14'
alias python3.15='/Users/kbowen/.pyenv/shims/python3.15'
alias pip='/Users/kbowen/.pyenv/shims/pip'
alias pip3='/Users/kbowen/.pyenv/shims/pip3'
alias python3='/Users/kbowen/.pyenv/shims/python3'
alias pytmp='cd ~/dev/python/tmp'
alias renlow='rename 'y/A-Z/a-z/''
alias renup='rename 'y/a-z/A-Z/''
alias rust_list='cargo install --list'
alias prsand='cd ~/dev/projects/sandbox'
alias rbsand='cd ~/dev/ruby/sandbox'
alias run='./run'
alias services='sudo systemctl list-units --type=service --state=running'
# alias setkb='setxkbmap -option caps:escape'
alias sicp='cd ~/docs/learning/sicp'
alias sn='cd ~/.notes && ./sn.sh'
alias sourcea='source ~/.bash_aliases && echo bash_aliases sourced --ok'
alias sourceb='source ~/.bashrc && echo bashrc sourced --ok'
alias sphinx_build='sphinx-build -M html source build'
# alias suf='sudo apt full-upgrade'
# alias sug='sudo apt upgrade'
# alias sup='sudo apt update'
# alias sur='sudo apt autoremove'
alias toolbox='cd ~/dev/projects/repos/toolbox'
alias tools='cd ~/dev/projects/repos/toolbox'
alias trace='traceroute'
alias ts='~/bin/torrent_search.py'
alias venv='cd ~/dev/python/venvs'
alias venvs='cd ~/dev/python/venvs'
alias vi='/usr/local/bin/nvim'
# alias vimwik='vi ~/docs/vimwiki/index.md'
alias ws='~/bin/wiki_search.py'
# alias xdis='xfce4-display-settings'
alias xfdev='cd ~/dev/xfce'
alias xfrepo='cd ~/dev/xfce/gitlab.xfce.org'
#
# ========================================================================= #
#   Section 2: Custom Functions
# ========================================================================= #

edwin () {
    scheme -eval "(edit 'console)"
}
docstart () {
    sudo systemctl start containerd
    echo "containerd service starting..."
    sudo systemctl start docker.service
    echo "docker service started. Good morning, sunshine!"
}
docstop () {
    sudo systemctl stop docker.service
    echo "docker service stopping..."
    sudo systemctl stop containerd
    echo "containerd service stopped. Good night, moon!"
}
gh_note () {
    gh api notifications |
        jq '.[] |
        {
            id,
            title: .subject.title,
            repo: .repository.full_name,
            "last comment": .subject.latest_comment_url,
        }'
}
hidden_python () {
    # https://til.simonwillison.net/python/stdlib-cli-tools
    PY_VERSION=$(python -V | awk '{print $2}')
    # for zsh - 20260707
    PY_MAJOR=${PY_VERSION[0,4]}
    # for bash
    # PY_MAJOR=${PY_VERSION::-5}
    cd "$HOME/.pyenv/versions/${PY_VERSION}/lib/python${PY_MAJOR}" || return
    rg 'if __name__ =' -l | grep -v \
        -e test \
        -e tests \
        -e idlelib \
        -e site-packages \
        -e turtledemo \
        | sort
}
hist() {
    history | grep "$1";
}
mdcheck () {
    # Use https://github.com/rvben/rumdl to lint Markdown files
    rumdl check "$1";
}
mkcd () {
    mkdir -p -- "$1" && cd -P -- "$1" || return
}
pybaseinstall () {
    python -m pip install --upgrade pip
    python -m pip install pipx
    python -m pip install urllib3
    # python -m pip install rich
    # shellcheck source=/home/kbowen/.bashrc
    source "$HOME/.zshrc"
}
pipxpackageinstall () {
    pipx install argcomplete
    pipx install docutils
    pipx install epy-reader
    pipx install frogmouth
    pipx install glances
    pipx install hike
    pipx install ipython
    pipx inject ipython friendly colorama pickleshare
    pipx install norwegianblue
    pipx install pdm
    pipx install peplum
    pipx install pip-audit
    pipx install pip-check
    pipx install pispy-client
    pipx install poetry
    pipx inject poetry poetry-plugin-export
    pipx inject poetry poetry-plugin-shell
    pipx install posting
    pipx install pydf
    pipx install pygments
    pipx install pylint
    pipx install pyright
    pipx install ruff
    pipx install rumdl
    pipx install thonny
    pipx install tldr
    pipx install troml
    pipx install zizmor

}

pipx-outdated() {
    # See: https://github.com/pypa/pipx/issues/149#issuecomment-684042303
    echo "OUTDATED PACKAGES:"
    while read -sr pyPkgName pyPkgVersion; do
        pyPkgURL="https://pypi.org/pypi/${pyPkgName}/json"
        pypi_latest="$(curl -sS "${pyPkgURL}" | jq --raw-output '.info.version')"
        [ "$pyPkgVersion" != "$pypi_latest" ] && printf "%s\n\tCurrent: %s\tLatest: %s\n" "$pyPkgName" "$pyPkgVersion" "$pypi_latest"
    done < <( pipx list | grep -o 'package.*,' | tr -d ',' | cut -d ' ' -f 2- )
}

chkfont () {
    for family in serif sans-serif monospace Arial Helvetica Verdana "Times New Roman" "Courier New"; do
  echo -n "$family: "
  fc-match "$family"
done
}
cxfile () {
    # Create an executable file and edit created file
    touch "$1" && chmod +x "$_" && vi "$_" || return
}

dictw () {
    echo
    def="$(curl -s dict://dict.org/define:"$1": | grep -vG '^\d\d\d')";
    if [ "$def" = "" ];
    then
        echo No definition available;
    else
        echo "$def" | bat -p --theme "Solarized (light)";
    fi
}

find_largest_file() {
    du -h -x -s -- * | sort -r -h | head -20;
}

pc() {
    # Python calculator
    ip_expr="$1"
    if [[ $# -eq 0 || $1 = '-' ]]; then
        read -r ip_expr
    fi
    python -c 'print('"$ip_expr"')'
}

time_between() {
    # Usage:
    # time between 20:30 and 23:00
    # > time_between "2026-01-01T20:30:00Z" "2026-01-01T23:00:00Z"
    # 0d 2h 30m 0s
    # # time between the Apolo 11 lunar landing and my current time
    # > time_between "1969-07-20T20:17:00Z" $(date --utc +%Y-%m-%dT%H:%M:%SZ)
    START_SECONDS=$(date -d "$1" +%s)
    END_SECONDS=$(date -d "$2" +%s)
    DIFF_SECONDS=$(("$END_SECONDS" - "$START_SECONDS"))
    SECONDS=$(("$DIFF_SECONDS" % 60))
    MINUTES=$(("$DIFF_SECONDS" / 60 % 60))
    HOURS=$(("$DIFF_SECONDS" / 3600 % 24))
    DAYS=$(("$DIFF_SECONDS" / 86400))
    echo ${DAYS}d ${HOURS}h ${MINUTES}m ${SECONDS}s
}
