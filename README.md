# DatavizChallenge-ENTPE
Dataviz Challenge - Ecole Nationale des Travaux Publics de l'Etat - 1er et 2 Février 2023

## Arbo

- notebooks
- data
- outputs
- qgis

## Données
### Fournies
- Cartofriches
- Consommation d'espaces : https://artificialisation.developpement-durable.gouv.fr/suivi-consommation-espaces-naf#paragraph--2172
- Communes et types (rurales, etc...) : https://www.insee.fr/fr/information/2028028
- Corine Land Cover
	- Styles : https://github.com/igeofr/qgis_styles
- Chorèmes de comeetie :
	- https://www.comeetie.fr/galerie/choremes/choremesvt/
	- https://www.comeetie.fr/galerie/choremes/choremesvt.zip
- Relief BDALTI

### Potentiellement intéressantes
- Carroyage population
- BDTOPO, végétalisation, cours d'eau
- Observatoire des territoires
- Couches haute résolution COPERNICUS : imperméabilisation, etc... (https://land.copernicus.eu/pan-european/high-resolution-layers)

### Préparées
Mettre les liens vers les données

- Occupation du sol (Corine Land Cover) → Fait Mathieu
- Accessibilité aux TC  → Fait Mathieu
- Distance au centre-ville (mairie)  → Fait Mathieu
- Zonage d’urbanisme (directement dans les données)
- Altitude de la friche → LIEN BDALTI MATHIEU
- Zones denses → LIEN carroyage
- Consommation 


#### Dynamiques
- Nombre de friches par commune
- Flux d'artificialisation et nombre de communes

#### Accessibilité
- [x] Distance mairie (à vol d'oiseau) : friches_mairie.gpkg
- [x] Distance aux arrêts de bus : friches_stops.gpkg

#### Espaces
- [x] Occupation du sol (dans un rayon d'1 km) : friches_ocsol.gpkg
	- Styles : https://github.com/igeofr/qgis_styles
- [ ] Altitude moyenne
- [ ] Végétalisation

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
- sunburst : NP
- Différents tampons : MR
- dumbell : NP
- streamgraph : https://datagistips.github.io/dataviz-masterclass/4-notebook-stream.html

### Bouts de code Bonus
- [ ] Utiliser translation CityCompare pour voir la forme des friches et afficher les formes moyennes par région : MR
- [ ] All the roads to : friche à mairie : MR
- [ ] Images obliques birdseye : MR
- DBScan http://www.sthda.com/english/wiki/wiki.php?id_contents=7940

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
