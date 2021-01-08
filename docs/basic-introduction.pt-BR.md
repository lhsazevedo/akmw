## O processo

### 1. Disassembly
A primeiro passo foi transformar o código de maquina da ROM original pra linguagem assembly, legível para humanos. Esse passo foi realizado com ajuda do emulador [Emulicious](https://emulicious.net/) que possui essa funcionalidade. Foram geradas cerca de [26 mil linhas de código](https://github.com/lhsazevedo/akmw/blob/25fd2e4413858a1700a7c40dd345f5d6b827e979/asm/baserom.asm). Veja abaixo uma das rotinas deste arquivo.

Código de máquina
```
061e 2100 c3cd 8d27 2310 fac9
```

Assembly:
```asm
_LABEL_9D9_:
    ld b, $1E
    ld hl, _RAM_C300_
-:
    call _LABEL_278D_
    inc hl
    djnz -
    ret
```

### 2. Nomear labels
Quando o jogo foi compilado lá em 1986, todas os nomes de variáveis e rotinas foram descartados pois não são necessários para executar o jogo. É por isso que o disassembler precisa dar nomes genéricos para esses labels como `_LABEL_9d9_` e `_RAM_C300_`.

Esse segundo passo consiste em entender o que esse trecho de código faz e renomear os labels para que façam sentido. Existem diversas formas de tentar entender um trecho: usando um emulador com debugger, procurando por documentação online ou analisando outras rotinas chamadas de ou a partir desta parte do código.

Veja abaixo o resultado.

```asm
clearEntities:
    ld b, $1E
    ld hl, entities
-:
    call clearEntity
    inc hl
    djnz -
    ret
```

Feito isso, você deve compilar o jogo para ter certeza que este trecho resultará em **exatamente os mesmos bytes** que vimos anteriormente. O script de build faz essa checagem automaticamente.

### 3. Documentar
Este passo não influencia na compilação do jogo, mas pode ajudar outras pessoas a entenderem trechos particularmente complexos sem ter que analisar código assembly. Este passo é opcional.

Abaixo vemos o mesmo trecho acima adaptado para pseudo-código.

```
clearEntities() {
    for (i = 0x1E; i > 0; i--) {
        clearEntity(i)
    }
 
    return
}
```
