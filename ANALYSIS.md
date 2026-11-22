# Analyse d'AJUI Banner (migration 4D 21 R4)

Composant 4D d'AJAR SA. Dépôt `AJARProject/AJUI_Banner_source`. Licence MIT, fichier `LICENSE`. Version après migration : **1.9.0** (4D 21 R4) ; `AJUIB_Info` renvoie `AJUI_Banner (v21 R4) : 1.9.0`. Avant la migration, `AJUIB_Info` renvoyait `AJUI Banner (Builded on v19 R4) : 1.8.0+Build23` (20 février 2022). Tags existants : `1.7.1` et `1.8.0`, sans release GitHub.

Réalisé avec Cursor / Grok Bot (Codesky) pour Maurice Inzirillo.

## Ce que fait le composant

AJUI Banner dessine une bannière en SVG (composant 4D SVG) et l'affiche dans le formulaire courant :

- `cornerRibbon` : bandeau en diagonale dans un coin du formulaire ou d'un objet cible (`RibbonTargetName`, `RibbonTargetCoordinates`) ;
- `window` : bannière centrée sur un fond qui couvre la fenêtre ;
- `spinner` et `windowSpinner` : animation d'attente, tournée par un worker (`CALL WORKER("AJUIB_spinner"; ...)`) qui redessine par `CALL FORM` ; l'arrêt passe par `Storage.AJUIB_spinner`.

L'hôte crée une instance avec `New AJUI_Banner` (objet dont les membres sont des `Formula` vers les méthodes `AJUIB_GetSet_*`, qui servent de setter et de getter selon `Count parameters`), ou avec la classe `cs.Banner` renvoyée par `AJUI_Banner` (ses fonctions appellent les mêmes méthodes). L'affichage se fait par `OBJECT DUPLICATE` d'un objet image du formulaire hôte.

## Structure

| Emplacement | Rôle |
| --- | --- |
| `Project/AJUI_Banner.4DProject` | Projet du composant. Avant migration : seulement le commentaire 4D. Maintenant `compatibilityVersion` 2140 et `tokenizedText` false. |
| `Project/Sources/Methods` | 39 méthodes projet. |
| `Project/Sources/Classes/Banner.4dm` | Classe `Banner` (getters/setters qui appellent les méthodes `AJUIB_GetSet_*`). |
| `Project/Sources/Forms/AJUI_BannerHowDoI` | Formulaire de démonstration (« How do I »), ouvert par `Launch_HDI_AJUI_Banner` et par `On Startup` en développement. |
| `Project/Sources/dependencies.json` | **Nouveau.** Déclare 4D SVG (`github: 4d/4D-SVG`). |
| `Settings/buildApp.4DSettings` | Déjà versionné (ajouté de force malgré le `.gitignore`). Il contenait un chemin de licence d'un autre poste et des réglages d'application ; il est remplacé par le fichier minimal des autres composants AJUI (`BuildComponent` True, nom `AJUI_Banner`). |
| `Settings/backup.4DSettings` | Réglages de sauvegarde, inchangés. |
| `Resources/Images`, `Resources/SVG/loading.svg` | Images de la démo et SVG du spinner. |
| `Documentation/Methods` | Fiches markdown des 4 méthodes partagées. |

## API partagée

Méthodes `"shared":true` : `New AJUI_Banner`, `AJUI_Banner` (renvoie `cs.Banner`), `AJUIB_Info`, `Launch_HDI_AJUI_Banner`. Les noms, attributs (`shared`, `invisible`), le nom de classe `Banner` et les comportements sont inchangés. Les membres de l'objet `New AJUI_Banner` (`DrawBanner`, `StopSpinner`, `HideBanner`, `WindowRef`, `WindowBGColor`, `BannerName`, `BannerType`, `BannerBGColor`, `BannerHeight`, `BannerWidth`, `BorderColor`, `BorderSize`, `cornerRadius`, `BannerPosition`, `SpinnerScale`, `WindowSpinnerSide`, `IsPicture`, `PicturePath`, `Message`, `TextColor`, `TextFontName`, `TextFontSize`, `TextFontWeight`, `TextFontStyle`, `RibbonTargetName`, `RibbonTargetCoordinates`) sont inchangés.

## Dépendances

