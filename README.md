# TransparenciaAPI

As funções servem para baixar do API do Portal da Transparência as informações de beneficiários de todos os municípios do Brasil, para determinado mês.
São 4 funções, uma pra cada benefício:
- API_AE: para o Auxílio Emergencial
- API_BPC: para o Benefício de Prestação Continuada
- API_PBF: para o Programa Bolsa Família
- API_SD: para o Seguro Defeso





## Arguments

Todos têm os mesmos argumentos:

API_AE(token, pasta, CODMES, CODANO=2020)
token: chave de acesso do Portal da TransparÃªncia

pasta: pasta em que o arquivo final vai ser salva

CODMES: número do mês (character)

CODANO: Ano


## Examples

Não rodar

*token <- "xxxxxxxxxxxxxxxxxxxxxxx"*

*pasta <- "C:/nome/da/pasta" # obs.: não termine com "/"*

*CODMES <- "01"    # obs.: entre aspas, "01" para janeiro*

*CODANO <- "2020" # obs.: entre aspas.*


*API_AE(token, pasta, CODMES, CODANO)*
