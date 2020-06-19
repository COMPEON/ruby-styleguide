# COMPEON Ruby Styleguide

## Rubocop defaults

This repo contains the COMPEON default Rubocop configuration which is shared across all projects.

### Usecase

Add this at the begin of your `.rubocop.yml` file.

```yaml
inherit_from:
  - 'https://raw.githubusercontent.com/COMPEON/ruby-styleguide/master/.rubocop.yml'
```

### Customization

If you want to overwrite some of the defaults, you might need to add this too.

```yaml
inherit_mode:
  merge:
    - Exclude
```
