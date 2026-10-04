# Neovim Keymaps

Leader key: `Space`

---

## General

| Key | Mode | Action |
|-----|------|--------|
| `<Esc>` | Normal | Clear search highlight |
| `<leader>q` | Normal | Open diagnostic quickfix list |
| `<Esc><Esc>` | Terminal | Exit terminal mode |

### Window Navigation

| Key | Mode | Action |
|-----|------|--------|
| `<C-h>` | Normal | Focus left window |
| `<C-l>` | Normal | Focus right window |
| `<C-j>` | Normal | Focus lower window |
| `<C-k>` | Normal | Focus upper window |

### Splits

| Key | Mode | Action |
|-----|------|--------|
| `<leader>sv` | Normal | Split window vertically |
| `<leader>sh` | Normal | Split window horizontally |

### Tabs

| Key | Mode | Action |
|-----|------|--------|
| `<leader>tn` | Normal | New tab |
| `<leader>tc` | Normal | Close tab |
| `<leader>tl` | Normal | Next tab |
| `<leader>th` | Normal | Previous tab |

> Built-in `gt` / `gT` / `{N}gt` also switch tabs.

### Editing

| Key | Mode | Action |
|-----|------|--------|
| `J` | Visual | Move selected lines down |
| `K` | Visual | Move selected lines up |
| `<` | Visual | Indent left (keeps selection) |
| `>` | Visual | Indent right (keeps selection) |
| `<leader>d` | Normal | Duplicate line |
| `<leader>d` | Visual | Duplicate selected lines |

> **Note:** `<leader>d` is overridden to "Open diagnostic float" in LSP-attached buffers (see LSP section).

---

## Telescope

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ff` | Normal | Find files |
| `<leader>fb` | Normal | Switch buffer |
| `<leader>gg` | Normal | Live grep |
| `<leader>fr` | Normal | Find LSP references |
| `<leader>fl` | Normal | Fuzzy find in current file |
| `<leader>gc` | Normal | Git branches |
| `<leader>gl` | Normal | Git commits |
| `<leader>qf` | Normal | Jump to quickfix item |
| `<leader>R` | Normal | Reopen last picker |

### Inside Telescope (buffer picker)

| Key | Action |
|-----|--------|
| `<C-d>` | Delete buffer |
| `<C-b>` | Scroll preview down |

---

## Neo-tree

| Key | Mode | Action |
|-----|------|--------|
| `<leader>e` | Normal | Reveal current file in tree |

### Inside Neo-tree

| Key | Action |
|-----|--------|
| `<Space>` | Toggle node |
| `<CR>` / double-click | Open |
| `<Esc>` | Cancel / close float |
| `P` | Toggle preview (float) |
| `l` | Focus preview |
| `s` | Open in vertical split |
| `S` | Open in horizontal split |
| `t` | Open in new tab |
| `w` | Open with window picker |
| `C` | Close node |
| `z` | Close all nodes |
| `a` | Add file |
| `A` | Add directory |
| `d` | Delete |
| `r` | Rename |
| `b` | Rename basename |
| `y` | Copy to clipboard |
| `x` | Cut to clipboard |
| `p` | Paste from clipboard |
| `c` | Copy (with destination) |
| `m` | Move (with destination) |
| `q` | Close window |
| `R` | Refresh |
| `?` | Show help |
| `i` | Show file details |
| `<` / `>` | Previous / next source |

### Filesystem source

| Key | Action |
|-----|--------|
| `<BS>` | Navigate up |
| `.` | Set as root |
| `H` | Toggle hidden files |
| `/` | Fuzzy finder |
| `D` | Fuzzy finder (directories) |
| `f` | Filter |
| `<C-x>` | Clear filter |
| `[g` / `]g` | Prev / next git-modified file |
| `o` | Order by… menu |
| `oc/od/og/om/on/os/ot` | Order by created/diagnostics/git/modified/name/size/type |

### Git status source

| Key | Action |
|-----|--------|
| `ga` | Stage file |
| `gA` | Stage all |
| `gu` | Unstage file |
| `gU` | Undo last commit |
| `gr` | Revert file |
| `gc` | Commit |
| `gp` | Push |
| `gg` | Commit and push |

---

## LSP (active in LSP-attached buffers)

| Key | Mode | Action |
|-----|------|--------|
| `gd` | Normal | Go to definition |
| `gD` | Normal | Go to declaration |
| `gi` | Normal | Go to implementation |
| `gr` | Normal | Go to references |
| `K` | Normal | Hover documentation |
| `<leader>rn` | Normal | Rename symbol |
| `<leader>ca` | Normal / Visual | Code action |
| `<leader>f` | Normal | Format file |
| `[d` | Normal | Previous diagnostic |
| `]d` | Normal | Next diagnostic |
| `<leader>d` | Normal | Open diagnostic float |

---

## Completion (nvim-cmp)

| Key | Mode | Action |
|-----|------|--------|
| `<C-Space>` / `<A-CR>` | Insert | Trigger completion |
| `<CR>` | Insert | Confirm selection |
| `<Tab>` | Insert / Select | Next item / expand snippet |
| `<S-Tab>` | Insert / Select | Previous item / jump back in snippet |
| `<C-d>` | Insert | Scroll docs up |
| `<C-f>` | Insert | Scroll docs down |

---

## Git (gitsigns, active in git-tracked buffers)

### Navigation

| Key | Mode | Action |
|-----|------|--------|
| `]c` | Normal | Next git change / hunk |
| `[c` | Normal | Previous git change / hunk |

### Hunk actions

| Key | Mode | Action |
|-----|------|--------|
| `<leader>hs` | Normal / Visual | Stage hunk |
| `<leader>hr` | Normal / Visual | Reset hunk |
| `<leader>hS` | Normal | Stage entire buffer |
| `<leader>hu` | Normal | Undo stage hunk |
| `<leader>hR` | Normal | Reset entire buffer |
| `<leader>hp` | Normal | Preview hunk |
| `<leader>hb` | Normal | Blame current line |
| `<leader>hd` | Normal | Diff against index |
| `<leader>hD` | Normal | Diff against last commit |

### Toggles

| Key | Mode | Action |
|-----|------|--------|
| `<leader>tb` | Normal | Toggle inline git blame |
| `<leader>tD` | Normal | Toggle show deleted lines |
