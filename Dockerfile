#wybranie obrazu bazowego
FROM alpine
#skopiowanie skryptu
COPY pluto.sh ./
#utworzenie katalogu na logi
RUN mkdir logi
#zmiana uprawnien
RUN chmod 777 pluto.sh
#uruchomienie skryptu przy starcie
CMD [ "./pluto.sh" ]