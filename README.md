# DatavizChallenge-ENTPE
Dataviz Challenge - Ecole Nationale des Travaux Publics de l'Etat - 1er et 2 Février 2023

## Arbo

- notebooks
- data
- outputs
- qgis

## Données
### Fournies
Voir le dossier `data`

- Cartofriches
- Consommation d'espaces : https://artificialisation.developpement-durable.gouv.fr/suivi-consommation-espaces-naf#paragraph--2172
- Communes et types (rurales, etc...) : https://www.insee.fr/fr/information/2028028
- Corine Land Cover
	- Styles : https://github.com/igeofr/qgis_styles
- Chorèmes de comeetie :
	- https://www.comeetie.fr/galerie/choremes/choremesvt/
	- https://www.comeetie.fr/galerie/choremes/choremesvt.zip
- Relief BDALTI

### Préparées
Voir le dossier `outputs`

#### Dynamiques
- [ ] Nombre de friches par commune
- [ ] Flux d'artificialisation et nombre de friches par communes

#### Accessibilité
- [x] Distance mairie (à vol d'oiseau) : friches_mairie.gpkg
- [x] Distance aux arrêts de bus : friches_stops.gpkg

#### Espaces
- [x] Occupation du sol (dans un rayon d'1 km) : friches_clc.gpkg
	- Styles : https://github.com/igeofr/qgis_styles
- [x] Altitude moyenne : friches_altitude.gpkg
- [ ] Végétalisation
- [x] Zonage d’urbanisme (directement dans les données)
- [ ] Zones denses → LIEN carroyage

### Potentiellement intéressantes
- Carroyage population
- BDTOPO, végétalisation, cours d'eau
- Observatoire des territoires
- Couches haute résolution COPERNICUS : imperméabilisation, etc... (https://land.copernicus.eu/pan-european/high-resolution-layers)

## Analyses et bouts de code
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

### Bouts de code
- Import de GPKG en R et python des friches : NP
- Un group by par communes : NP
- Un exemple de jointure : NP
- [ ] Treemap friches, artificialisation https://r-graph-gallery.com/treemap.html
- Density et heat map https://trucvietle.me/r/tutorial/2017/01/18/spatial-heat-map-plotting-using-r.html
- Sunburst : NP
- [Différents tampons](notebooks/11_Tampons.Rmd)
- dumbell : NP
- streamgraph : https://datagistips.github.io/dataviz-masterclass/4-notebook-stream.html

### Bouts de code Bonus
- [ ] Utiliser pour déplacer un objet (par ex. une commune) sur un objet pour comparer les tailles : https://gist.github.com/datagistips/6cd56402b7fadc1f858d1cdfa717b3e7
- [ ] Utilisation de l'API IGN pour calculer des itinéraires : https://gist.github.com/datagistips/799ca3e4c4af32dfd97dc8a2b4959674
- [ ] Images obliques birdseye : https://gist.github.com/datagistips/ad7e5ad9da4b94f3a7f5d1b9f652cf66
- DBScan : http://www.sthda.com/english/wiki/wiki.php?id_contents=7940

## Ressources
### Tutoriaux
- Atlas géographique https://www.sigterritoires.fr/index.php/faire-un-atlas-avec-qgis/
- Atlas thématique https://naturagis.fr/qgis/atlas-repartition-especes-qgis/

### Ressources Dataviz
- https://r-graph-gallery.com/ : des dataviz et codes associés sous R
- https://www.data-to-viz.com/ : comment choisir sa dataviz en fonction de ses données ?
- https://datavizproject.com/ : liste de dataviz

#### Autres
- https://github.com/OrdnanceSurvey/GeoDataViz-Toolkit
- https://github.com/z3tt/beyond-bar-and-box-plots/blob/main/README.md
- https://thinkr.fr/les-pieges-de-la-representation-de-donnees/
- https://handsondataviz.org/
- datagistips masterclass

### Sources d'inspiration
- https://toulouse-dataviz.fr/hackaviz/editions-precedentes/ : premiers prix dataviz
- https://mtmx.github.io/ : blogger
- flowingdata : actus et curation dataviz
- https://www.reddit.com/r/MapPorn/
- https://twitter.com/TerribleMaps

## Slide de présentation animateurs
### A1
- Le projet Cartofriches
- Comment la donnée a été fabriquée
- Comment l'application Shiny a été faite
- Les variables de Cartofriches : schéma
- Les besoins
- Les données contextuelles
- Les données préparées
- Import de données

### A2
- Diagramme succès dataviz
- Quelques exemples
	- CityCompare
	- Et si
	- All the Roads to
	- Narratif

## Notes
Lien Note BOX :  
https://cerema.box.com/s/k6kew3nmxfdx23iaj33am7umv075q2pv

Pad Colibris :  
https://pad.colibris-outilslibres.org/p/data
