#!/bin/bash
 

  menu(){
          echo "Escolha uma das opções"
          echo "[1] OPÇÃO"
          echo "[2] OPÇÃO"
          read opcao
          case $opcao in
                  1)primeira;;
                  2)segunda;;
          esac
  }
  primeira(){
          echo "---------"
          echo "Perdeu"
          echo "---------"
          menu
  }
  
  segunda(){
          echo "---------"
          echo "ACERTOU!"
          echo "---------"
	  menu
  }          
menu
