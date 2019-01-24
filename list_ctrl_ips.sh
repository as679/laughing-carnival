#!/usr/bin/env bash
let count=`grep student_count terraform.tfvars | awk '{print $3}'`
idx=0
for i in `seq $count`; do
  echo -n "Student$i Controller Public IP: "
  terraform state show aws_instance.ctrl[$idx] | grep 'public_ip ' | awk '{print $3}'
  ((idx++))
done
let count=`grep student_count terraform.tfvars | awk '{print $3}'`
idx=0
for i in `seq $count`; do
  echo -n "Student$i Controller Private IP: "
  terraform state show aws_instance.ctrl[$idx] | grep 'private_ip ' | awk '{print $3}'
  ((idx++))
done
let count=`grep student_count terraform.tfvars | awk '{print $3}'` 
idx=0
for i in `seq $count`; do
  echo -n "Student$i Master Public IP: "
  terraform state show aws_instance.master[$idx] | grep 'public_ip ' | awk '{print $3}'
  ((idx++))
done
let count=`grep student_count terraform.tfvars | awk '{print $3}'` 
idx=0
for i in `seq $count`; do
  echo -n "Student$i Master Private IP: "
  terraform state show aws_instance.master[$idx] | grep 'private_ip ' | awk '{print $3}'
  ((idx++))
done
echo -n "Jumpbox: "
terraform state show aws_instance.jump | grep 'public_ip ' | awk '{print $3}'
echo -n "Jumpbox [private]: "
terraform state show aws_instance.jump | grep 'private_ip ' | awk '{print $3}'
