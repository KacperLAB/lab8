# TCH - Laboratorium 8
W katalogu "zrzuty_ekranu" znajdują sie zrzuty ekrany przedstawiające proces wykonywania zadania.</br></br>
Każdorazowe uruchomienie kontenera skutkuje wykonaniem skryptu (dopisaniem nowej linii logów), po czym kontener kończy prace.</br></br>
Ścieżka dla wolumenów w systemie Windows (WSL2) rózniła się od tej w systemach Linux :</br> \\\wsl.localhost\docker-desktop-data\data\docker\volumes</br></br>
Nie udało się wykorzystać aplikacji cAdvisor. Aplikacja poprawnie odczytywała informacje takie jak ilośc istniejących kontenerów i pozwalała na monitorowanie ogólnego zużycia zasobów w całym środowisku Docker, natomiast nie był możliwy dostęp do informacji o konkretnych kontenerach.

## Budowanie obrazu :
docker build -t lab8docker .
## Pierwsze uruchomienie kontenera :
docker run -dt -m 512m --name limit512 --mount source=RemoteVol,target=/logi lab8docker
## Ponowne uruchamianie kontenera :
docker start limit512

