#' Load Human and Mouse Interaction Datasets
#'
#' This function loads all six datasets for human and mouse interactions
#' involving ligands, receptors, transcription factors, and target genes.
#'
#' @return A list containing six data frames.
#' @export load_interaction_data
load_interaction_data <- function() {
  # Define file paths relative to the package
  human_ligand_receptor_path <- system.file("data", "human_L_R_develop.csv", package = "DevcomDB")
  human_receptor_tf_path <- system.file("data", "human_R-TF_develop.csv", package = "DevcomDB")
  human_tf_target_gene_path <- system.file("data", "human_TF-T_develop.csv", package = "DevcomDB")
  human_ligand_receptor_desease_path <- system.file("data", "human_L_R_develop_desease.csv", package = "DevcomDB")
  human_receptor_tf_desease_path <- system.file("data", "human_R-TF_develop_desease.csv", package = "DevcomDB")
  human_tf_target_gene_desease_path <- system.file("data", "human_TF-T_develop_desease.csv", package = "DevcomDB")
  mouse_ligand_receptor_path <- system.file("data", "mouse_L_R_develop.csv", package = "DevcomDB")
  mouse_receptor_tf_path <- system.file("data", "mouse_R-TF_develop.csv", package = "DevcomDB")
  mouse_tf_target_gene_path <- system.file("data", "mouse_TF-T_develop.csv", package = "DevcomDB")
  bos_ligand_receptor_path <- system.file("data", "BOS_L_R_develop.csv", package = "DevcomDB")
  bos_receptor_tf_path <- system.file("data", "BOS_R-TF_develop.csv", package = "DevcomDB")
  bos_tf_target_gene_path <- system.file("data", "BOS_TF-T_develop.csv", package = "DevcomDB")
  # Load data into data frames
  human_ligand_receptor <- read.csv(human_ligand_receptor_path, stringsAsFactors = FALSE)
  human_receptor_tf <- read.csv(human_receptor_tf_path, stringsAsFactors = FALSE)
  human_tf_target_gene <- read.csv(human_tf_target_gene_path, stringsAsFactors = FALSE)
  human_ligand_receptor_desease <- read.csv(human_ligand_receptor_desease_path, stringsAsFactors = FALSE)
  human_receptor_tf_desease <- read.csv(human_receptor_tf_desease_path, stringsAsFactors = FALSE)
  human_tf_target_gene_desease <- read.csv(human_tf_target_gene_desease_path, stringsAsFactors = FALSE)
  mouse_ligand_receptor <- read.csv(mouse_ligand_receptor_path, stringsAsFactors = FALSE)
  mouse_receptor_tf <- read.csv(mouse_receptor_tf_path, stringsAsFactors = FALSE)
  mouse_tf_target_gene <- read.csv(mouse_tf_target_gene_path, stringsAsFactors = FALSE)
  bos_ligand_receptor <- read.csv(bos_ligand_receptor_path, stringsAsFactors = FALSE)
  bos_receptor_tf <- read.csv(bos_receptor_tf_path, stringsAsFactors = FALSE)
  bos_tf_target_gene <- read.csv(bos_tf_target_gene_path, stringsAsFactors = FALSE)

  # Return a list of all datasets
  list(
    human_ligand_receptor = human_ligand_receptor,
    human_receptor_tf = human_receptor_tf,
    human_tf_target_gene = human_tf_target_gene,
    human_ligand_receptor_desease = human_ligand_receptor_desease,
    human_receptor_tf_desease = human_receptor_tf_desease,
    human_tf_target_gene_desease = human_tf_target_gene_desease,
    mouse_ligand_receptor = mouse_ligand_receptor,
    mouse_receptor_tf = mouse_receptor_tf,
    mouse_tf_target_gene = mouse_tf_target_gene,
    bos_ligand_receptor = bos_ligand_receptor,
    bos_receptor_tf = bos_receptor_tf,
    bos_tf_target_gene = bos_tf_target_gene

  )
}
