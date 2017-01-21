#----------------------------------------------------------------------
# Basic Terminal Configuration
#----------------------------------------------------------------------
export PS1="\u | \h | \W $ "

#----------------------------------------------------------------------
# Aliases
#----------------------------------------------------------------------
alias ..='cdl ..'
alias ...='cdl ../..'
alias ....='cdl ../../..'
alias addx='chmod a+x'
alias clc='clear && ll'
alias diff='gvimdiff'
alias edit='gvim'
alias ls='ls --color --group-directories-first -Fh'
alias mkdir='mkdir -p'
alias path='echo -e ${PATH//:/\\n}'
alias tree='tree -Csuh'
alias view='gvim -RM'

#----------------------------------------------------------------------
# Helper Functions
#----------------------------------------------------------------------
function cdl {
  # Chage directory and list contents
  cd $1; ll
}
function ll  {
  # Create paged listing of directory details
  ls -lG $* | more
}
function mcd {
  # Create an cd into new directory
  mkdir $1; cdl $1
}

#----------------------------------------------------------------------
# Machine Specific Configuration
#----------------------------------------------------------------------

