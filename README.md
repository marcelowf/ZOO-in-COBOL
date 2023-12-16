# Programa COBOL - PROGCOBOL0

Este é um simples programa COBOL chamado `PROGCOBOL0` que simula um passeio em um zoológico. Ele exibe mensagens de boas-vindas e apresenta diferentes seções do zoológico, como aviário, aquário e insetário.

## Estrutura do Programa

O programa está estruturado em seções padrão do COBOL, como `IDENTIFICATION DIVISION`, `ENVIRONMENT DIVISION`, `DATA DIVISION`, `PROCEDURE DIVISION`, etc. Cada seção tem a sua função específica na definição e execução do programa.

## Variáveis de Trabalho

- `WS-SHOW` (Working-Storage): Variável utilizada para armazenar a descrição da seção atual do zoológico.

## Seções do Zoológico

O zoológico é dividido em três seções principais: aviário, aquário e insetário.

- **Aviário:** Exibe a seção do aviário e passa para a próxima seção.
- **Aquário:** Exibe a seção do aquário e passa para a próxima seção.
- **Insetário:** Exibe a seção do insetário e passa para a próxima seção.

Cada seção é realizada pelo parágrafo `SEC-PROC` na seção `FIR-PROC`.

## Controle de Fluxo

O controle de fluxo é gerenciado pelos parágrafos condicionais `HERPETARIO`, `MAMIFERARIO` e `CRIADOURO`, que verificam a seção atual (`WS-SHOW`) e decidem qual seção deve ser visitada a seguir.

## Encerramento do Programa

O programa exibe a mensagem "FIM DO PASSEIO" ao finalizar a execução.

## Como Executar

Para compilar e executar o programa, utilize um compilador COBOL, como o OpenCOBOL (cobc). Certifique-se de que o compilador está instalado e, em seguida, execute o seguinte comando no terminal:

```bash
cobc -x PROGCOBOL0.cob
