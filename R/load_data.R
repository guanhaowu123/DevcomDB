#' Load 7 species Interaction Datasets
#'
#' DEVCOMdb currently contains a priori knowledge base data from seven vertebrate species, including human, mouse, bos taurus, sheep, rat, macaca mulatta and macaca fascicularis
#' involving ligands, receptors, transcription factors, and target genes.
#'
#' @return A list containing six data frames.
#' @export load_interaction_data
load_interaction_data <- function() {
  # Define file paths relative to the package
  human_ligand_receptor_path <- system.file("data", "human_L_R_develoment.csv", package = "DevcomDB")
  human_receptor_tf_path <- system.file("data", "human_R-TF_develop.csv", package = "DevcomDB")
  human_tf_target_gene_path <- system.file("data", "human_TF-T_develop.csv", package = "DevcomDB")
  human_ligand_receptor_desease_path <- system.file("data", "human_L_R_desease.csv", package = "DevcomDB")
  human_receptor_tf_desease_path <- system.file("data", "human_R-TF_develop_desease.csv", package = "DevcomDB")
  human_tf_target_gene_desease_path <- system.file("data", "human_TF-T_develop_desease.csv", package = "DevcomDB")
  mouse_ligand_receptor_path <- system.file("data", "mouse_L_R_develoment.csv", package = "DevcomDB")
  mouse_receptor_tf_path <- system.file("data", "mouse_R-TF_develop.csv", package = "DevcomDB")
  mouse_tf_target_gene_path <- system.file("data", "mouse_TF-T_develop.csv", package = "DevcomDB")
  bos_ligand_receptor_path <- system.file("data", "BOS_L_R_develoment.csv", package = "DevcomDB")
  bos_receptor_tf_path <- system.file("data", "BOS_R-TF_develop.csv", package = "DevcomDB")
  bos_tf_target_gene_path <- system.file("data", "BOS_TF-T_develop.csv", package = "DevcomDB")
  rat_ligand_receptor_path <- system.file("data", "rat_L_R_develoment.csv", package = "DevcomDB")
  sheep_ligand_receptor_path <- system.file("data", "sheep_L_R_develoment.csv", package = "DevcomDB")
  mfascicularis_ligand_receptor_path <- system.file("data", "mfascicularis_L_R_develoment.csv", package = "DevcomDB")
  mmulatta_ligand_receptor_path <- system.file("data", "mmulatta_L_R_develoment.csv", package = "DevcomDB")


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
  rat_ligand_receptor <- read.csv(rat_ligand_receptor_path, stringsAsFactors = FALSE)
  sheep_ligand_receptor <- read.csv(sheep_ligand_receptor_path, stringsAsFactors = FALSE)
  mfascicularis_ligand_receptor <- read.csv(mfascicularis_ligand_receptor_path, stringsAsFactors = FALSE)
  mmulatta_ligand_receptor <- read.csv(mmulatta_ligand_receptor_path, stringsAsFactors = FALSE)


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
    bos_tf_target_gene = bos_tf_target_gene,
    sheep_ligand_receptor = sheep_ligand_receptor,
    rat_ligand_receptor = rat_ligand_receptor,
    mfascicularis_ligand_receptor = mfascicularis_ligand_receptor,
    mmulatta_ligand_receptor = mmulatta_ligand_receptor
  )
}
