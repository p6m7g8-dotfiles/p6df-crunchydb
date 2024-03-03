# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::crunchydb::deps()
#
#>
######################################################################
p6df::modules::crunchydb::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-pgsql
  )
}

######################################################################
#<
#
# Function: p6df::modules::crunchydb::init()
#
#>
######################################################################
p6df::modules::crunchydb::init() {

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::crunchydb::vscodes()
#
#>
######################################################################
p6df::modules::crunchydb::vscodes() {

  code --install-extension ms-ossdata.vscode-postgresql

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::crunchydb::langs()
#
#>
######################################################################
p6df::modules::crunchydb::langs() {

  pip install crunchydb
  npm install -g crunchydb

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::crunchydb::clones()
#
#  Environment:	 P6_DFZ_SRC_FOCUSED_DIR
#>
######################################################################
p6df::modules::crunchydb::clones() {

  p6_github_login_clone "CrunchyData" "$P6_DFZ_SRC_FOCUSED_DIR"

  p6_return_void
}

# https://www.crunchydata.com/
# https://github.com/CrunchyData/crunchydb
# https://crunchydata.github.io/crunchydb/
# https://www.crunchydata.com/products/crunchy-postgresql-for-kubernetes/
# https://access.crunchydata.com/documentation/
# https://github.com/CrunchyData/pg_featureserv

