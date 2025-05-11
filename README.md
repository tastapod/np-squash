# NotePlan Theme Squasher

The NotePlan Theme Squasher squashes all the vertical white space out of a [NotePlan](https://noteplan.co) theme.

## Motivation

I love using NotePlan, but it has one critical flaw. It interprets a newline to mean a new paragraph, where Markdown defines a paragraph break as two newlines. This means notes that look great in NotePlan end up looking squashed together when you copy the Markdown into another editor, or overly spaced apart if you import from somewhere else.

The friction for me is in drafting something in NotePlan—where I do all my thinking—and then copying it to an email or a blog post (I blog in Markdown with [Hugo](https://gohugo.io/)). Or importing a draft from elsewhere, when I have to go through adding or removing newlines after every paragraph, heading, etc., to make things look right. Then if I make edits in the external editor, I have the same converse problem copying the changes back.

## A (partial) solution

Some time ago, I customised the default Orange theme by removing vertical space around paragraphs, lists and headings, and called it [Orange Squash][orange-squash]. I used this for myself, and I recently discovered that some other people found it useful too.

[orange-squash]: https://gist.github.com/tastapod/f472da992b44ab736068bc9ceaca6eb6

The problem—and it is a great problem to have!—is that NotePlan is constantly evolving, and new keys are being added to the stock themes, so any copy-pasted derivatives will start to fall behind. What I wanted was something like theme inheritance, where I just specified the difference in my squashed theme.

## A better solution

I decided to try [`jq`](https://jqlang.org) as a streaming JSON editor, to take an existing theme and just inject my spacing directives. It has turned out surprisingly well. I had a working solution in less than an hour from a standing start by writing a `jq` pipeline script.

One piece of friction is that the stock themes are not syntactically correct JSON, with things like trailing commas at the end of lists. The `jq` docs suggest using a third-party tool to clean up the JSON before processing it. I settled on [`hjson`](https://hjson.github.io), which has a nice CLI tool.

## tl;dr

To create a squashed theme, install `jq` and `hjson` using e.g. `brew` on a Mac, and run:

```sh
hjson -c -preserveKeyOrder SOME-THEME.json | jq -f squash.jq > SOME-THEME-squash.json
```

This will create a new theme, named as the input theme with the word 'Squash' added. The release directory has squashed versions of all the stock NotePlan themes. (I have not sought the authors' permission, I am hoping they will approve.)

## Contributing

Please create an issue and/or submit a PR if you spot any missing or incorrect spacing changes, or for other errors or omissions.
