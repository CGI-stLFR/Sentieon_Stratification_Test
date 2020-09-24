# Stratification Pipeline

This is the older stratification pipeline.
We later redifined how variants were assessed.
The more up to date stratification pipeline can be found here:
`/research/rv-02/home/eanderson/Sentieon_Stratification_Test_v2/`

## Running the pipeline

Symlink the `Assembly/` directory under `Assembly`.
This pipeline is primarily for simulated libraries.
Be sure to name it appropriately.
Add the symlinked directory name to the config file under `samples`.
Then just run snakemake as below.

```
# -s supplies the snakefile
# --configfile supplies the config file
# -j supplied threads
snakemake -s run_binning.smk --configfile run_binning.config -j 60 2>&1 | tee snakemake.err.txt
```

## run_binning.config

- samples
    - samples specifies which samples to evaluate
    - just add the name of the dir that's been added to `Assembly` before running the pipeline
