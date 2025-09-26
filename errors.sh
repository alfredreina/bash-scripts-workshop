#!/bin/bash
cat no_existeix.txt 2> errors.log
echo "Alguna cosa ha fallat! Revisa errors.log"
