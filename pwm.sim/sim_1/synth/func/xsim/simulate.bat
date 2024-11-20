@echo off
REM ****************************************************************************
REM Vivado (TM) v2023.2.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : AMD Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Nov 20 19:43:52 +0100 2024
REM SW Build 4081461 on Thu Dec 14 12:24:51 MST 2023
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim test_pwm_func_synth -key {Post-Synthesis:sim_1:Functional:test_pwm} -tclbatch test_pwm.tcl -view C:/Users/hdway/Documents/vivado/pwm/test_pwm_post_synthesis.wcfg -log simulate.log"
call xsim  test_pwm_func_synth -key {Post-Synthesis:sim_1:Functional:test_pwm} -tclbatch test_pwm.tcl -view C:/Users/hdway/Documents/vivado/pwm/test_pwm_post_synthesis.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0