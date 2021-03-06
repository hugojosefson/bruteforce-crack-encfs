# split password-list in e.g. 30-line-files:
split -l 30 $3 $3-split-

# run bruteforce in parallel:
for PWLIST in $(ls $3-split-*)
  do mkdir -p /tmp/${PWLIST}
  touch /tmp/${PWLIST}-crack.log
  chmod -R go= /tmp/${PWLIST}*
  nice $(dirname $0)/bruteforce-encfs.sh \
    $1 /tmp/${PWLIST} ${PWLIST} \
   >> /tmp/${PWLIST}-crack.log 2>&1 &
done
