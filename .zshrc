#==============================================================#
#               .zshrc                                         #
#==============================================================#

# profile
if [ "$ZSHRC_PROFILE" != "" ]; then
  zmodload zsh/zprof && zprof > /dev/null
fi

#--------------------------------------------------------------#
##          Base Configuration                                ##
#--------------------------------------------------------------#
source-safe() { if [ -f "$1" ]; then source "$1"; fi }
source "$ZRCDIR/base.zsh"


#--------------------------------------------------------------#
##          Options                                           ##
#--------------------------------------------------------------#
source "$ZRCDIR/option.zsh"


#--------------------------------------------------------------#
##          Completion                                        ##
#--------------------------------------------------------------#
source "$ZRCDIR/completion.zsh"


#--------------------------------------------------------------#
##          Prompt Configuration                              ##
#--------------------------------------------------------------#
source "$ZRCDIR/prompt.zsh"


#--------------------------------------------------------------#
##          Function                                          ##
#--------------------------------------------------------------#
source "$ZRCDIR/function.zsh"


#--------------------------------------------------------------#
##          Aliases                                           ##
#--------------------------------------------------------------#
source "$ZRCDIR/alias.zsh"


#--------------------------------------------------------------#
##          Key Bindings                                      ##
#--------------------------------------------------------------#
source "$ZRCDIR/bindkey.zsh"

source-safe "$ZHOMEDIR/zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE}"
source "$ZHOMEDIR/zkbd/bindkey.zsh"


#--------------------------------------------------------------#
##          Plugin                                            ##
#--------------------------------------------------------------#
source "$ZRCDIR/pluginlist.zsh"


#--------------------------------------------------------------#
##          Post Execution                                    ##
#--------------------------------------------------------------#
source "$ZRCDIR/post_load.zsh"


#--------------------------------------------------------------#
##          Execute Script                                    ##
#--------------------------------------------------------------#
source-safe "$ZDOTDIR/.zshrc.local"
source-safe "$ZHOMEDIR/.zshrc.local"


if [ -n "$ZSHRC_CI_TEST" ]; then
  echo "zshrc load complete"
  exit
fi

