# 💻 computerdesign2025

🎓 *Projet académique réalisé à la Faculté Polytechnique de l’Université de Kinshasa — Département Génie Électrique et Informatique (2025)*

## 📌 Objectif

Ce projet vise la **compréhension, l’implémentation et la simulation** de composants logiques numériques de base à l’aide du langage **Verilog HDL**. Il est conçu pour renforcer les compétences pratiques en **conception de circuits** et en **simulation logicielle**.

## 🧱 Composants implémentés

| Composant | Description |
|----------|-------------|
| ➕ `full_adder.v` | Additionneur binaire 1 bit avec `carry-in` et `carry-out` |
| 🔢 `decoder_2to4.v` | Décodeur combinatoire : 2 bits d'entrée → 4 sorties |
| 🔁 `shift_register.v` | Registre à décalage (gauche et droite) avec horloge et reset |

Chaque composant dispose :
- d’un **module Verilog commenté** 📄
- d’un **fichier de test (testbench)** 🧪
- d’un **fichier `.vcd`** pour l’analyse avec GTKWave 📊

## 🛠️ Outils utilisés

- 💬 [Verilog HDL](https://fr.wikipedia.org/wiki/Verilog)
- ⚙️ [Icarus Verilog](http://iverilog.icarus.com/) — compilation
- 👀 [GTKWave](http://gtkwave.sourceforge.net/) — visualisation des signaux



## ▶️ Instructions de simulation

Exemple pour simuler l’additionneur avec Icarus Verilog :

```bash
iverilog -o sim.out full_adder.v full_adder_tb.v
vvp full_adder.out
gtkwave full_adder.vcd


👨‍💻 Auteurs
👤 Kambale Maruba Exaucé (1ICE-EN)
👤 Nkishi (1ICE-IN)
👤 Bualuti (1ICE-EE)


📄 Licence
🆓 Ce projet est à but pédagogique et libre d'utilisation.
🙌 Contributions et suggestions bienvenues pour améliorer et étendre le projet.
