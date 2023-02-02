library(sf)
library(tidyverse)
library(jsonlite)
library(glue)

# Fonction pour récupérer les mairies d'un département
get_mairies_dep <- function(dep) {
  
  # Read API
  url <- glue("https://geo.api.gouv.fr/departements/{dep}/communes?geometry=mairie&format=geojson")
  res <- read_json(url)
  
  # Get communes  
  feats <- res$features
  out <- vector(mode = "list")
  for(i in 1:length(feats)) {
    feat <- res$features[[i]] 
    
    # Informations attributaires
    nom <- feat$properties$nom
    code <- feat$properties$code
    siren <- feat$properties$siren
    codeRegion <- feat$properties$codeRegion
    population <- feat$properties$population
    
    # Géométrie
    coords <- feat$geometry$coordinates
    long <- coords[[1]]
    lat <- coords[[2]]
    geom <- st_point(c(long, lat)) %>% st_sfc
    
    # Data frame
    df <- data.frame(nom, code, siren, codeRegion, population)
    st_geometry(df) <- geom
    
    out[[i]] <- df
  }
  
  res <- do.call(rbind, out) %>% st_set_crs(4326)
  
  return(res)
}

# Fonction pour récupérer les mairies de plusieurs départements
get_mairies <- function(deps) {
  out <- vector(mode = "list")
  for(i in 1:length(deps)) {
    dep <- deps[i]
    print(dep)
    out[[i]] <- get_mairies_dep(dep)
  }
  res <- do.call(rbind, out)
  return(res)
}

# Récupérer les mairies des Bouches-du-Rhône
mairies_d13 <- get_mairies_dep("13")
mairies_d13

# Récupérer les codes départements nationaux
url <- "https://geo.api.gouv.fr/departements"
j <- read_json(url)
deps <- sapply(j, function(x) x$code)

# On récupère les mairies sur les départements concernés
mairies_fr <- get_mairies(deps)

# On exporte la donnée en GPKG
st_write(mairies_fr, "mairies_fr.gpkg", delete_dsn = T)