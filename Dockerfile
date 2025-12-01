# Imagen oficial de Seq como base
FROM datalust/seq:latest

# Directorio de datos (persistente)
VOLUME ["/data"]

# Variables de entorno mínimas
ENV ACCEPT_EULA=Y
ENV SEQ_FIRSTRUN_ADMINPASSWORD=TuPasswordSeguro

# Puertos que usa Seq
EXPOSE 5341
EXPOSE 5342