#!/bin/bash

# Caminho da pasta onde as subpastas estão localizadas
pasta_base="/home/kaue/ProjetoSoja/datasetSoja"  # Substitua pelo caminho correto

# Array associativo para mapeamento de nomes em inglês para português, no padrão de pastas
declare -A nomes_map=(			
    ["Sudden Death Syndrone"]="sindrome_morte_subita"
    ["brown_spot"]="mancha_parda"
    ["crestamento_bacteriano"]="crestamento_bacteriano"
    ["powdery_mildew"]="oidio"
    ["Southern blight"]="podridao_radicular"
    ["Yellow Mosaic"]="mosaico_amarelo"
    ["crestamento"]="crestamento"
    ["ferrugen"]="ferrugem"
    ["septoria"]="septoriose"
    ["Mossaic Virus"]="virus_mosaico"
)

# Navega para a pasta base
cd "$pasta_base" || exit

# Loop para renomear pastas de acordo com o mapeamento
for pasta_original in "${!nomes_map[@]}"; do
    pasta_nova="${nomes_map[$pasta_original]}"
    
    # Renomear a pasta
    if [ -d "$pasta_original" ]; then
        mv "$pasta_original" "$pasta_nova"
        echo "Renomeado: '$pasta_original' -> '$pasta_nova'"
    else
        echo "Pasta não encontrada: '$pasta_original'"
    fi
done
