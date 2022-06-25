# Simple Useful Nvim

<img src="https://github.com/Diogo-ss/SUNvim/blob/main/screenshot/20220625_000531.png" min-width="200px" max-width="200px" width="300px" align="right" alt="Computador iuriCode">

- [Introdução](#introdução)
- [Screenshot](#screenshot)
- [Dependências](#dependências)
- [Instalação](#instalação)
  - [Linguagens](#linguagens)
  - [Recomendaçõe](#recomendaçõe)
- [Atalhos](#atalhos)
  - [Atalhos gerais](#atalhos-gerais)
  - [Navegação](#navegação)
- [Contribuidores](#contribuidores)
- [Créditos](#créditos)
- [FAQ](#faq)

## Introdução

## Screenshot

## Dependências
<a href="https://neovim.io/" target="_blank"> Neovim </a> >= 0.7.0<p>
<a href="https://nodejs.org" target="_blank"> Nodejs </a> >= 12.xx - Necassário para o autocomplete<p>
<a href="https://github.com/junegunn/vim-plug" target="_blank"> Vim-Plug</a> - Instalador dos Plugins<p>

### Dependências opcionais:
<a href="https://github.com/jesseduffield/lazygit" target="_blank"> LazyGit</a> - Para facilitar o uso do Git<p>

## Instalação 
### (WSL/Linux)
Após a instalação das dependências, execute o comando abaixo. Tenha o <a href="https://git-scm.com/" target="_blank"> Git </a> instalado.<p>
```shell
git clone https://github.com/Diogo-ss/SSNvim.git ~/.config/sunvim --depth 1 ; rm -rf ~/.config/nvim ; mv ~/.config/sunvim/nvim ~/.config ; rm -rf ~/.config/sunvim ; nvim -c 'PlugInstall'
```
## Linguagens
Cada linguagem necessita de suporte indivídual para seu funcionamento no SUNvim, mas é simples. O autocomplete é o <a href="https://github.com/neoclide/coc.nvim" target="_blank"> Coc.nvim </a> e toda sua documentação oficial está disponível em <a href="https://github.com/neoclide/coc.nvim" target="_blank"> Coc.nvim </a>. Cada linguagem precisa de seu compilador e do seu <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> Language servers </a>. ```C/C++```, ```HTML```, ```Java```, ```Javascript/Typescript```, ```JSON```, ```Lua``` e ```Python``` podem ser instaldas através dos comandos abaixo, instruções para outras linguagem <a href="" target="_blank"> aqui.</a><p>

### C/C++
1° - Instale o ```gcc```, ```g++``` e ```make```

``` shell
sudo apt-get install manpages-dev
```
2° - Instale <a href="https://clangd.llvm.org/installation.html" target="_blank"> CLangd</a> >= 8.0, para o autocomplete
``` shell
sudo apt-get install clangd-12
```
3° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -v 'CocInstall coc-clangd'
```
<br />
  
### HTML
1° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -v 'CocInstall coc-html'
```
<br />

### Java
1° instale o <a href="https://www.oracle.com/java/technologies/downloads/" target="_blank"> Java JDK </a >>= 11<p>
2° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -v 'CocInstall coc-java'
```
<br />

### Javascript/Typescript
1° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -v 'CocInstall coc-tsserver'
```
<br />
  
### JSON
1° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -v 'CocInstall coc-json'
```
<br />

### Lua
1° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -v 'CocInstall coc-sumneko-lua'
```
<br />

### Python
1° Instale o <a href="https://www.python.org/downloads/" target="_blank"> Python3 </a>
``` shell
sudo apt install python3
```
2° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -v 'CocInstall coc-python'
```
<br />
 
### Rust
1° - Instale o <a href="https://www.rust-lang.org" target="_blank"> Rust</a>
``` shell
sudo apt install rustc
```
2° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -c 'CocInstall coc-rust-analyzer'
```
<br />

## Opicional

## Recomendaçõe
## Atalhos
## Atalhos gerais
## Navegação
## Geral

## Navegação

## Contribuidores

## Créditos

## FAQ
