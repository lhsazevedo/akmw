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

## Requisitos.
Para compilar, o assembler wla-dx para z80 (wla-z80) e o linker wlalink devem estar disponíveis na sua variável de ambiente PATH.

## Compilando
Execute o script de compilação para o seu sistema:

**Linux:**
Execute o script de compilação:
```
./compile.sh
```

**Windows:**
```
./compile.bat
```

O script irá fazer o build das duas versões da ROM (REV0 e REV1), e checará se as ROMs geradas são identicas às originais.

## Documentação
- [Introdução básica](docs/basic-introduction.pt-BR.md)

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
