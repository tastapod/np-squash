# Metadata
.name += " Squash"

| . += {
    "squashedBy": {
        "name": "np-squash",
        "date": (now | todateiso8601)
    }
}

# Body text
| .styles.body += {
    "lineSpacing": 1,
    "paragraphSpacing": 0,
    "paragraphSpacingBefore": 0
}

# Headings
| .styles.["title-mark1", "title-mark2", "title-mark3", "title-mark4"] += {
    "lineSpacing": 0,
    "paragraphSpacing": 0
}

# Tasks
| .styles.["checked", "todo"] += {
    "lineSpacing": 1,
    "paragraphSpacing": 3,
    "paragraphSpacingBefore": 0
}

# Tags
| .styles.["attag", "hashtag"] += {
    "lineSpacing": 1,
    "paragraphSpacing": 0
}
