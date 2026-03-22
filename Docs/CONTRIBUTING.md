# Contributing to Keeb Utils

Thank you for your interest in improving Keeb Utils. To maintain consistency across KMonad and AutoHotkey configurations, please adhere to the following guidelines.

## Style Standards

This project follows the [**Google Developer Documentation Style Guide**](https://developers.google.com/style) for general prose and the [**Red Hat Supplementary Style Guide**](https://redhat-documentation.github.io/supplementary-style-guide/) for technical specifications not covered by Google.

## KMonad (Lisp Style)

* Follow the [Lisp Style Guide](https://lisp-lang.org/style-guide).
* **Exception**: Because KMonad interprets a single `;` as the `<kbd>;:</kbd>` key, use double semicolons (`;;`) for all comments.

## AutoHotkey

* Use the **K&R indentation style**.
* Limit lines to a maximum of **100 characters**.

## Commenting (All Languages)

Based on the [_Rust Style Guide_](https://doc.rust-lang.org/beta/style-guide/index.html), comments should be treated as professional documentation:
* **Sentences**: Use complete sentences. Start with a capital letter and end with a period.
* **Inline Notes**: Brief inline comments may be written as notes without punctuation.
* **Line Length**: Comments on their own lines should not exceed **80 characters** or the current indentation limit, whichever is smaller.

## Commit Message Guidelines

We use **Semantic Commit Messages** to track the history of the repository. Every commit must follow this format:

`type(scope): brief description in imperative mood`

**Type**: The type defines what kind of change you are making.

- **feat**: A new feature (e.g., adding a new layer).
- **fix**: A bug fix (e.g., resolving stuck keys).
- **docs**: Documentation changes only (e.g., README or CONTRIBUTING.md).
- **style**: Formatting changes that do not affect code logic (e.g., indentation, semicolons).
- **refactor**: Code changes that neither fix a bug nor add a feature (e.g., renaming variables for clarity).

**Scope**: The scope defines where the change happens. Unlike filenames, scopes represent logical components or platforms.

- **kmonad**: Changes affecting the Lisp-based KMonad configuration.
- **autohotkey**: Changes affecting AutoHotkey scripts or Windows logic.
- **numpad**: Changes specific to the Numpad layer logic across any platform.
- **core**: Global changes affecting the entire repository structure.

**Example**: fix(numpad): resolve stuck Alt key state on release

## Documentation Tone

* **Use the Imperative**: Write instructions as commands (e.g., “Install the driver” instead of “The driver should be installed”).
* **Be Direct**: Avoid “I” or “we.” Focus on the action the user or the software performs.
