# mollygiven.com

Personal website for Molly Given built with Jekyll and the Minimal Mistakes theme.

## Features

- **Articles Page**: Grid layout of interview articles, each with a thumbnail and title linking to the article
- **Placeholder Thumbnails**: Image paths are set, but actual images need to be created
- **Responsive Design**: Uses Minimal Mistakes theme for responsive layouts

## Running Locally

1. Install dependencies:
```
bundle install
```

2. Run the Jekyll server:
```
bundle exec jekyll serve
```

3. View the site at http://localhost:4000

## Image Generation

To create placeholder thumbnails, run the script in assets/images/thumbnails:
```
chmod +x generate_placeholders.sh
./generate_placeholders.sh
```
This requires ImageMagick to be installed.

## License

Content is © Molly Given. Code is MIT licensed.