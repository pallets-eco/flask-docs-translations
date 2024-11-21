# Contributing

## Using the Web UI

<https://hosted.weblate.org/projects/flask/#languages>

For most contributors, this is what you should use. We use [Weblate] to manage
translations. You'll need an account there. Then you can use the UI to navigate
to a language and find strings to translate. Each docs page is a separate
"component" in the UI.

[Weblate]: https://weblate.org

## Development Environment

If you need to modify the translation project itself, rather than work on the
translations, you'll need to set up the environment locally.

Install the following tools:

- `gh` GitHub CLI https://cli.github.com/
- `uv` Python project manager https://docs.astral.sh/uv/

Clone the repository with submodules. Synchronize the dependencies.

```
$ gh repo fork --clone pallets-eco/flask-docs-translations -- --recurse-submodules
$ cd flask-docs-translations
$ uv sync
```

## Update Data

The translations track Flask's stable branch. When its docs are updated, those
updates need to be pulled in for translation. Update the submodule, regenerate
the `.pot` files, then update the ids in the `.po` files.

```
$ git switch stable
$ git pull upstream
$ git switch -c update-data
$ git submodule update --remote
$ uv run sphinx-build -b gettext project/docs locales/pot
$ uv run sphinx-intl update
$ git commit -am 'sync with flask docs'
$ gh pr create --web
```

After the PR is merged, the data will automatically update in Weblate. This will
probably cause translation percentage to go down, with outdated and new strings
being marked for attention.

## Add a Language

To add a new translation language and generate `.po` files for it. For example,
to start the Spanish `es` translations:

```
$ git switch stable
$ git pull upstream
$ git switch -c start-es
$ uv run sphinx-intl update -l es
$ git commit -am 'start es translation'
$ gh pr create --web
```

After the PR is merged, the new language will automatically appear in Weblate.
Then a project needs to be added on Read the Docs.

## Update Dependencies

Currently, this project has its own dependency pins rather than tracking
Flask's. This should be fine, as the pins are only used to update the
template files, not to build the docs. To update the pins:

```
$ git switch stable
$ git pull upstream
$ git switch -c update-lock
$ uv sync -U
$ git commit -am 'update dependency lock'
$ gh pr create --web
```

If Flask happens to add another dependency to its `requirements/docs.in` file,
that can be re-added.

```
$ uv add -r project/requirements/docs.in
$ git commit -am 'sync with flask dependencies'
```
