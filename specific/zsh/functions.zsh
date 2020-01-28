# Git {{{
#
SQUAD_NAME="CHAT"

# Create new branch with Squad prefix
# Usage: gcbt 123 -> will create new branch named `SQUAD-123`. Assumed SQUAD_NAME="SQUAD"
gcbt() {
  git checkout -b $SQUAD_NAME-$1
}

# Checkout to Squad prefixed branch
# Usage: gcot 123 -> will checkout to branch named `SQUAD-123`. Assumed SQUAD_NAME="SQUAD"
gcot() {
  git checkout $SQUAD_NAME-$1
}
#
# }}}

aim() {
  vim ./.git/COMMIT_MSG;
}

fire() {
  vim ./.git/COMMIT_MSG && ( git commit -F ./.git/COMMIT_MSG $* ) && rm -f ./.git/COMMIT_MSG > /dev/null;
}

checkaim() {
  cat ./.git/COMMIT_MSG
}

# vim:set foldmethod=marker foldlevel=0:
