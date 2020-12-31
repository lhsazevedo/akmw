*[🌐 Read this in English](README.md)*

# Disassembly do Alex Kidd in Miracle World

O objetivo deste projeto é entender, nomear e documentar todo o disasssembly do jogo [Alex Kidd in Miracle World](https://pt.wikipedia.org/wiki/Alex_Kidd_in_Miracle_World) lançado em 1986 para o Sega Master System.

Para garantir que a ROM compilada exatamente igual ao cartucho original, o hash dos arquivos compilados é checado.

As seguintes ROMs são compiladas:
- **Alex Kidd in Miracle World (USA, Europe) (Rev 1)**  
  alex-kidd-in-miracle-world-usa-europe-rev-1.sms  
  ```
  SHA1  6d052e0cca3f2712434efd856f733c03011be41c
  CRC32 aed9aac4
  ```
- **Alex Kidd in Miracle World (USA, Europe)**  
  alex-kidd-in-miracle-world-usa-europe.sms  
  ```
  SHA1  8cecf8ed0f765163b2657be1b0a3ce2a9cb767f4
  CRC32 17a40e29
  ```

**⚠️ Aviso**  
Este repositório não possui todos os assets necessários para compilar as ROMs. Você deve ter uma cópia do jogo para extraí-los.

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

## Compilando
*Em breve*

## Por quê?
É sabido que o disassembly deste jogo já foi feito pela comunidade de forma privada. Portanto, meu objetivo não é ser o primeiro ou algo do tipo, mas sim aprender a programar pro SMS e compartilhar esse conhecimento com o mundo.

## Contato
Grupo Telegram: https://t.me/smsdasmbr

## Agradecimentos
Obrigado a todas as pessoas que pesquisaram o hardware do Master System e este jogo, e disponibilizaram esse trabalho gratuitamente. Sem eles eu teria desistido no primeiro dia.

- Comunidade [SMS Power!](https://www.smspower.org/)
- [Pesquisa](https://www.smspower.org/Development/AlexKiddInMiracleWorld-SMS) feita por [Calindro](https://www.smspower.org/forums/member6944) e [Paul Baker](https://www.smspower.org/forums/member501)
- Emulador [Emulicious](https://emulicious.net/) por [Callindro](https://www.smspower.org/forums/member6944)
- Assembler [WLA DX](https://github.com/vhelin/wla-dx) por [Ville Helin](https://github.com/vhelin)
- Outros projetos de disassembly como [Pret](https://github.com/pret)
- E todos os outros que não foram citados aqui.

## Aviso Legal
Todo e qualquer conteúdo apresentado neste repositório é apresentado apenas para fins informativos e educacionais.
O uso comercial é expressamente proibido. O proprietário não reivindica a propriedade de nenhum código nesses repositórios.
Você assume toda e qualquer responsabilidade pelo uso responsável deste conteúdo. O proprietário não reclama nenhuma responsabilidade ou garantia.
Você não tem permissão para redistribuir a ROM modificada ou distribuir a modificação com cópias piratas do jogo.
