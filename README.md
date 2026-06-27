# Trabalho — Índice Brasileiro de Conectividade (Anatel)

Arquivos principais:

1. `ABRIR_SLIDES.html` — abra este arquivo para apresentar no navegador.
2. `TRABALHO_IBC_ANATEL_SLIDES.pdf` — PDF pronto para enviar/projetar.
3. `FALAS_PARA_APRESENTAR.md` — fala slide por slide para 10 a 12 minutos.
4. `index.qmd` — versão Quarto RevealJS.
5. `styles.css` — CSS do trabalho.
6. `script_reprodutivel_R.R` — script com `summary(modelo_final)`, `anova(modelo_final)` e `vif(modelo_final)`.
7. `docs/index.html` — pronto para GitHub Pages.

## Para apresentar

Abra `ABRIR_SLIDES.html` no navegador.
Use as setas do teclado para avançar e voltar.

## Para enviar para professora

Use `TRABALHO_IBC_ANATEL_SLIDES.pdf`.

## Para publicar no GitHub Pages

1. Crie um repositório novo no GitHub.
2. Envie todos os arquivos da pasta.
3. Vá em **Settings > Pages**.
4. Em **Source**, escolha **Deploy from a branch**.
5. Em **Branch**, escolha `main` e em **Folder**, escolha `/docs`.
6. Salve.

## Para renderizar no Quarto

```bash
quarto render index.qmd
```

Os gráficos já estão salvos em `figs/`, então a apresentação não depende de executar chunks R durante o render.
