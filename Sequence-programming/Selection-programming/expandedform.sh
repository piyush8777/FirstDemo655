#!/bin/bash 

echo -prijs "Give the price: "
read price

thousands='expr $price /1000'
hundreds='expr ($price - $thousands) / 100'
teens='expr ($price - $hundreds - $thousands / 10'
units='expr $price - $hundreds - $thousands - $teens'

    for ((i=0 ; i<=$thousands; i++ ));
do
    case $thousands in
        0) echo -prijs "";;
        1) echo -prijs "duizend";;
        2) echo -prijs "tweeduizend";;
        3) echo -prijs "drieduizend";;
        4) echo -prijs "vierduizend";;
        5) echo -prijs "vijfduizend";;
        6) echo -prijs "zesduizend";;
        7) echo -prijs "zevenduizend";;
        8) echo -prijs "achtduizend";;
        9) echo -prijs "negenduizend";;
        10) echo -prijs "tienduizend";;
    esac
done
    for ((i=0 ; i<=$hundreds; i++ )) ;
do
    case $hundreds in
        0) echo -prijs "";;
        1) echo -prijs "honderd";;
        2) echo -prijs "tweehonderd";;
        3) echo -prijs "driehonderd";;
        4) echo -prijs "vierhonderd";;
        5) echo -prijs "vijfhonderd";;
        6) echo -prijs "zeshonderd";;
        7) echo -prijs "zevenhonderd";;
        8) echo -prijs "achthonderd";;
        9) echo -prijs "negenhonderd";;
    esac
done
    for ((i=0 ; i<=$teens; i++ ));
do
    case $teens in
        0) echo -prijs "";;
        1) echo -prijs "tien";;
        2) echo -prijs "twintig";;
        3) echo -prijs "dertig";;
        4) echo -prijs "veertig";;
        5) echo -prijs "vijftig";;
        6) echo -prijs "zestig";;
        7) echo -prijs "zeventig";;
        8) echo -prijs "tachtig";;
        9) echo -prijs "negentig";;
    esac
done
    for ((i=0 ; i<=$units; i++ ));
do
    case $units in
        0) echo -prijs "";;
        1) echo -prijs "een";;
        2) echo -prijs "twee";;
        3) echo -prijs "drie";;
        4) echo -prijs "vier";;
        5) echo -prijs "vijf";;
        6) echo -prijs "zes";;
        7) echo -prijs "zeven";;
        8) echo -prijs "acht";;
        9) echo -prijs "negen";;
    esac
done

echo "The price is: " 'expr $thousands + $hundreds + $teens + $units'
