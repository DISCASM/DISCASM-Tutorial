../FusionFilter/prep_genome_lib.pl --genome_fa minichr2.fa --gtf minichr2.gtf --gmap_build
../../STAR-Fusion/STAR-Fusion --left_fq HCC1395-miniplus_1.fastq.gz --right_fq HCC1395-miniplus_2.fastq.gz --genome_lib_dir ctat_genome_lib_build_dir/
../DISCASM/DISCASM --chimeric_junctions STAR-Fusion_outdir/Chimeric.out.junction --left_fq HCC1395-miniplus_1.fastq.gz --right_fq HCC1395-miniplus_2.fastq.gz --out_dir discasm --denovo_assembler Trinity
../GMAP-fusion -T discasm/trinity_out_dir.Trinity.fasta --genome_lib_dir ctat_genome_lib_build_dir/ --left_fq HCC1395-miniplus_1.fastq.gz --right_fq HCC1395-miniplus_2.fastq.gz
