#! /usr/bin/env bash
   TEST_FILTER=$1
   # Write your commands here
  
#    IFS=$'\n'
#    ALL_ARRAY=($(dotnet test --list-tests))
# #    echo "-----ALL_ARRAY-----"
# # # for i in "${ALL_ARRAY[@]}"
# # # do
# # # 	echo "$i"
# # # done
# # echo ${ALL_ARRAY[@]}| sed 's/ /\n/g'
#    FILTERED_ARRAY=($(dotnet test --list-tests --filter "$TEST_FILTER"))
# #    echo "-----FILTERED_ARRAY-----"
# #    echo ${FILTERED_ARRAY[@]}| sed 's/ /\n/g'
#    echo "-----SKIPPED_ARRAY-----"
#    echo ${ALL_ARRAY[*]} ${FILTERED_ARRAY[*]}| sed 's/ /\n/g'| sort | uniq -u
#    SKIPPED_ARRAY=($(echo ${ALL_ARRAY[*]} ${FILTERED_ARRAY[*]} | sed 's/ /\n/g' | sort | uniq -u))
#    echo "-----SKIPPED_ARRAY2-----"
#    echo ${SKIPPED_ARRAY[*]}
#    len=${#SKIPPED_ARRAY[*]}
#    if [ $len -gt 0 ]; then
#      echo "##vso[task.logissue type=warning] found ${len} skipped test(s) by this filter $TEST_FILTER"
#      echo "${SKIPPED_ARRAY[*]}"
#    fi

  IFS=$'\n'
  # ALL_ARRAY=($(dotnet test "$project" --list-tests))
  ALL_ARRAY=" " read -r -a ALL_ARRAY <<<"$(dotnet test --list-tests)"
    echo $ALL_ARRAY
  #FILTERED_ARRAY=($(dotnet test "$project" --list-tests --filter "$TEST_FILTER"))
  FILTERED_ARRAY=" " read -r -a FILTERED_ARRAY <<<"$(dotnet test --list-tests --filter "$TEST_FILTER")"
echo ${FILTERED_ARRAY}
  #SKIPPED_ARRAY=($(echo ${ALL_ARRAY[*]} ${FILTERED_ARRAY[*]} | sed 's/ /\n/g' | sort | uniq -u))
  SKIPPED_ARRAY=" " read -r -a SKIPPED_ARRAY <<<"$(echo "${ALL_ARRAY[*]} ${FILTERED_ARRAY[*]}" | sed 's/ /\n/g' | sort | uniq -u)"
echo ${SKIPPED_ARRAY[*]}
  len=${#SKIPPED_ARRAY[*]}
  if [ "$len" -gt 0 ]; then
    echo "##vso[task.logissue type=warning] found ${len} skipped test(s) by this filter $TEST_FILTER"
    echo "${SKIPPED_ARRAY[*]}"
  fi