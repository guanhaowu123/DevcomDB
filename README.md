DEVCOMdb currently contains a priori knowledge base data from seven vertebrate species, including human, mouse, bos taurus, sheep, rat, macaca mulatta and macaca fascicularis.
```
remotes::install_github("guanhaowu123/DEVCOMdb")
devtools::install_github("guanhaowu123/DEVCOMdb")

library(dplyr)
library(DevcomDB)
library(igraph)
library(dplyr)

data <- load_interaction_data()
head(data)

ligand_receptor_df <- data[["human_ligand_receptor"]]
receptor_tf_df <- data[["human_receptor_tf"]]
tf_target_df <- data[["human_tf_target_gene"]]
print(colnames(ligand_receptor_df))
head(ligand_receptor_df)
ligands <- names(ligand_receptor_df)[grep("^L", names(ligand_receptor_df), ignore.case = TRUE)]
receptors <- names(ligand_receptor_df)[grep("^R", names(ligand_receptor_df), ignore.case = TRUE)]

colnames(receptor_tf) <- c("receptor", "tf")

ligand_to_tf <- ligand_receptor %>%
  filter(R1 %in% receptor_tf$receptor) %>%
  inner_join(receptor_tf, by = c("R1" = "receptor")) %>%
  select(L1,L2,R1, R2,R3, tf)

write.csv(ligand_to_tf,"human_L-R-TF_develop.csv",row.names = FALSE)

tf_target_df <- data[["human_tf_target_gene"]]
colnames(tf_target_df) <- c("tf1", "target")
write.csv(tf_target_df, file = file.path(output_dir,  "human_tf_target_develop.csv"), row.names = FALSE)


```
