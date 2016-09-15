# dqmscript
1. clonare il codice in una nuova cartella: git clone https://github.com/gigicap/dqmscript.git
2. Complilare il sorgente c++ con: gcc -o dqm_plot dqm_plot.cc
3. Eseguire lo script: ./plot.sh [raw_data_path] [numero_evento] [soglia]

[raw_data_path] è il percorso completo del file raw da visualizzare
[numero_evento] è l'evento all'interno del file di cui si vogliono vedere gli spettri. Se numero_evento = -1, viene graficato l'istogramma del numero di volte in cui ogni canale supera la soglia impostata al valore [soglia] nell'intero file (utile per vedere se alcuni canali "scattano" sensibilmente meno di altri).
  

