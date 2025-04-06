# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build Commands
- `bundle exec jekyll serve` - Run local development server
- `bundle exec jekyll build` - Build site to _site directory
- `bundle install` - Install dependencies

## Site Structure
- `_posts/` - Article files (YYYY-MM-DD-title-slug.md format)
- `_pages/` - Static content pages
- `_data/navigation.yml` - Navigation menu structure
- `assets/images/` - Image files

## Style Guidelines
- Use kramdown Markdown syntax
- Front matter must include: layout, title, date
- For posts, include categories and classes
- For pages, include permalink
- Use snake_case for filenames and directories
- Follow Minimal Mistakes theme conventions

## Theme Configuration
- Minimal Mistakes theme (remote_theme: "mmistakes/minimal-mistakes@4.26.2")
- Custom skin: "dirt"