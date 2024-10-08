#!/bin/bash

POKEMONS=`curl -s https://raw.githubusercontent.com/cervoise/pentest-scripts/ab1e32eebd4c03a4cd64391bc3df97472810f9b4/password-cracking/wordlists/pokemon-list-en.txt`

OUTPUT_FILE="output"

mkdir -p $OUTPUT_FILE

for POKEMON in $POKEMONS
  do
    FIRST_LETTER=${POKEMON:0:1}
    mkdir -p "$OUTPUT_FILE/$FIRST_LETTER"

    if [ ! -f "$OUTPUT_FILE/$FIRST_LETTER/pokemon.txt" ]
      then
        touch "$OUTPUT_FILE/$FIRST_LETTER/pokemon.txt"
    fi

    echo $POKEMON >> "$OUTPUT_FILE/$FIRST_LETTER/pokemon.txt"
done