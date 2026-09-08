# Contributing to Keeb Utils

Thank you for your interest in improving Keeb Utils. To maintain consistency across configuration files, please adhere to the following guidelines.

## Coding Style

### KMonad (Lisp Style)

* Follow the [Lisp Style Guide](https://lisp-lang.org/style-guide).
* **Exception:** Because KMonad interprets a single semicolon (`;`) as the `<kbd>;:</kbd>` key, use double semicolons (`;;`) for all comments.

### AutoHotkey

* Use the **K&R indentation style**.
* Limit lines to a maximum of **100 characters**.

### Commenting (All Languages)

Based on the [Rust Style Guide](https://doc.rust-lang.org/beta/style-guide/index.html), comments should be treated as professional documentation:

* **Sentences**: Use complete sentences. Start with a capital letter and end with a period.
* **Inline Notes**: Brief inline comments may be written as notes without punctuation.
* **Line Length**: Comments on their own lines should not exceed **80 characters** or the current indentation limit, whichever is smaller.

## Branching & Committing

### Feature & Refactor Branches

To maintain a stable production environment, this repository follows a strict branching strategy.

All functional changes (scripts, CI/CD workflow updates, or configuration logic) **must** be developed on a separate branch.

1. **Branch Naming:** Use descriptive prefixes like `feature/`, `fix/`, or `refactor/` (e.g., `feature/add-num-layer`).
2. **Pull Requests:** Changes must be submitted via a Pull Request (PR) to `main`.
3. **Validation:** PRs will only be merged after review and all automated GitHub Action checks have passed.

### Direct Commits to Main

Direct commits to the `main` branch are **restricted to non-functional changes** only. This includes:

* **Documentation:** Fixing typos, updating `README.md`, or clarifying instructions.
* **Metadata:** Small adjustments to `.gitignore` or project metadata.

### Commit Message Guidelines

Use **Semantic Commit Messages** to track the history of the repository. Every commit must follow this format:

`type(scope): brief description in imperative mood`

**Type:** The type defines what kind of change you are making.

* **feat:** A new feature (for example, adding a new layer).
* **fix:** A bug fix (for example, resolving stuck keys).
* **docs:** Documentation changes only (for example, documenting a new feature in `README.md`).
* **style:** Formatting changes that do not affect code logic (for example, indentation and semicolons).
* **refactor:** Code changes that neither fix a bug nor add a feature (for example, renaming variables for clarity).

**Scope:** The scope defines where the change happens. Unlike filenames, scopes represent logical components or platforms.

* **kmonad:** Changes affecting the Lisp-based KMonad configuration.
* **autohotkey:** Changes affecting AutoHotkey scripts or Windows logic.
* **numpad:** Changes specific to the Numpad layer logic across any platform.
* **core:** Global changes affecting the entire repository structure.

**Example:** `fix(numpad): resolve stuck Alt key state on release`

* **Use the Imperative:** Write instructions as commands (e.g., “Install the driver” instead of “The driver should be installed”).
* **Be Direct:** Avoid “I” or “we.” Focus on the action the user or the software performs.
