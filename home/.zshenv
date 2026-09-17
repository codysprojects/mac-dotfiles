# Deduplicate PATH entries automatically, no matter how many times
# something (or something nested) prepends the same directory.
typeset -U path PATH
