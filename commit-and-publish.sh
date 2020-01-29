export MSG=$1

if [ ${#MSG} == 0 ]
then
    echo "Must add commit message, aborting.";
    exit 1
else
    echo "Adding and commiting files with commit message : $MSG"
fi

git add .
git commit -m "$MSG"
git push

cd public/

git add .
git commit -m "Published: $MSG"
git push