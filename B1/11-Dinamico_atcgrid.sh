#!/bin/bash
#Se asigna al trabajo el nombre 11-SumaVectoresDinamico
#PBS -N 11-SumaVectoresDinamico
#Se asigna al trabajo la cola ac
#PBS -q ac
#Se imprime información del trabajo usando variables de entorno de PBS
#echo "Directorio en el que se ha ejecutado qsub: $PBS_O_WORKDIR"
#echo "Id. usuario del trabajo: $PBS_O_LOGNAME"
#echo "Id. del trabajo: $PBS_JOBID"
#echo "Nombre del trabajo especificado por usuario: $PBS_JOBNAME"
#echo "Nodo que ejecuta qsub: $PBS_O_HOST"
#echo "Directorio en el que se ha ejecutado qsub: $PBS_O_WORKDIR"
#echo "Cola: $PBS_QUEUE"
#echo "Nodos asignados al trabajo:"
#cat $PBS_NODEFILE
#Se ejecuta 11-SumaVectoresDinamico, que está en el directorio en el que se ha ejecutado qsub,
#para N potencia de 2 desde 2^16 a 2^26
for ((N=16384;N<67108865;N=N*2))
do
   time $PBS_O_WORKDIR/11-SumaVectoresDinamico $N
done
