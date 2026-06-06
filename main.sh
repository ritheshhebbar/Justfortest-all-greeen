git init

git config user.name "ritheshhebbar"
git config user.email "ksshashikanthahebbar@gmail.com"

touch junk

echo "Enter Beginning date [yyyymmdd]"
read x

echo "Enter End date [yyyymmdd]"
read y

DATE=$x

while [ $DATE -le $y ]
do
    for i in {1..10}
    do
        echo "$i" >> junk

        git add junk

        msg="commit${DATE}-${i}"

        GIT_AUTHOR_NAME="ritheshhebbar" \
        GIT_AUTHOR_EMAIL="ksshashikanthahebbar@gmail.com" \
        GIT_COMMITTER_NAME="ritheshhebbar" \
        GIT_COMMITTER_EMAIL="ksshashikanthahebbar@gmail.com" \
        git commit -m "$msg" --date="$(date -R -d ${DATE})"
    done

    DATE=$(date +%Y%m%d -d "$DATE + 1 day")
done