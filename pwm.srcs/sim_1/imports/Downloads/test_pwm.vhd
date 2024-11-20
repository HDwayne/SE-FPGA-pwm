---------------------------------------
-- PWM test architecture
-- Improved testbench for PWM functionality
---------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- component definition
entity test_pwm is
end test_pwm;

-- architecture definition
architecture behaviour of test_pwm is

    -- constant definitions
    constant clkpulse   : Time := 4 ns; -- 1/2 period clock (125MHz)
    constant TIMEOUT    : time := clkpulse * 1000; -- simulation timeout

    constant sys_freq   : natural := conv_integer((1 sec) / (clkpulse * 2));
    constant pwm_freq   : natural := sys_freq / 20;
    constant duty_res   : natural := 4;

    -- signal definitions
    signal E_CLK, E_EN, E_P : std_logic;
    signal E_DUTY           : std_logic_vector(duty_res - 1 downto 0);
    signal E_RST            : std_logic; -- active low
begin

--------------------------
-- Clock Process
P_E_CLK: process
begin
    E_CLK <= '1';
    wait for clkpulse;
    E_CLK <= '0';
    wait for clkpulse;
end process P_E_CLK;

---------------------
-- Instantiation of PWM Component
--pwm0 : entity work.pwm(behaviour) -- behavioural simulation
--            generic map (sys_clk => sys_freq,
--                         pwm_freq => pwm_freq,
--                         duty_res => duty_res)
--            port map (CLK => E_CLK,
--                      RST => E_RST,
--                      EN => E_EN,
--                      DUTY => E_DUTY,
--                      P => E_P);

pwm0 : entity work.pwm(structure) -- Post-synthesis netlist
    port map (
        CLK  => E_CLK,
        RST  => E_RST,
        EN   => E_EN,
        DUTY => E_DUTY,
        P    => E_P
    );

            
-----------------------------
-- Test Process
P_TEST: process
begin

    -- Initializations
    E_RST <= '0';
    E_EN <= '0';
    E_DUTY <= (others => '0');
    wait for clkpulse * 3;

    -- Release Reset and Enable PWM
    E_RST <= '1';
    wait for clkpulse * 2;

    -- Test Case 1: Minimal Duty Cycle
    E_EN <= '1';
    E_DUTY <= "0001"; -- 1 out of 16 (minimal duty cycle)
    wait for clkpulse * 100;
    assert E_P = '1' report "E_P should toggle according to minimal duty cycle" severity note;

    -- Test Case 2: 25% Duty Cycle
    E_DUTY <= "0100"; -- 4 out of 16 (~25% duty cycle)
    wait for clkpulse * 100;
    assert E_P = '1' report "E_P should toggle according to 25% duty cycle" severity note;

    -- Test Case 3: 50% Duty Cycle
    E_DUTY <= "1000"; -- 8 out of 16 (50% duty cycle)
    wait for clkpulse * 100;
    assert E_P = '1' report "E_P should toggle according to 50% duty cycle" severity note;

    -- Test Case 4: 75% Duty Cycle
    E_DUTY <= "1100"; -- 12 out of 16 (~75% duty cycle)
    wait for clkpulse * 100;
    assert E_P = '1' report "E_P should toggle according to 75% duty cycle" severity note;

    -- Test Case 5: Maximum Duty Cycle
    E_DUTY <= "1111"; -- 16 out of 16 (maximum duty cycle)
    wait for clkpulse * 100;
    assert E_P = '1' report "E_P should remain high for maximum duty cycle" severity note;

    -- Disable PWM and Reset
    E_EN <= '0';
    wait for clkpulse * 10;
    assert E_P = '0' report "E_P should be low when PWM is disabled" severity note;

    -- Simulation End
    wait until E_CLK = '0';
    wait for clkpulse * 3;
    assert FALSE report "FIN DE SIMULATION" severity FAILURE;

end process P_TEST;

end behaviour;
