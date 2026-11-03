# Calque pour Homebrew

[Calque](https://calque.valentingassend.com/?utm_source=github) est une app pour Windows et Mac, éditée en France par Valentin Gassend, qui remplace l'historique du presse-papier (Win+V, ⇧⌘V) et cherche dans les fichiers de tes drives installés (Google Drive, OneDrive, Dropbox, iCloud Drive, kDrive), même restés en ligne. Historique chiffré, sans compte, rien n'est envoyé.

Ce dépôt est le « tap » Homebrew qui l'installe sur Mac (Apple Silicon et Intel, macOS 13 Ventura ou plus récent).

```sh
brew install --cask valentingassend/calque/calque
```

Mettre à jour, quand une nouvelle version sort :

```sh
brew upgrade --cask calque
```

Désinstaller (l'historique et la licence restent sur le Mac) :

```sh
brew uninstall --cask calque
```

Tout effacer, historique chiffré et licence compris (garde l'e-mail de ta licence pour la saisir de nouveau) :

```sh
brew uninstall --zap --cask calque
```

## Ce que la formule installe

Exactement l'app du téléchargement direct : le même DMG, signé par le développeur (Developer ID) et notarisé par Apple, téléchargé depuis `calque.valentingassend.com` et vérifié par son empreinte SHA-256. Homebrew ne modifie rien dans l'app.

## Gratuit et Pro

Installer par Homebrew ne change rien à ce qui est gratuit ou payant. Calque Pro (la recherche dans les drives) se débloque dans l'app avec une licence, la même quelle que soit l'installation : Microsoft Store, DMG ou Homebrew. Après un achat, la licence arrive par e-mail ; elle se colle dans *Calque → À propos → Saisir une licence*, sans connexion à Internet. Pendant la bêta privée, tout est débloqué pour les testeurs.

---

## Calque for Homebrew (English)

[Calque](https://calque.valentingassend.com/en.html?utm_source=github) is a Windows and Mac app, made in France by Valentin Gassend, that replaces clipboard history (Win+V, ⇧⌘V) and searches the files in your installed cloud drives (Google Drive, OneDrive, Dropbox, iCloud Drive, kDrive), including online-only files. Encrypted history, no account, nothing sent.

This tap installs it on Mac (Apple Silicon and Intel, macOS 13 Ventura or later).

```sh
brew install --cask valentingassend/calque/calque
brew upgrade --cask calque                 # update
brew uninstall --cask calque               # remove the app, keep history and licence
brew uninstall --zap --cask calque         # also erase the encrypted history and the licence
```

The cask installs the same Developer ID signed, Apple-notarized DMG as the direct download, checked against its SHA-256. Installing with Homebrew does not change what is free or paid: Calque Pro is unlocked inside the app with a licence (*Calque → About → Enter a licence*), whichever way you installed it. During the private beta, everything is unlocked for testers.

## Publier une nouvelle version (pour le mainteneur)

1. Envoyer les deux DMG notarisés sur le site, dans `telechargements/` : `Calque-<version>-arm64.dmg` et `Calque-<version>.dmg`.
2. Calculer leurs empreintes : `shasum -a 256 Calque-<version>*.dmg`.
3. Dans `Casks/calque.rb`, changer `version` et les deux `sha256`, puis pousser. Le test GitHub Actions installe la formule sur un Mac Apple Silicon et un Mac Intel et vérifie la signature, la notarisation et la version.

`brew upgrade` ne voit une mise à jour que si `version` change : chaque correction publiée pour Mac doit porter un nouveau numéro de version.
