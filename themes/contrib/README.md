# Contributed themes

## Pastels theme from Stacey Roshan

Based on theme posted to [Discord](https://discord.com/channels/763107030223290449/1140033440318771280/1140852693221511168) on 15 August 2023

## Themes from [MrParalloid][]

These themes were announced on [Reddit][] on 19 August 2025.

To recreate them, run these commands from this directory:

```zsh
git clone --depth 1 https://github.com/MrParalloid/note-plan-themes scratch
for f (scratch/**/*.json) { hjson -c -preserveKeyOrder "$f" | jq -f ../../squash.jq > "${f:t:r:l:s/ /-/}-squashed.json" }
```

[MrParalloid]: https://github.com/MrParalloid/note-plan-themes

[Reddit]: https://www.reddit.com/r/noteplanapp/comments/1muemqu/some_custom_themes_for_the_fresh_look/
