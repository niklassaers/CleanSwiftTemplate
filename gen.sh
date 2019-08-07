find ConnectionOverview|grep -v swift$|grep "/"|sed "s/ConnectionOverview/$1/;"|sed 's/^/mkdir -p /'|sh
for l in `find ConnectionOverview|grep swift`; do f=`echo $l|sed "s/ConnectionOverview/$1/; s/ConnectionOverview/$1/;"`; echo cp $l $f; done|sh
for l in `find $1|grep swift`; do sed -i '' "s/ConnectionOverview/$1/; s/ConnectionOverview/$1/; s/ConnectionOverview/$1/;" $l; done
