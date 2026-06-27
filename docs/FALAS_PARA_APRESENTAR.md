# Falas para apresentar — 10 a 12 minutos

## Slide 1
Bom dia. Meu trabalho analisa o Índice Brasileiro de Conectividade, o IBC, dos municípios brasileiros. A proposta foi usar uma base pública da Anatel e aplicar regressão linear múltipla para investigar quais fatores de infraestrutura e competitividade estão associados ao nível de conectividade.

## Slide 2
A conectividade é importante porque está ligada ao acesso a estudo, trabalho, serviços públicos e informação. Como esse acesso não é igual em todos os municípios, o tema também envolve desigualdade territorial. Estatisticamente, o IBC é interessante porque permite relacionar um indicador sintético de conectividade com várias dimensões explicativas.

## Slide 3
O problema de pesquisa é: quais fatores de infraestrutura e competitividade estão associados ao IBC dos municípios brasileiros entre 2021 e 2024? A hipótese inicial é que municípios com maior cobertura 4G e 5G, presença de fibra e maior densidade de serviços apresentem valores mais altos de IBC.

## Slide 4
O objetivo geral é ajustar um modelo de regressão linear múltipla para explicar diferenças no IBC municipal. Como objetivos específicos, eu descrevo as variáveis, apresento gráficos de dispersão, ajusto o modelo, avalio summary, ANOVA, FIV e faço diagnóstico dos resíduos.

## Slide 5
A base utilizada é da Anatel, então não é uma base nativa do R. A unidade de observação é município-ano. Como são 5.570 municípios observados em quatro anos, o banco tem 22.280 observações.

## Slide 6
A variável resposta é o IBC. As variáveis explicativas representam infraestrutura, como cobertura 4G/5G, fibra, densidade SMP, densidade SCM e adensamento de estações. Também entram variáveis de competitividade, como HHI SMP e HHI SCM, além do ano da observação.

## Slide 7
A metodologia usada foi regressão linear múltipla. Na forma geral, o modelo é y igual a X beta mais erro. Os coeficientes foram estimados por mínimos quadrados ordinários. Depois, avaliei a significância dos coeficientes, a ANOVA, o FIV, os resíduos, o QQ-plot e pontos influentes.

## Slide 8
O modelo final usa o IBC como função das variáveis de infraestrutura, competitividade e do ano. As variáveis quantitativas foram padronizadas para facilitar a comparação dos coeficientes. Assim, consigo comparar quais variáveis têm maior efeito relativo sobre o IBC.

## Slide 9
No gráfico de dispersão entre IBC e fibra, aparece uma relação positiva. Em geral, municípios com maior presença de fibra tendem a apresentar valores mais altos do índice de conectividade.

## Slide 10
A cobertura 4G e 5G também apresenta associação positiva com o IBC. Isso faz sentido, porque essa variável mede uma dimensão importante da infraestrutura móvel de telecomunicações.

## Slide 11
A distribuição do IBC mostra que a maior parte dos municípios-ano está concentrada em valores intermediários. Também existem municípios com valores baixos e outros com valores elevados, o que justifica investigar fatores associados a essa variação.

## Slide 12
O boxplot por ano mostra que a distribuição do IBC muda ao longo do tempo. Por isso, o ano foi incluído no modelo como controle temporal.

## Slide 13
Aqui está a saída do modelo no formato do summary do R. O R² ajustado foi aproximadamente 0,9815, indicando alto poder explicativo. O teste F global também apresenta p-valor muito pequeno, então o conjunto das variáveis contribui para explicar o IBC.

## Slide 14
Nesta tabela aparecem os coeficientes do summary. Como as variáveis foram padronizadas, a magnitude dos coeficientes pode ser comparada. Fibra aparece com o maior coeficiente, seguida pela cobertura 4G/5G, densidade SMP, densidade SCM e adensamento de estações.

## Slide 15
A ANOVA do modelo final mostra que os blocos de variáveis têm p-valores muito pequenos. Isso indica que as variáveis adicionam explicação estatisticamente significativa ao modelo.

## Slide 16
O FIV foi usado para avaliar multicolinearidade. Todos os valores ficaram abaixo de 5, então não há evidência forte de multicolinearidade problemática entre as variáveis explicativas consideradas.

## Slide 17
O gráfico de observados contra ajustados mostra que os pontos ficam próximos da diagonal. Isso confirma visualmente o bom ajuste do modelo.

## Slide 18
O gráfico de resíduos contra valores ajustados permite avaliar se há padrão sistemático nos resíduos. O ideal é que eles fiquem espalhados em torno de zero. Como a base é muito grande, alguns padrões podem aparecer, mas o modelo ainda é útil para descrever associação.

## Slide 19
O QQ-plot mostra desvios nas caudas, algo comum em bases municipais grandes. A distância de Cook foi usada para verificar possíveis pontos influentes. Essa etapa é importante porque o caderno da disciplina destaca resíduos e pontos influentes no diagnóstico do modelo.

## Slide 20
Como conclusão, infraestrutura de fibra, cobertura 4G/5G, densidade de serviços e adensamento de estações apresentaram associação positiva com o IBC. O modelo teve alto poder explicativo, mas a interpretação deve ser associativa, não causal. Ou seja, o modelo descreve relações estatísticas observadas na base da Anatel.
