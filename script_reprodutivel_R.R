# Trabalho - Índice Brasileiro de Conectividade (Anatel)
# Modelos Lineares I - Regressão Linear Múltipla

# Pacotes necessários
# install.packages(c("readr", "dplyr", "ggplot2", "car"))
library(readr)
library(dplyr)
library(ggplot2)
library(car)

# Leitura da base externa ao R
dados <- read_csv("br_anatel_indice_brasileiro_conectividade_municipio.csv.gz")

# Variáveis quantitativas usadas no modelo
vars <- c(
  "cobertura_pop_4g5g", "fibra", "densidade_smp", "hhi_smp",
  "densidade_scm", "hhi_scm", "adensamento_estacoes"
)

# Padronização das variáveis quantitativas para comparar efeitos
dados <- dados %>%
  mutate(
    across(all_of(vars), ~ as.numeric(scale(.x)), .names = "{.col}_z"),
    ano = factor(ano)
  )

# Modelo inicial sem padronização
modelo_inicial <- lm(
  ibc ~ cobertura_pop_4g5g + fibra + densidade_smp + hhi_smp +
    densidade_scm + hhi_scm + adensamento_estacoes + ano,
  data = dados
)

# Modelo final com variáveis padronizadas
modelo_final <- lm(
  ibc ~ cobertura_pop_4g5g_z + fibra_z + densidade_smp_z + hhi_smp_z +
    densidade_scm_z + hhi_scm_z + adensamento_estacoes_z + ano,
  data = dados
)

# Saídas pedidas no trabalho
summary(modelo_inicial)
summary(modelo_final)
anova(modelo_final)
car::vif(modelo_final)

# Diagnóstico de resíduos
par(mfrow = c(2, 2))
plot(modelo_final)
par(mfrow = c(1, 1))
library(lmtest)

bp <- bptest(modelo_final)

cat(
  "Estatística BP =", round(bp$statistic),
  "\nGraus de liberdade =", bp$parameter,
  "\np-valor =", format(bp$p.value, scientific = TRUE)
)
