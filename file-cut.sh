#!/bin/bash

for i in Sample1.fastq Sample2.fastq Sample3.fastq Sample4.fastq; do
(
    total=$(wc -l < "$i")
    lines=$((total / 16))
    head -n "$lines" "$i" > "${i%.fastq}_alumno16.fastq"
    echo "Procesado $i → ${i%.fastq}_alumno16.fastq"
) &
done

wait
echo "Todos los ficheros procesados."
