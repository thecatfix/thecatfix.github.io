---
layout: post
title:"Creating A Template For Github Pages"
date: 2024-07-26
categories: [GitHub]
tags: [template, posts, Jekyll, GitHub Pages]
---
# How do I create a template for posts for my posts on my Github Page?


To create a template for posts on your GitHub Page using Jekyll, you can follow these steps:

1. **Create a [`_posts`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fjohnjohn%2Fthecatfix.github.io%2F_posts%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "/Users/johnjohn/thecatfix.github.io/_posts") directory**: This is where all your blog posts will be stored.
2. **Create a new Markdown file**: The file name should follow the format `YYYY-MM-DD-title.md`.
3. **Add front matter to the file**: This is YAML code at the top of the file that specifies metadata for the post.

Here's a detailed plan:

1. Create a [`_posts`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fjohnjohn%2Fthecatfix.github.io%2F_posts%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "/Users/johnjohn/thecatfix.github.io/_posts") directory if it doesn't exist.
2. Create a new Markdown file in the [`_posts`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fjohnjohn%2Fthecatfix.github.io%2F_posts%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "/Users/johnjohn/thecatfix.github.io/_posts") directory with the name format `YYYY-MM-DD-title.md`.
3. Add the following front matter to the file:

```markdown
---
layout: post
title: "Your Post Title"
date: YYYY-MM-DD
categories: [category1, category2]
tags: [tag1, tag2]
---
```

4. Write your post content below the front matter.

### Example

1. **Create the `_posts` directory**:
   ```sh
   mkdir -p _posts
   ```

2. **Create a new post file**:
   ```sh
   touch _posts/2024-01-01-my-first-post.md
   ```

3. **Add front matter and content**:

```markdown
---
layout: post
title: "My First Post"
date: 2024-01-01
categories: [blog, tutorial]
tags: [jekyll, github pages]
---

This is the content of my first post.
```

This template will help you maintain consistency across your blog posts on your GitHub Page.