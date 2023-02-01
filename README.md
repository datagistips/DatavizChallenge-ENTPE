# DatavizChallenge
1er et 2 Février 2023 à l'Ecole Nationale des Travaux Publics de l'Etat

## Données friches
Voir le dossier [`data`](data)

- [Friches qualifiées issues de Cartofriches (points et surfaces)](data/friches/02_preprocessing)

## Données contextuelles
- Consommation d'espaces : https://artificialisation.developpement-durable.gouv.fr/suivi-consommation-espaces-naf#paragraph--2172
- Communes et types (rurales, etc...) : https://www.insee.fr/fr/information/2028028
- Corine Land Cover ([styles QGIS à appliquer](https://github.com/igeofr/qgis_styles))
- Chorèmes de comeetie :
	- https://www.comeetie.fr/galerie/choremes/choremesvt/
	- https://www.comeetie.fr/galerie/choremes/choremesvt.zip
- Relief BDALTI

## Données préparées et croisées
Voir le dossier [`outputs`](outputs) pour les données  
Voir le dossier [`notebooks`](notebooks) pour les scripts de préparation des données

### Dynamiques
- [ ] Nombre de friches par commune
- [ ] Flux d'artificialisation et nombre de friches par communes

### Accessibilité
- [x] [Distance mairie (à vol d'oiseau)](outputs/friches_mairie.gpkg)
- [x] [Distance aux arrêts de bus](outputs/friches_stops.gpkg)

### Espaces
- [x] [Occupation du sol (dans un rayon d'1 km)](outputs/friches_clc.gpkg)
	- Styles : https://github.com/igeofr/qgis_styles
- [x] [Altitude et pente par friches](outputs/friches_altitude.gpkg)
- [x] Zonage d’urbanisme (directement dans les données)

## Données autres potentiellement intéressantes
- [Carroyage population et zones densément peuplées](https://www.insee.fr/fr/statistiques/4176290?sommaire=4176305)
- BDTOPO, végétalisation, cours d'eau
- Observatoire des territoires et autres indicateurs communaux
- Couches haute résolution COPERNICUS : imperméabilisation, etc... (https://land.copernicus.eu/pan-european/high-resolution-layers)

## Bouts de code
- [Import de GPKG en R et python des friches](notebooks/BoutsCodes.Rmd)
- [Un group by par communes](notebooks/BoutsCodes.Rmd)
- [Un exemple de jointure](notebooks/BoutsCodes.Rmd)
- Treemap friches, artificialisation : https://r-graph-gallery.com/treemap.html
- Density et heat map https://trucvietle.me/r/tutorial/2017/01/18/spatial-heat-map-plotting-using-r.html
- Sunburst : NP
- [Différents tampons](notebooks/11_Tampons.Rmd)
- dumbell : NP
- streamgraph : https://datagistips.github.io/dataviz-masterclass/4-notebook-stream.html

### Bouts de code Bonus
- [x] Déplacer un objet (par ex. une commune) sur un autre pour comparer les tailles : https://gist.github.com/datagistips/6cd56402b7fadc1f858d1cdfa717b3e7
- [x] Utilisation de l'API IGN pour calculer des itinéraires : https://gist.github.com/datagistips/799ca3e4c4af32dfd97dc8a2b4959674
- [x] Images obliques birdseye pour faire des vues à la Yann Arthus Bertrand : https://gist.github.com/datagistips/ad7e5ad9da4b94f3a7f5d1b9f652cf66
- DBScan : http://www.sthda.com/english/wiki/wiki.php?id_contents=7940

## Ressources
### QGIS
- Atlas géographique https://www.sigterritoires.fr/index.php/faire-un-atlas-avec-qgis/
- Atlas thématique https://naturagis.fr/qgis/atlas-repartition-especes-qgis/

### R
- https://r-graph-gallery.com/ : des dataviz et codes associés sous R
- https://www.htmlwidgets.org/ et https://toulouse-dataviz.fr/hackaviz/editions-precedentes/ : graphiques et librairies interactives pour R

### Dataviz
- https://www.data-to-viz.com/ : comment choisir sa dataviz en fonction de ses données ?
- https://datavizproject.com/ : liste de dataviz

### Dataviz autres
- https://github.com/OrdnanceSurvey/GeoDataViz-Toolkit
- https://github.com/z3tt/beyond-bar-and-box-plots/blob/main/README.md
- https://thinkr.fr/les-pieges-de-la-representation-de-donnees/
- https://handsondataviz.org/
- [datagistips masterclass sur les flux d'artificialisation](https://datagistips.github.io/dataviz-masterclass/)

### Sources d'inspiration
- https://toulouse-dataviz.fr/hackaviz/editions-precedentes/ : premiers prix dataviz
- https://mtmx.github.io/ : blogger
- flowingdata : actus et curation dataviz
- https://www.reddit.com/r/MapPorn/
- https://twitter.com/TerribleMaps

## Slides
- A1 : la donnée et problématiques
- A2 : dataviz

[Accéder au dossier `slides` avec les présentations](Présentations)

<!--
### Analyses
- Pollution des sols
- Constructibilité
- Ancienne activité
- Type de commune
- Plus grosse densité de friches ? Sur une surface de ...
- Noms de friches et histoire wikipédia wikidata sparql
- Histoire de friche
- Dates de cessation d'activité et de commencement
- Reconversion de friches
-->

## Notes
Lien Note BOX :  
https://cerema.box.com/s/k6kew3nmxfdx23iaj33am7umv075q2pv

Pad Colibris :  
https://pad.colibris-outilslibres.org/p/data
