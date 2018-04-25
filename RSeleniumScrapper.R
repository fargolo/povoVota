library(RSelenium)

# Run Selenium server
# ~/povoVota$java -jar seleniumServer/selenium-server-standalone-3.9.1.jar")
remDr <- remoteDriver(remoteServerAddr = "localhost" 
                      , port = 4444
                      , browserName = "firefox")

remDr$open()
remDr$navigate("http://www.camara.leg.br/buscaProposicoesWeb/pesquisaSimplificada")

# Botao
webElem <- remDr$findElement(using = 'class', "submit")
webElem$sendKeysToElement(list(key = "enter"))
# Texto
#webElem <- remDr$findElement()
