#!/bin/sh
(date | tr -d '\n' && \
free -m | awk '/^Mem:/{printf(" | Wykorzystanie: %d/%dMB (Wolne: %dMB)\n",$3,$2,$4)}') >> /logi/info.log