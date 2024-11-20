-- library definitions
library ieee;

-- library uses
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Component definition
entity pwm is
	-- generic parameters
	generic	(
        sys_clk         : natural := 1E06;  -- system clock frequency in Hz
        pwm_freq        : natural := 1E05;  -- PWM switching frequency in Hz
        duty_res        : natural := 8      -- duty-cycle resolution bits
    );

	-- I/O
	port (
		RST, EN, CLK: in std_logic;
        DUTY: in std_logic_vector(duty_res-1 downto 0);
        P : out std_logic
    );

end pwm;

-- architecture definition
architecture behaviour of pwm is

    -- constants and types declarations
    constant period : natural := sys_clk / pwm_freq;    -- number of clocks in one pwm period
    constant FREQ_COUNT_MAX : natural := period - 1;

    -- signals declarations
    signal freq_count : natural range 0 to FREQ_COUNT_MAX := 0;         -- frequency counter
    signal duty_threshold : natural range 0 to FREQ_COUNT_MAX := 0;     -- threshold between Ton/Toff
    signal pwm_active : std_logic := '0';

begin
    P_PWM: process(CLK)
    begin
        if rising_edge(CLK) then
            duty_threshold <= conv_integer(DUTY) * FREQ_COUNT_MAX / (2**duty_res - 1);
            
            if (RST = '0') or (EN = '0') then
                P <= '0';
                freq_count <= 0;
                pwm_active <= '0';
            else
                if freq_count < FREQ_COUNT_MAX then
                    freq_count <= freq_count + 1;
                else
                    freq_count <= 0;
                end if;
                
                if freq_count <= duty_threshold then
                    pwm_active <= '1';
                else
                    pwm_active <= '0';
                end if;

                P <= pwm_active;
            end if;
        end if;
    end process P_PWM;
end behaviour;
