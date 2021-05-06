FROM oraclelinux:7-slim as oracle

# Define working directory
WORKDIR /app

# Define variable for Oracle Instant Client
ARG release=19
ARG update=3

# Instala Oracle Instant Client
RUN  yum -y install oracle-epel-release-el7 oracle-release-el7 && yum-config-manager --enable ol7_oracle_instantclient && \
     yum -y install oracle-instantclient${release}.${update}-basic oracle-instantclient${release}.${update}-devel oracle-instantclient${release}.${update}-sqlplus && \
     yum install -y oracle-softwarecollection-release-el7 && \
     yum-config-manager --enable software_collections && \
     yum-config-manager --enable ol7_latest ol7_optional_latest && \
     yum install -y scl-utils && \ 
     rm -rf /var/cache/yum

# Instala Python 3.6
FROM python:3.7.5-slim

WORKDIR /app

## Adiciona instant client to path
ENV PATH=$PATH:/usr/lib/oracle/${release}.${update}/client64/bin
ENV TNS_ADMIN=/usr/lib/oracle/${release}.${update}/client64/lib/network/admin

# Adiciona wallet files
ADD ./wallet /usr/lib/oracle/${release}.${update}/client64/lib/network/admin/
# Copia requirements
COPY ./requirements.txt /app/requirements.txt

# Copia arquivos da aplicacao
COPY ./app.py ./config.py ./forms.py ./models.py ./Procfile  /app/
COPY ./static /app/static
COPY ./templates /app/templates

RUN  pip install -r /app/requirements.txt
ENV PORT 8000

### Expoe porta da aplicacao Flask
EXPOSE 8000
CMD  exec gunicorn  --bind :$PORT app:app --config=config.py