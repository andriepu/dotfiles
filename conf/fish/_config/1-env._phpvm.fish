set -x PHPVM_DIR "/Users/andriepu/.phpvm"
set -x PATH "$PHPVM_DIR/bin" $PATH
if test -s "$PHPVM_DIR/phpvm.sh"
    replay source "$PHPVM_DIR/phpvm.sh"
end
