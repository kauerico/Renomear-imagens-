import os

# Caminho para o diretório onde estão as imagens
diretorio = r'C:/Users/ribei/OneDrive/Documents/ProjetoSoja/dataset/test/angular_leaf_spot'

# Loop para renomear os arquivos no diretório
for nome_arquivo in os.listdir(diretorio):
    # Verifica se o arquivo tem "angular_leaf_spot_test" no nome
    if "angular_leaf_spot_test" in nome_arquivo:
        # Substitui "angular_leaf_spot_test" por "mancha_larga_test"
        novo_nome = nome_arquivo.replace("angular_leaf_spot_test", "mancha_larga_test")
        # Caminho completo antigo e novo
        caminho_antigo = os.path.join(diretorio, nome_arquivo)
        caminho_novo = os.path.join(diretorio, novo_nome)
        # Renomeia o arquivo
        os.rename(caminho_antigo, caminho_novo)
        print(f'Renomeado: {nome_arquivo} -> {novo_nome}')
