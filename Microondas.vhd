entity Microondas is port(
  number : in integer range 9 downto 0;
  startn, stopn, clearn, clk, door_closed : in bit;
  display_min, display_sec_dez, display_sec_uni : out bit_vector (7 downto 0);
  mag_on : out bit;  
);
end Microondas;


architecture system of Microondas is
  type: state is (stop, start,clear);
  signal statefull : state;
  signal arrayNumbers : arrays; 
  signal time : in integer range 9 to 0;  
begin
  statemachine : process(startn, stopn, clearn)
  begin
    if(startn='1' and door_closed='1')then
        statefull <= start;        
      elsif (stopn='1' or door_closed='0')then
        statefull <= stop;
      elsif (clearn='1' and start='0' and stop='0')
        statefull <= clear;
    end if;
    
    case statefull is
      when start => ;
        -- inicia o cozimento
        -- decremento do temporizador        
      when stop => ;
        -- paro todo o processo
        -- pauso o temporizador
      when clear =>;   
        -- limpo display
    end case;
    
    case number is
      when 0 => display_min <= '1111110';
      when 1 => display_min <= '0110000';
      when 2 => display_min <= '1101101';
      when 3 => display_min <= '1111001';
      when 4 => display_min <= '0110011';
      when 5 => display_min <= '1011011';
      when 6 => display_min <= '1011111';
      when 7 => display_min <= '1110000';
      when 8 => display_min <= '1111111';
      when 9 => display_min <= '1111011';
    end case;    
  end process;     
end system;

