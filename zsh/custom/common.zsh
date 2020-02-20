alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias copy_dvd_regionfree="vobcopy -v -m -F 16 /media/cdrom1"
alias remove_brackets="rename -v 's/\((.*)\)(.*)/$1$2/'"
alias clam_scan="clamscan / -ir --exclude-dir=^/sys --exclude-dir=^/dev --exclude-dir=^/proc --detect-pua=yes --scan-mail=yes --log=$HOME/clamscan.log"
alias flac_replaygain="metaflac --add-replay-gain *.flac"
alias flac_cover_art="metaflac --import-picture-from"
function remove_trailing_whitespace() {
    echo -n `cat $1` > $1
}
alias mest="make build lint test"
alias mun="make build lint test run"
