#Ctrl + 1	Ctrl + 4	Kualitas tetap asli sambil meningkatkan detail
#Ctrl + 2	Ctrl + 5	Meningkatkan kualitas
#Ctrl + 3	Ctrl + 6	Meningkatkan kualitas dan mengurangi blur/out-of-focus
#Ctrl + 0	Ctrl + 0	Menonaktifkan shader
# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#
# # Arch latest news
# if [ "$PS1" ] && [[ $(ping -c1 www.google.com 2>&-) ]]; then
#       # The characters "£, §" are used as metacharacters. They should not be encountered in a feed...
#       echo -e "$(echo $(curl --silent https://www.archlinux.org/feeds/news/ | sed -e ':a;N;$!ba;s/\n/ />
#               sed -e 's/&amp;/\&/g
#               s/&lt;\|&#60;/</g
#               s/&gt;\|&#62;/>/g
#               s/<\/a>/£/g
#               s/href\=\"/§/g
#               s/<title>/\\n\\n\\n   :: \\e[01;31m/g; s/<\/title>/\\e[00m ::\\n/g
#               s/<link>/ [ \\e[01;36m/g; s/<\/link>/\\e[00m ]/g
#               s/<description>/\\n\\n\\e[00;37m/g; s/<\/description>/\\e[00m\\n\\n/g
#               s/<p\( [^>]*\)\?>\|<br\s*\/\?>/\n/g
#               s/<b\( [^>]*\)\?>\|<strong\( [^>]*\)\?>/\\e[01;30m/g; s/<\/b>\|<\/strong>/\\e[00;37m/g
#               s/<i\( [^>]*\)\?>\|<em\( [^>]*\)\?>/\\e[41;37m/g; s/<\/i>\|<\/em>/\\e[00;37m/g
#               s/<u\( [^>]*\)\?>/\\e[4;37m/g; s/<\/u>/\\e[00;37m/g
#               s/<code\( [^>]*\)\?>/\\e[00m/g; s/<\/code>/\\e[00;37m/g
#               s/<a[^§|t]*§\([^\"]*\)\"[^>]*>\([^£]*\)[^£]*£/\\e[01;31m\2\\e[00;37m \\e[01;34m[\\e[00;37>
#               s/<li\( [^>]*\)\?>/\n \\e[01;34m*\\e[00;37m /g
#               s/<!\[CDATA\[\|\]\]>//g
#               s/\|>\s*<//g
#               s/ *<[^>]\+> */ /g
#               s/[<>£§]//g')\n\n";
# fi


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# youtube-dl
alias ytdownloadmus="youtube-dl -f "bestaudio[acodec*=opus]" -x --add-metadata"
alias ytdownloadvid="youtube-dl -i -f mp4 --yes-playlist"
alias yt3='mpv --ytdl-format="bestvideo[height<=?360]+bestaudio/best[height<=?360]"'

if command -v "sudo" &>/dev/null; then
    PRIV="sudo"
elif command -v "doas" &>/dev/null; then
    PRIV="doas"
else
    printf "\e[1;31m > error:\e[0m sudo or doas not found!\n" >&2
fi

alias rc-service="$PRIV rc-service"
alias rc-update="$PRIV rc-update"

# Put your fun stuff here.
export PATH="$HOME/.local/bin:$HOME/.node_modules/bin:$HOME/.node_modules:$PATH"
export DRI_PRIME=1
export VDPAU_DRIVER=radeonsi
MOZ_X11_EGL=1
cd ~
