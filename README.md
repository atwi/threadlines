# Threadlines

A Jekyll-powered blog hosted on GitHub Pages at [threadlines.net](https://threadlines.net)

## 🚀 Quick Start

This repository is set up with GitHub Actions for automatic deployment. Every push to the `main` branch will automatically build and deploy your site.

### Prerequisites

- A GitHub account
- Git installed on your computer
- Ruby (for local development, optional)

## 📝 Publishing Your First Post

1. **Clone this repository** (if you haven't already):
   ```bash
   git clone https://github.com/<your-username>/threadlines.git
   cd threadlines
   ```

2. **Create a new post** in the `_posts` directory:
   - File name format: `YYYY-MM-DD-post-title.md`
   - Example: `2025-11-21-my-first-post.md`

3. **Add front matter** to your post:
   ```markdown
   ---
   layout: post
   title: "Your Post Title"
   date: 2025-11-21 10:00:00 -0000
   categories: category1 category2
   tags: [tag1, tag2]
   ---

   Your post content goes here...
   ```

4. **Commit and push**:
   ```bash
   git add _posts/2025-11-21-my-first-post.md
   git commit -m "Add new blog post"
   git push origin main
   ```

5. **Wait for deployment**: GitHub Actions will automatically build and deploy your site (usually takes 1-2 minutes)

## 🌐 Setting Up Custom Domain

To connect your custom domain `threadlines.net`:

1. **Configure DNS** (see detailed instructions in [DOMAIN_SETUP.md](DOMAIN_SETUP.md))
   - Add A records pointing to GitHub Pages servers
   - Add CNAME record for www subdomain

2. **Enable in GitHub**:
   - Go to repository Settings → Pages
   - Under "Custom domain", enter `threadlines.net`
   - Click Save
   - Enable "Enforce HTTPS" (appears after DNS verification)

3. **Verify**: The `CNAME` file in this repository contains your domain name - this is automatically maintained by GitHub

See [DOMAIN_SETUP.md](DOMAIN_SETUP.md) for detailed DNS configuration instructions for various providers.

## 💻 Local Development

To preview your site locally before publishing:

1. **Install Ruby and Bundler** (if not already installed):
   ```bash
   # macOS (using Homebrew)
   brew install ruby

   # Install Bundler
   gem install bundler
   ```

2. **Install dependencies**:
   ```bash
   bundle install
   ```

3. **Run the local server**:
   ```bash
   bundle exec jekyll serve
   ```

4. **View your site** at `http://localhost:4000`

The site will automatically rebuild when you make changes to files.

## 📁 Project Structure

```
threadlines/
├── _config.yml           # Site configuration
├── _posts/               # Your blog posts (Markdown files)
├── _site/                # Generated site (ignored by Git)
├── about.md              # About page
├── index.md              # Homepage
├── Gemfile               # Ruby dependencies
├── CNAME                 # Custom domain configuration
├── .github/
│   └── workflows/
│       └── jekyll.yml    # GitHub Actions deployment workflow
└── README.md             # This file
```

## ✏️ Customization

### Update Site Information

Edit `_config.yml` to customize:
- Site title and description
- Your name and email
- Social media links
- Theme settings

### Change Theme

The default theme is [Minima](https://github.com/jekyll/minima). To use a different theme:

1. Find a theme you like from [GitHub Pages supported themes](https://pages.github.com/themes/)
2. Update `theme:` in `_config.yml`
3. Or add a custom theme gem to the `Gemfile`

### Add Pages

Create new `.md` files in the root directory with front matter:

```markdown
---
layout: page
title: Your Page Title
permalink: /your-page-url/
---

Your page content here...
```

## 🔧 GitHub Pages Setup

### Initial Setup (One-time)

1. **Push this repository** to GitHub:
   ```bash
   git add .
   git commit -m "Initial Jekyll setup"
   git push origin main
   ```

2. **Enable GitHub Pages**:
   - Go to repository Settings → Pages
   - Under "Build and deployment"
   - Source: "GitHub Actions"
   - Save

3. **Wait for first deployment**: Check the Actions tab to see the build progress

### Deployment

Deployment is **automatic**:
- Every push to `main` triggers the GitHub Actions workflow
- The workflow builds your Jekyll site
- The built site is deployed to GitHub Pages
- Your site updates within 1-2 minutes

## 📚 Writing Tips

### Using Markdown

Jekyll uses Markdown for posts. Here are some quick tips:

```markdown
# Headers use hashtags

**Bold text** and *italic text*

[Links](https://example.com)

![Images](path/to/image.jpg)

- Bullet points
- Are easy

1. Numbered
2. Lists too

`inline code` and

​```
code blocks
​```
```

### Adding Images

1. Create an `assets/images/` directory
2. Add your images there
3. Reference them in posts:
   ```markdown
   ![Alt text](/assets/images/my-image.jpg)
   ```

### Draft Posts

Create posts in `_drafts/` folder (without date in filename) to work on them without publishing. Move to `_posts/` with a date when ready to publish.

## 🛠️ Troubleshooting

### Build fails
- Check the Actions tab for error messages
- Ensure all front matter is valid YAML
- Check that `_config.yml` syntax is correct

### Site not updating
- Check that you pushed to the `main` branch
- Look at the Actions tab to see if the workflow completed
- Clear your browser cache

### Custom domain issues
- See detailed troubleshooting in [DOMAIN_SETUP.md](DOMAIN_SETUP.md)
- Verify DNS records are correct
- Wait up to 48 hours for DNS propagation

## 📖 Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Markdown Guide](https://www.markdownguide.org/)
- [Liquid Template Language](https://shopify.github.io/liquid/)

## 📄 License

This blog is powered by Jekyll and hosted on GitHub Pages. Feel free to use this setup for your own blog!

---

**Happy blogging!** 🎉
