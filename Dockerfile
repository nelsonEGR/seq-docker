# Imagen oficial de Seq como base
FROM datalust/seq:latest

# Cambiar a root para ajustar permisos
USER root

# Asegurar que el binario tenga permisos de ejecución
RUN chmod +x /seqsvr/Seq

# Volver al usuario por defecto de Seq
USER seq

# Puerto expuesto por Seq
EXPOSE 80

# Directorio de datos (persistente)
VOLUME ["/data"]

# Variables de entorno mínimas
ENV ACCEPT_EULA=Y
ENV SEQ_FIRSTRUN_ADMINPASSWORD=TuPasswordSeguro

# Comando de inicio
ENTRYPOINT ["/seqsvr/Seq"]