- **4D SVG** : `SVG_New`, `SVG_New_rect`, `SVG_New_path`, `SVG_PATH_LINE_TO`, `SVG_PATH_CLOSE`, `SVG_New_textArea`, `SVG_New_image`, `SVG_SET_ATTRIBUTES`, `SVG_SET_TRANSFORM_*`, `SVG_SET_OPTIONS`, `SVG_Get_options`, `SVG_CLEAR`. En 4D 21 R4, sans déclaration dans `dependencies.json`, ces appels ne compilent pas (4D demande aussi d'importer « les composants anciennement inclus »).
- **Plugins** : aucun.
- Pas de tables.

## Migration 4D 21 R4

Avec l'ancien fichier projet et 4D SVG déclaré, la compilation passait avec 0 erreur et 150 avertissements (directives `C_*` obsolètes, `$0`/`$1` hors prototype). Avec `compatibilityVersion` 2140 sans autre changement : 812 erreurs et 72 avertissements.

Ce qui a été fait (même méthode qu'AJUI_Tip 1.8.0) :

1. **Jetons retirés.** Les suffixes `:C` (commandes) et `:K` (constantes) ont été retirés du code (pas des chaînes ni des commentaires).
2. **`var`.** Les directives `C_TEXT`, `C_LONGINT`, `C_REAL`, `C_OBJECT`, `C_BOOLEAN`, `C_PICTURE` ([Variables](https://developer.4d.com/docs/21-R4/Concepts/variables)) sont remplacées par `var`. Les locales non déclarées sont typées avec **le type que le compilateur leur donnait déjà** (symboles du compilateur, option `generateSymbols` de `Compile project`). Le code compilé garde donc les mêmes types.
3. **`#DECLARE`.** Dans les méthodes, `$1`, `$2`… deviennent `$param1`, `$param2`… et `$0` devient `$result`, déclarés par `#DECLARE(...) -> $result : Type` ([Paramètres](https://developer.4d.com/docs/21-R4/Concepts/parameters)). Un paramètre déclaré mais non utilisé reste déclaré (`$param1 : Boolean` de `Launch_HDI_AJUI_Banner`, que `New process` rappelle avec `True`). `Count parameters` compte toujours les paramètres réellement passés : les setters/getters appelés par `Formula` ou par la classe (sans paramètre = lecture, avec paramètre = écriture) gardent leur comportement.
4. **`Compiler_Methods`.** Ses 46 déclarations `C_xxx(méthode;$n)` faisaient double emploi avec les `#DECLARE` ; elles sont retirées. La méthode reste, vide avec un commentaire, et pourra partir dans une PR de nettoyage.
5. **Classe `Banner`.** Paramètres déclarés dans les prototypes (`Function BannerHeight($param1 : Integer) -> $result : Integer`, etc.). Propriétés déclarées ([Classes](https://developer.4d.com/docs/21-R4/Concepts/classes)) : `property banner; picture; text; window : Object`. Une propriété déclarée n'est créée qu'à l'affectation : `AJUIB_initAttributes` les crée comme avant.
6. **Version.** `AJUIB_Info` : `"1.9.0"  // 22 Nov 2026 (4D 21 R4)`, retour `AJUI_Banner (v21 R4) : 1.9.0` (le libellé passe de « AJUI Banner (Builded on v19 R4) » au format des autres composants migrés). La fiche `Documentation/Methods/AJUIB_Info.md` est mise à jour.
7. **Construction.** `Settings/buildApp.4DSettings` remplacé par le fichier minimal ; le `.gitignore` n'exclut plus `/Settings/*` ni `*.4DSettings`, garde `Settings/buildApp.4DSettings` malgré `*BuildApp*` (que macOS applique sans tenir compte de la casse) et ignore le composant construit `/Components/AJUI_Banner.4dbase/`. `AJUI_BuildComponent` cherchait `+Build` et `GMT` + CR dans `AJUIB_Info` pour incrémenter le numéro de build ; avec le nouveau format il aurait réécrit la méthode de travers. L'incrément n'est plus fait que si l'ancien format est présent ; `BUILD APPLICATION` reste appelé sur `Settings/buildApp.4DSettings`.

## Vérifications (Mac mini, 4D 21 R4 build 21R4.100185)

Sur un export `git archive` de la branche :

- `Compile project` (cibles `x86_64_generic` et `arm64_macOS_lib`) : **succès, 0 erreur, 0 avertissement**.
- `BUILD APPLICATION` : OK=1, `AJUI_Banner.4dbase` avec `AJUI_Banner.4DZ` et `Libraries/lib4d-arm64.dylib`, signature ad hoc, `codesign -v` valide.
- Test sans interface : `AJUIB_Info` = `AJUI_Banner (v21 R4) : 1.9.0` ; `New AJUI_Banner` crée l'instance, `BannerName`, `Message`, `BannerHeight`, `SpinnerScale` fonctionnent en écriture et en lecture, `BannerType` et `BannerPosition` renvoient les valeurs par défaut (`cornerRibbon`, `bottom-right`) ; `AJUI_Banner.new()` crée une instance `cs.Banner` initialisée, `BannerName` et `TextFontSize` fonctionnent en écriture et en lecture.
- Projet hôte de test (composant compilé placé dans `Components`, 4D SVG déclaré dans le `dependencies.json` de l'hôte) : composants chargés `AJUI_Banner` et `4D SVG`, mêmes résultats que ci-dessus. Sans 4D SVG déclaré chez l'hôte, 4D refuse de charger le composant (« AJUI_Banner a besoin du composant 4D SVG »).

## Risques et points non testés

1. **Affichage non testé.** Le test tourne sans interface (`--headless`) : `DrawBanner`, `HideBanner`, `StopSpinner`, le dessin SVG, le worker du spinner et le formulaire de démonstration n'ont pas été exécutés. La compilation garantit les types et les appels, pas le rendu.
2. **Release GitHub non testée** : le chargement par le gestionnaire de dépendances depuis une release (`"github": "AJARProject/AJUI_Banner_source"`) sera vérifié avec la release 1.9.0.
3. **Fiches de documentation** (déjà le cas avant la migration) : les exemples de `AJUI_Banner.md` et `New AJUI_Banner.md` appellent `$banner("window")`, `$banner.Banner("window")` et `$banner.isPicture(...)`, qui n'existent pas ; les vrais membres sont `BannerType` et `IsPicture`. Non corrigé ici.
4. La propriété interne `banner.spinner.windowWidht` (faute de frappe d'origine, utilisée de façon cohérente) est conservée telle quelle.
5. `$minPaddingSize_r` (dans `AJUIB_drawSpinner`) est typé `Integer` alors que son nom indique un réel : c'est le type que le compilateur lui donnait déjà, conservé pour ne rien changer au calcul.

## Étapes suivantes

- Fusion de cette PR, puis Release 1.9.0 (archive `AJUI_Banner_source.zip` du composant compilé et signé) et test depuis un hôte qui la déclare depuis GitHub. C'est cette release qui permettra à AJUI_ButtonLab de déclarer AJUI_Banner.
- PR de nettoyage éventuelle (`Compiler_Methods` vide, `On Startup` qui ouvre la démo).
