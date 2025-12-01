# Imagen oficial de Seq como base
FROM datalust/seq:latest

# Puerto expuesto por Seq
EXPOSE 80

# Directorio de datos (persistente)
VOLUME ["/data"]

# Variables de entorno mínimas
ENV ACCEPT_EULA=Y
ENV SEQ_FIRSTRUN_ADMINPASSWORD=TuPasswordSeguro