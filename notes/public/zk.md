---
tags:
  - notes
---

# zk

## About

zk is a command-line tool for maintaining a plain-text [[zettelkasten]] or personal wiki.
It creates notes from templates, searches and filters them by tags, links, and mentions, and provides an interactive browser powered by `fzf`,
while leaving editing to your preferred editor through its LSP integration.
Notes stay in [[markdown]], so they remain portable and can be published separately, for example with [[emanote]].

## Links

[Homepage](https://zk-org.github.io/zk)

## Nix module

![[zk.nix]]

## Configuration

`.zk/config.toml`

![[zk_config.toml]]

`.hx/languages.toml`

![[hx_languages.toml]]
