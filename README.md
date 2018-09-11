* T.H.W.A.P. Emacs dot-files

** Installed packages
  - [yasnippet](https://github.com/joaotavora/yasnippet)      
  - [auto-complete](https://github.com/auto-complete/auto-complete)
  - [dash](https://github.com/magnars/dash.el)
  - [neotree](https://github.com/jaypei/emacs-neotree)
  - [better-defaults](https://github.com/technomancy/better-defaults)
  - [unicode-progress-reporter](https://www.emacswiki.org/emacs/unicode-progress-reporter.el)
  - [org-plus-contrib](https://orgmode.org/worg/org-contrib/)
  - [org-bullets](https://github.com/sabof/org-bullets)
  - [org-beautify-theme](https://github.com/jonnay/org-beautify-theme)
  - [org-pomodoro](https://github.com/lolownia/org-pomodoro)
  - [htmlize](https://github.com/hniksic/emacs-htmlize)
  - [ledger-mode](https://github.com/ledger/ledger-mode)
  - [org-dashboard](https://github.com/rakanalh/emacs-dashboard)
  - [ein](https://github.com/tkf/emacs-ipython-notebook)
  - [elpy](https://github.com/jorgenschaefer/elpy)
  - [flycheck](https://github.com/flycheck/flycheck)
  - [py-autopep8](https://github.com/paetzke/py-autopep8.el)
  - [ansible](https://github.com/k1LoW/emacs-ansible)
  - [json-mode](https://github.com/joshwnj/json-mode)
  - [json-navigator](https://github.com/DamienCassou/json-navigator)
  - [json-reformat](https://github.com/gongo/json-reformat)
  - [salt-mode](https://github.com/glynnforrest/salt-mode)
  - [go-mode](https://github.com/dominikh/go-mode.el)
  - [go-guru](https://www.emacswiki.org/emacs/GoLangMode)
  - [go-autocomplete](https://www.emacswiki.org/emacs/AutoComplete)
  - [flymake-go](https://github.com/dougm/goflymake)
  - [exec-path-from-shell](https://github.com/purcell/exec-path-from-shell)
  
** keyboard shortcuts

All T.H.W.A.P. key sequences start with C-t this shall be known as the THWAP key.

*** Org related key sequences

| Key Sequence | Command                             | Description                                 |
|--------------|-------------------------------------|---------------------------------------------|
| C-t a r      | pop-to-org-agenda                   | Show the org-agenda with priority sections. |
| C-t c        | org-capture                         | Capture a new note or agenda item.          |
| C-t a        | org-agenda                          | Start agenda operations.                    |
| C-t p        | org-pomodoro                        | Start/Stop pomodoro timer.                  |
| C-t P        | org-publish                         | Publish org project according to configs.   |
| C-t k I      | org-kanban/initialize               | Insert Kanban board at current point.       |
| C-t k E      | org-kanban/initialize-at-end        | Insert Kanban board at end of file.         |
| C-t k B      | org-kanban/initialize-at-beginning  | Insert Kanban board at beginning of file.   |
| C-t k n      | org-kanban/next                     | Goto next kanban item.                      |
| C-t k p      | org-kanban/prev                     | Goto previous kanban item.                  |
| C-t k s      | org-kanban/shift                    | Shift item to the next column.              |

*** Json/JS related key sequences

| Key Sequence | Command                             | Description                                 |
| C-t j r      | json-reformat-region                | Pretty print the currently selected region. |
| C-t j n r    | json-navigator-navigate-region      | Navigate current json region.               |
| C-t j n p    | json-navigator-navigate-after-point | Navigate json after the current point.      |
