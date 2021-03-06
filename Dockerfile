#Sistema Operacional
FROM ubuntu:18.04

#Dependências do sistema
RUN apt-get update -y
RUN apt-get install -y python3-dev python3-pip build-essential

#Pacotes do Python
RUN pip3 install --upgrade pip #Atualização do gerenciador de pacotes
RUN pip3 install jupyter #Instalação do pacote jupyter notebook
RUN pip3 install numpy matplotlib scipy requests pandas xgboost seaborn #Dependências

#Dependências para o notebook 2
RUN apt-get update -y
RUN apt-get install -y git zip wget
RUN apt-get install -y graphviz

WORKDIR /desafio-4-2020
COPY . /desafio-4-2020

# EXPOSE 8888

# CMD ["jupyter", "notebook", "--ip 0.0.0.0", "--allow-root"]
# jupyter notebook --ip 0.0.0.0 --allow-root