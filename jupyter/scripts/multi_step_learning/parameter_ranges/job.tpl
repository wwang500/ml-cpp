#!/usr/bin/env bash

cd {{ cwd }}
source ../../env/bin/activate
python experiment_driver.py --force with {{ job_parameters }} --comment "{{ comment }}" &> {{ job_name }}.log

if [ $? -eq 0 ]; then rm {{ job_file }}; fi
