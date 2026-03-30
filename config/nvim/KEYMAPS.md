# Neovim Keymaps

> **Leader key**: `<Space>`

---

## File Explorer (Neo-tree)

| Key | Action |
|-----|--------|
| `<leader>e` | Reveal current file in Neo-tree |

---

## Telescope (Search & Navigation)

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files by name |
| `<leader>fb` | Switch buffer |
| `<leader>gg` | Live grep (full-text search via ripgrep) |
| `<leader>fl` | Fuzzy find in current buffer |
| `<leader>fr` | LSP references (Telescope) |
| `<leader>fg` | Find files tracked by Git |
| `<leader>fs` | LSP document symbols |
| `<leader>fw` | LSP workspace symbols |
| `<leader>gc` | Checkout Git branches |
| `<leader>gl` | Checkout Git commits |
| `<leader>qf` | Open quickfix list in Telescope |
| `<leader>R`  | Resume previous Telescope picker |

---

## LSP (Code Navigation)

> These keymaps are active when a language server is attached to the buffer.
> Supported languages: **Java**, **Go**, **TypeScript**, **JavaScript**, **Bash**.

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gi` | Go to implementation |
| `gr` | Find references (Telescope) |
| `K`  | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |

> **Tip:** Use `<leader>fs` / `<leader>fw` (Telescope section) for document/workspace symbol search.

---

## Editing Helpers

| Key | Mode | Action |
|-----|------|--------|
| `J` | Visual | Move selected lines down |
| `K` | Visual | Move selected lines up |
| `<` | Visual | Shift selection left (re-indent) |
| `>` | Visual | Shift selection right (re-indent) |
| `<leader>d` | Normal | Duplicate current line |
| `<leader>d` | Visual | Duplicate selected lines |
| `<leader>q` | Normal | Send diagnostics to location list |

---

## Window Navigation

| Key | Action |
|-----|--------|
| `<C-h>` | Move focus to the left split |
| `<C-j>` | Move focus to the lower split |
| `<C-k>` | Move focus to the upper split |
| `<C-l>` | Move focus to the right split |

---

## Terminal

| Key | Mode | Action |
|-----|------|--------|
| `<Esc><Esc>` | Terminal | Exit terminal mode |

---

## Completion (nvim-cmp)

| Key | Action |
|-----|--------|
| `<C-Space>` / `<A-CR>` | Trigger completion |
| `<CR>` | Confirm selected item |
| `<Tab>` | Select next item / expand snippet |
| `<S-Tab>` | Select previous item / jump back in snippet |
| `<C-d>` | Scroll docs up |
| `<C-f>` | Scroll docs down |

---

## Ubuntu Prerequisites

These packages are required for the full configuration to work:

```bash
# Core tools used by Telescope
sudo apt install ripgrep fd-find

# Build tools for telescope-fzf-native
sudo apt install build-essential cmake

# Node.js and npm (for typescript-language-server, bash-language-server, eslint)
# Recommended: install via nvm (https://github.com/nvm-sh/nvm) or:
sudo apt install nodejs npm

# Go toolchain (for gopls)
# Download from https://go.dev/dl/ or:
sudo apt install golang-go

# Java JDK (for jdtls)
sudo apt install default-jdk
```

> **Note:** Language servers are installed automatically by Mason (`:Mason` inside Neovim).
> Run `:MasonInstall typescript-language-server eslint-lsp gopls bash-language-server jdtls`
> or let Mason handle it via `ensure_installed` in the configuration.
