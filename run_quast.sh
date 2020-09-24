# I'm not really sure why I was running quast here as it's part of the assembly pipeline
# Consider this deprecated
ref_pre=/research/rv-02/home/eanderson/Simulated_Data_Wenlan/Simulated_Ref/Fasta/mergeScaftig_normalized_hap
ref_suff=.fa
prefix=/research/rv-02/home/eanderson/Sentieon_Stratification_Test/synthetic_binned_fasta/Sentieon_Assembly_20200128/hap
suffix=/binned.fasta
quast_path=/research/rv-02/home/qmao/Scripts/python_virtualenv/quast_v5/env/bin/quast.py

haps=(A B)
for hap in ${haps[@]}; do
    $quast_path ${prefix}${hap}${suffix} \
                -s \
                -R ${ref_pre}${hap}${ref_suff} \
                --threads 64 \
                --no-snps \
                --fragmented \
                --min-contig 10000 \
                -o Quast_Binned_Hap${hap}_v0.4 \
                --large
done
