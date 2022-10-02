# Dotfiles

This is an attempt at making my dotfiles public.

They're highly experimental - i.e. not friendly to blind copypasta :laughing:

I'll attempt to list the important dependencies/plugins here in brief, and allow you to do the rest.

## Tools

The installation processes of these tools are usually pretty straightforward, so I've omitted any information about them as it would be redundant/inferior to what you'd find in their FAQs & forums :smile:

### Kitty

Super fast terminal emulator with builtin window multiplexer. Cutest app icon in the game!

### `zsh` plugins

- `exa`: pretty `ls`
- `lazygit`: incredible cli git interface
- `jump`: lazy, intelligent `cd` abbreviations
- `starship`: pretty, configurable command prompt
- `fzf`: awesome, fast list filtering
- `ripgrep`/`rg`: supa fast grepping, dependency of `fzf` & `nvim` plugins
- `bat`: `cat` file-viewer replacement, with syntax highlighting
- `zplug`: zsh plugin manager, used to install...
  - `zsh-autocomplete`
  - `fast-syntax-highlighting`
  - `zsh-autosuggestions`

### `nvim`

The installation of neovim & its plugins/packages are beasts unto themselves.

#### `NvChad`

Incredible framework/boilerplate for `nvim`. Exposes configuration options in a friendly, modular way. Makes the aforementioned 'beasts' a lot more approachable.

I won't go into too much detail here, but will give some tips about approaching `nvim` configuration - plugins, and their useful commands that I have off the top of my head... if this fails to yield anything useful, doc-diving is on your docket!

- `Packer`: `nvim` plugin manager. 
  - `:PackerInstall` when you've added plugins to your plugins table in `nvim/lua/custom/chadrc.lua`.
    - You may have to exit and re-enter `nvim` for changes to sync.
  - `:PackerCompile` after installing a plugin, to recompile your binaries (I think. Idrk tbh) with that plugin's new code.
  - `:PackerSync` to update plugins. Not recommended to do this on a workday - save for weekends when you have oodles(!) of time to update configs for breaking changes.
- `treesitter`: AST Language parser (I think?) that enables (among other things) IDE-like syntax highlighting.
  - `:TSInstallInfo`/`:TSInstall`
- `LSP`: Language-Server protocol. Parses files & their changes, asks a language server (typescript, css, rust, etc) if the changes are ok, reports diagnostics if not...
  - Requires the installation and configuration of language servers. Can be nasty.
  - `:LspInfo`
- `Mason`: Aggregates/simplifies the installation of language servers, formatters, linters (don't ask me the difference)
  - `:Mason`: `?` for help
- `null-ls`: Aggregates/simpl-/unifies the configuration of language servers' diagnostics/linting/code action features, code formatters, etc.
  - `:NullLsInfo`
- `Telescope`: like `fzf`, but in `nvim`. Can be used to filter & view lists of... basically anything. 
  - `:Telescope`: shows a list of every telescope 'picker' that you can use. Of note:
    - `:Telescope find_files/<leader>ff`: file-finder
    - `:Telescope live_grep/<leader>fw`: directory-wide search
    - `:Telescope git_status/<leader>gt`: git status


Ok. I think that should do for now. Feel free to ask questions/make suggestions and I'll try to update this. Happy editing!
