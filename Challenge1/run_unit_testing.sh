#!/usr/bin/bash
# -*- coding: utf-8 -*-
function unit_testing_python(){
    test_result=python3 test.py
    echo $test_result
}

unit_testing_python