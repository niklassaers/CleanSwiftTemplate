find SetPrice|grep -v swift$|grep "/"|sed "s/SetPrice/$1/;"|sed 's/^/mkdir -p /'|sh
for l in `find SetPrice|grep swift`; do f=`echo $l|sed "s/SetPrice/$1/; s/SetPrice/$1/;"`; echo cp $l $f; done|sh
for l in `find $1|grep swift`; do sed -i '' "s/SetPrice/$1/; s/SetPrice/$1/; s/SetPrice/$1/;" $l; done
