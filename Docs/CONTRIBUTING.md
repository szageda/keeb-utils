# Contributing to Keeb Utils

Thank you for helping improve Keeb Utils. Follow these guidelines to keep the project’s configuration files and contributions consistent.

## Coding style

### KMonad (Lisp)

- Follow the [Lisp Style Guide](https://lisp-lang.org/style-guide).
- **Comments:** KMonad interprets a single semicolon (`;`) as the <kbd>;:</kbd> key. Use double semicolons (`;;`) for comments.

### AutoHotkey

- Use the **K&R indentation style**.
- Limit lines to **100 characters**.

### Comments

Treat comments as professional documentation, following the [Rust Style Guide](https://doc.rust-lang.org/beta/style-guide/index.html):

- **Sentences:** Write complete sentences that start with a capital letter and end with a period.
- **Inline notes:** Brief inline comments may omit terminal punctuation.
- **Line length:** Keep standalone comments within **80 characters**, or the current indentation limit if it is shorter.

## Branching and committing

### Feature and refactor branches

Develop functional changes – such as script, CI/CD workflow, or configuration logic changes – on a separate branch.

1. **Branch naming:** Use a descriptive prefix, such as `feature/`, `fix/`, or `refactor/`. For example, `feature/add-num-layer`.
2. **Pull requests:** Submit changes to `main` through a pull request (PR).
3. **Validation:** PRs can be merged after review and successful completion of all GitHub Actions checks.

### Direct commits to `main`

Direct commits to `main` are limited to non-functional changes, including:

- **Documentation:** Fixing typos, updating `README.md`, or clarifying instructions.
- **Metadata:** Making small changes to `.gitignore` or project metadata.

### Commit messages

Use semantic commit messages in this format:

`type(scope): brief description in imperative mood`

- **Type:** Describes the change:
  - `feat`: Adds a feature, such as a new layer.
  - `fix`: Fixes a bug, such as resolving stuck keys.
  - `docs`: Changes documentation only, such as documenting a feature in `README.md`.
  - `style`: Makes formatting changes that do not affect logic, such as changing indentation or semicolons.
  - `refactor`: Changes code without fixing a bug or adding a feature, such as renaming variables for clarity.
- **Scope:** Identifies the logical component or platform, not a filename:
  - `kmonad`: Changes the Lisp-based KMonad configuration.
  - `autohotkey`: Changes AutoHotkey scripts or Windows logic.
  - `numpad`: Changes Numpad layer logic on any platform.
  - `core`: Changes the overall repository structure.

For example: `fix(numpad): resolve stuck Alt key state on release`

Write commit descriptions as commands, such as “Install the driver.” Avoid “I” and “we”; describe the action or behavior directly.
