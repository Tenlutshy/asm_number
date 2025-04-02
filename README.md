# ⚙️ API Rust :

[![Rust badge](https://img.shields.io/badge/Language-Assembleur-brown
)](https://fr.wikipedia.org/wiki/Assembleur)

### 📌 Sommaire :

I. [Prérequis](#🔧-prérequis)

II. [Utilisation](#💻-utilisation)


### 🔧 Prérequis :
- Avoir un environnement Linuxx.

### 💻 Utilisation :

Avant de commencer, vous devez :

- Clonner le repo : 
```bash
git clone https://github.com/Tenlutshy/asm_number.git
```

- Naviguer jusqu'au projet
```bash
cd asm_number
```

- Exécuter le fichier .exe
```rs
./number
```

**💡 TIPS**

Générer un .exe léger :

*Génère le fichier .o*
```bash
nasm -f elf32 -O3 number.s -o number.o
```
***`-O3` permet de spécifier le niveau d'optimisation (de 0 à 3)***

*Génère le fichier .exe*
```bash 
ld -m elf_i386 -s -z norelro -z noseparate-code --strip-all --gc-sections -o number number.o
```
