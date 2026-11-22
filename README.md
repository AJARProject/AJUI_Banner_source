# AJUI Banner

Composant 4D d'AJAR SA qui affiche des bannières dessinées en SVG : bandeau en coin de formulaire (« corner ribbon »), bannière sur toute la fenêtre, spinner d'attente, avec texte ou image, couleurs, bordure, police et position réglables.

Sources du composant [AJUI_Banner](https://github.com/AJARProject/AJUI_Banner). La documentation d'origine reste sur le [wiki](https://github.com/AJARProject/AJUI_Banner/wiki) et dans `Documentation/Methods`. Ce dépôt n'est pas maintenu activement ; une proposition de correction peut passer par une [pull request](https://github.com/AJARProject/AJUI_Banner_source/pulls).

**4D 21 R4**, mode projet, `compatibilityVersion` 2140. Version **1.9.0** : `AJUIB_Info` renvoie `AJUI_Banner (v21 R4) : 1.9.0`. Licence MIT (`LICENSE`).

Cette nouvelle version a été réalisée avec l'aide de Cursor et de Grok Bot. Analyse du dépôt et détail de la migration : [ANALYSIS.md](ANALYSIS.md).

## Installation rapide

**Interprété.** Ouvrir `Project/AJUI_Banner.4DProject` avec 4D 21 R4, ou déclarer le dossier du dépôt comme dépendance locale d'un hôte (`"AJUI_Banner": {}` dans `dependencies.json`, chemin dans `environment4d.json`). Une dépendance vers les sources ne fonctionne qu'en interprété.

**Compilé.** Construire le composant (Développement > Générer l'application, ou `AJUIB_BuildComponent`, qui appelle `BUILD APPLICATION` sur `Settings/buildApp.4DSettings`). Le `.4dbase` produit (avec `AJUI_Banner.4DZ`, compilé pour Intel et Apple Silicon, signé) se place dans le dossier `Components` de l'hôte, ou se déclare dans `dependencies.json`. Un hôte compilé ne charge pas un composant interprété.

**4D SVG** est déclaré dans `Project/Sources/dependencies.json` (`github: 4d/4D-SVG`). Sans cette déclaration, les appels `SVG_*` ne compilent pas en 4D 21 R4. Le gestionnaire de dépendances de 4D l'installe aussi chez l'hôte.

## Utilisation

```4d
var $banner : Object
$banner:=New AJUI_Banner  // ou AJUI_Banner.new() pour la classe cs.Banner
$banner.BannerType("cornerRibbon")
$banner.Message("Démo")
$banner.BannerPosition("bottom-right")
$banner.DrawBanner()
```

Les fiches de chaque méthode partagée sont dans `Documentation/Methods`. Le formulaire de démonstration s'ouvre avec `Launch_HDI_AJUI_Banner`.

## Changements de la migration 4D 21 R4 (1.9.0)

- `Project/AJUI_Banner.4DProject` : `compatibilityVersion` 2140, `tokenizedText` false ; les jetons `:C` / `:K` ont été retirés du code.
- Directives `C_TEXT`, `C_LONGINT`… remplacées par `var` ; `$0` / `$1`… remplacés par `#DECLARE(...) -> $result` (méthodes) ou par le prototype de la fonction (classe `Banner`). Les types sont ceux que le compilateur déduisait déjà. Aucun changement de logique.
- `Compiler_Methods` : les déclarations de paramètres `C_xxx(méthode;$n)` sont retirées, remplacées par le `#DECLARE` de chaque méthode.
- Classe `Banner` : propriétés déclarées avec `property`.
- `Settings/buildApp.4DSettings` remplacé par un fichier minimal (composant, sans chemin de licence) ; le `.gitignore` ne l'exclut plus. `AJUI_BuildComponent` ne tente plus d'incrémenter « +Build » quand la version n'a plus ce format.
- Résultat : compilation 4D 21 R4 sans erreur ni avertissement.

Réalisé avec Cursor / Grok Bot (Codesky) pour Maurice Inzirillo.

---

# AJUI Banner

4D component by AJAR SA that shows SVG-drawn banners: form corner ribbon, full-window banner, waiting spinner, with text or picture, and configurable colors, border, font and position.

Sources of the [AJUI_Banner](https://github.com/AJARProject/AJUI_Banner) component. The original documentation is on the [wiki](https://github.com/AJARProject/AJUI_Banner/wiki) and in `Documentation/Methods`. This repository is not actively maintained; fixes can be proposed with a [pull request](https://github.com/AJARProject/AJUI_Banner_source/pulls).

**4D 21 R4**, project mode, `compatibilityVersion` 2140. Version **1.9.0**: `AJUIB_Info` returns `AJUI_Banner (v21 R4) : 1.9.0`. MIT licence (`LICENSE`).

This new version was made with the help of Cursor and Grok Bot. Repository analysis and migration details: [ANALYSIS.md](ANALYSIS.md) (in French).

## Short install

**Interpreted.** Open `Project/AJUI_Banner.4DProject` with 4D 21 R4, or declare the repository folder as a local host dependency (`"AJUI_Banner": {}` in `dependencies.json`, path in `environment4d.json`). A dependency on sources works in interpreted mode only.

**Compiled.** Build the component (Design > Build Application, or `AJUIB_BuildComponent`, which calls `BUILD APPLICATION` on `Settings/buildApp.4DSettings`). Put the resulting `.4dbase` (with `AJUI_Banner.4DZ`, compiled for Intel and Apple Silicon, signed) in the host `Components` folder, or declare it in `dependencies.json`. A compiled host does not load an interpreted component.

**4D SVG** is declared in `Project/Sources/dependencies.json` (`github: 4d/4D-SVG`). Without it, the `SVG_*` calls do not compile in 4D 21 R4. 4D's dependency manager also installs it in the host.

## Usage

```4d
var $banner : Object
$banner:=New AJUI_Banner  // or AJUI_Banner.new() for the cs.Banner class
$banner.BannerType("cornerRibbon")
$banner.Message("Demo")
$banner.BannerPosition("bottom-right")
$banner.DrawBanner()
```

Each shared method is documented in `Documentation/Methods`. The demo form opens with `Launch_HDI_AJUI_Banner`.

## 4D 21 R4 migration changes (1.9.0)

- `Project/AJUI_Banner.4DProject`: `compatibilityVersion` 2140, `tokenizedText` false; the `:C` / `:K` tokens were removed from the code.
- `C_TEXT`, `C_LONGINT`… directives replaced with `var`; `$0` / `$1`… replaced with `#DECLARE(...) -> $result` (methods) or with the function prototype (`Banner` class). Types are the ones the compiler already inferred. No logic change.
- `Compiler_Methods`: the `C_xxx(method;$n)` parameter declarations are removed, replaced by each method's `#DECLARE`.
- `Banner` class: properties declared with `property`.
- `Settings/buildApp.4DSettings` replaced with a minimal file (component, no licence path); `.gitignore` no longer excludes it. `AJUI_BuildComponent` no longer tries to increment "+Build" when the version no longer has that format.
- Result: 4D 21 R4 compilation with no error and no warning.

Made with Cursor / Grok Bot (Codesky) for Maurice Inzirillo.
