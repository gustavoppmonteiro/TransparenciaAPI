
API_SD <- function(token, pasta, CODMES, CODANO="2020") {

      # configurações iniciais --------------------------------------------------

      library(httr)
      library(jsonlite)
      library(stringr)
      library(tidyverse)
      library(janitor)

      options(timeout = 1000000)


      # lista_mun ---------------------------------------------------------------
      destfile1 <- paste0(pasta, "mun1.zip")
      url1 <- "ftp://geoftp.ibge.gov.br/organizacao_do_territorio/estrutura_territorial/divisao_territorial/2018/DTB_2018.zip"
      download.file(url1, destfile1)
      unzip(destfile1)


      mun <- janitor::clean_names(readxl::read_xls("RELATORIO_DTB_BRASIL_MUNICIPIO.xls")) %>%
            select(codigo_municipio_completo, nome_municipio)

      listaMun <- as.character(mun$codigo_municipio_completo)


      # preparando loop ---------------------------------------------------------
      url_base <- "http://www.portaltransparencia.gov.br/api-de-dados/seguro-defeso-por-municipio?mesAno=CODANOCODMES&codigoIbge=CODMUN&pagina=1"

      dataX <- data.frame()

      rodada <- 1


      # loop --------------------------------------------------------------------
      for(i in listaMun){

            if (as.numeric(i)>0) {
                  url_mun <- str_replace(url_base, "CODMES", CODMES)
                  url_mun <- str_replace(url_mun, "CODMUN", i)
                  url_mun <- str_replace(url_mun, "CODANO", CODANO)

                  print(url_mun)
                  print(rodada)
                  rodada <- rodada+1

                  res <-  GET(url_mun,
                              add_headers('chave-api-dados' = token))

                  resC <- content(res, "text")

                  restjson <- fromJSON(resC, flatten = TRUE)
                  data <- as.data.frame(restjson)

                  dataX <- bind_rows(dataX, data)

                  write.csv2(dataX, paste0(pasta, "/arquivo_final_SD.csv"))

            }

      }

}
