#!/usr/bin/env bash


#Variables 
path=./.local/lib/python3.10/site-packages/coretp/plans
dirs=($(ls -d ../.venv/lib/python3.9/site-packages/coretp/plans/*/))
test_plans=()
gen_test_plans=()
list_not_gen_plans=()
cmd="../../tp_gen/generate_tp_tests.sh --batch 10 --save_intermediate_files --test_plan"

# test generating loop 
rm -rf not_generated_plans.txt  generated_plans.txt
for p in "${dirs[@]}"; do
  plan=$(basename "$p")
    [[ "$plan" == __* ]] && continue
      test_plans+=("$plan")
      rm -r $plan
      mkdir $plan
      cd $plan
        if $cmd $plan > riescuec.log 2>&1 ; then
         echo "test-plan generated for $plan  and command $cmd $plan"
         echo $plan >> ../generated_plans.txt
         gen_test_plans+=("$plan")
        else 
          echo "test-plan is not generated for $plan"
          echo $plan >> ../not_generated_plans.txt
          list_not_gen_plans+=("$plan")
        fi
      cd ../
done
echo -e "..............\n.............\n............"
# listing the test plan status 
echo "Status of testsplans"
echo " "
echo "Available_Test_Plans = ${test_plans[@]} "
echo "Generated_test_plans = ${gen_test_plans[@]}"
echo "Not_Generated_Test_Plan = ${list_not_gen_plans[@]}"
