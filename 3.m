function sumnjivo = detektuj_sumnjive_vibracije(data)
  % Implementirajte algoritam za detekciju sumnjivih vibracija
  % Ovde možete koristiti analizu vrednosti senzora vibracija
  % Na primer, ako su vrednosti izvan određenog opsega, možete smatrati to sumnjivim
  vibracije = str2double(data);
  if vibracije > 250
    sumnjivo = true;
  else
    sumnjivo = false;
  end
end

function sumnjivo = detektuj_sumnjiv_zvuk(data)
  % Implementirajte algoritam za detekciju sumnjivog zvuka
  % Ovde možete koristiti analizu zvučnih podataka
  % Na primer, ako se detektuje određeni uzorak zvuka, možete smatrati to sumnjivim
  zvuk = str2double(data);
  if zvuk > 250
    sumnjivo = true;
  else
    sumnjivo = false;
  end
end

pkg load instrument-control

% Provera dostupnih serijskih portova (opciono)
serialportlist("available")

% Otvorite serijski port (prilagodite 'COM3' vašem sistemu)
s1 = serialport("COM3", 9600);

% Pauza za uspostavljanje komunikacije
pause(2);

% Čitanje podataka
while true
  data = readline(s1);
  disp(data);
  if detektuj_sumnjive_vibracije(data) || detektuj_sumnjiv_zvuk(data)
    % Slanje signala nazad Arduinu za aktiviranje alarma
    writeline(s1, "ALARM");
    % Ispis "ALARM" na konzolu
    printf("ALARM");
  end
endwhile

clear s1

