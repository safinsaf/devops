#!/bin/bash
for i in 0 1 2
do
  app_name="app-python-$i"
  echo $app_name
  kubectl exec pod/$app_name -- cat media/visits.txt | tail -5
done

