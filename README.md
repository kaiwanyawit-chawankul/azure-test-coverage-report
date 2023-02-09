# Introduction 

[![Build Status](https://dev.azure.com/jobjingjo0097/test-report/_apis/build/status/kaiwanyawit-chawankul.azure-test-coverage-report?branchName=main)](https://dev.azure.com/jobjingjo0097/test-report/_build/latest?definitionId=4&branchName=main)


https://stackoverflow.com/questions/51720050/how-to-publish-jest-unit-test-results-in-vsts-tests




IFS=$'\n'
ALL_ARRAY=(`dotnet test --list-tests`)
FILTERED_ARRAY=(`dotnet test --list-tests --filter "Category=Skip"`)
echo ${ALL_ARRAY[@]} ${FILTERED_ARRAY[@]} | sed 's/ /\n/g' | sort | uniq -u
SKIPPED_ARRAY=(`echo ${ALL_ARRAY[@]} ${FILTERED_ARRAY[@]} | sed 's/ /\n/g' | sort | uniq -u`)
echo "${#SKIPPED_ARRAY[@]}"


IFS=$'\n'
ALL_ARRAY=(`dotnet test --list-tests`)
FILTERED_ARRAY=(`dotnet test --list-tests --filter "Category=Skip"`)
SKIPPED_ARRAY=(`echo ${ALL_ARRAY[@]} ${FILTERED_ARRAY[@]} | sed 's/ /\n/g' | sort | uniq -u`)
len=${#SKIPPED_ARRAY[@]}
echo $len
for (( i=0; i<$len; i++ )); do echo "${SKIPPED_ARRAY[$i]}" ; done