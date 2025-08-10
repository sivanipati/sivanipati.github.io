# Sivani Pati - Portfolio Website

A clean, text-first portfolio showcasing supply chain transformation, project leadership, and product initiatives. Built with Jekyll for easy content management using markdown files.

## Features

- **Markdown-Based**: Easy to edit content using simple markdown files
- **Jekyll-Powered**: Automatic HTML generation from markdown
- **Clean Design**: Minimalist, professional layout focused on content
- **Responsive**: Works well on desktop and mobile devices
- **Fast Loading**: Static HTML/CSS for optimal performance
- **SEO Optimized**: Proper meta tags and semantic HTML

## Project Structure

```
sivanipati.github.io/
├── index.md                    # Main portfolio page (markdown)
├── _layouts/                   # Jekyll layout templates
│   ├── default.html           # Main layout
│   └── project.html           # Project page layout
├── _config.yml                # Jekyll configuration
├── assets/
│   └── css/
│       └── custom.css         # Custom styling
├── projects/                  # Individual project case studies (markdown)
│   ├── diversity-connected.md
│   ├── berkshire-housing.md
│   ├── nuconnect.md
│   └── apmc.md
├── Gemfile                    # Ruby dependencies
├── docker-compose.yml         # Docker setup for local testing
├── serve.py                   # Python server for quick testing
├── serve.bat                  # Windows batch file for easy testing
├── test.html                  # Static HTML version for testing
└── README.md
```

## How It Works

This site uses **Jekyll** to automatically convert markdown files to HTML:

1. **Main Page**: Edit `index.md` to update your portfolio content
2. **Project Pages**: Edit files in the `projects/` folder to update case studies
3. **Styling**: Modify `assets/css/custom.css` for design changes
4. **Automatic Build**: Jekyll converts markdown to HTML when you push to GitHub

## GitHub Pages Setup

1. **Repository Setup**: Ensure your repository is named `sivanipati.github.io`
2. **Branch**: Make sure your main content is on the `main` branch
3. **Settings**: Go to Settings > Pages
4. **Source**: Select "Deploy from a branch"
5. **Branch**: Choose `main` branch and `/ (root)` folder
6. **Save**: Your site will be available at `https://sivanipati.github.io`

## Local Testing (Windows)

Since you don't have Ruby installed, here are several options to test locally:

### Option 1: Quick Test with Python (Recommended)

1. **Double-click** `serve.bat` or run in Command Prompt:
   ```cmd
   serve.bat
   ```

2. **Or run directly**:
   ```cmd
   python serve.py
   ```

3. **View site** at `http://localhost:8000`

### Option 2: Test Static HTML Version

1. **Open** `test.html` directly in your browser
2. **Edit** the file to see changes immediately

### Option 3: Docker (Advanced)

If you have Docker Desktop installed:

1. **Install Docker Desktop** for Windows
2. **Run** in Command Prompt:
   ```cmd
   docker-compose up
   ```
3. **View site** at `http://localhost:4000`

### Option 4: Install Ruby (Full Jekyll Support)

1. **Download RubyInstaller** from https://rubyinstaller.org/
2. **Install** with default settings
3. **Open Command Prompt** and run:
   ```cmd
   gem install bundler jekyll
   bundle install
   bundle exec jekyll serve
   ```
4. **View site** at `http://localhost:4000`

## Content Management

### Update Main Portfolio
- Edit `index.md` to change your main portfolio content
- Use standard markdown syntax
- HTML is supported for custom styling (like the metrics grid)

### Update Project Case Studies
- Edit any `.md` file in the `projects/` folder
- Each project uses the `project` layout automatically
- Front matter at the top controls the page title and description

### Add New Projects
1. Create a new `.md` file in the `projects/` folder
2. Add front matter at the top:
   ```yaml
   ---
   layout: project
   title: "Your Project Title"
   description: "Brief description for SEO"
   ---
   ```
3. Write your content in markdown
4. Add a link to the new project in `index.md`

## Workflow

1. **Edit Content**: Update markdown files locally
2. **Test Locally**: Use one of the testing methods above
3. **Commit**: Save your changes to git
4. **Push**: Upload to GitHub
5. **Deploy**: GitHub Pages automatically builds and deploys your site

## Customization

### Styling
- Edit `assets/css/custom.css` for design changes
- Modify `_layouts/default.html` for structural changes

### Layouts
- `_layouts/default.html`: Main layout for all pages
- `_layouts/project.html`: Special layout for project pages

### Configuration
- `_config.yml`: Site-wide settings and Jekyll configuration

## Technologies Used

- **Jekyll**: Static site generator
- **Markdown**: Content authoring
- **HTML5/CSS3**: Styling and layout
- **GitHub Pages**: Hosting and deployment
- **Python**: Local testing server
- **Docker**: Alternative local testing

## Contact

For questions about this portfolio template or to discuss collaboration opportunities, please reach out through the contact information provided on the site.