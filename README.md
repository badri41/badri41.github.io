# Badri Bishal Das - Portfolio

Simple, minimal portfolio website.

## 🚀 Quick Start

```bash
./serve.sh 8080
```

Then open: http://localhost:8080

## 📁 Structure

```
badri41.github.io/
├── index.html              # Main page
├── index.md                # Markdown version
├── _posts/                 # Article posts
├── _pages/                 # Additional pages
├── _data/                  # Data files
├── assets/
│   ├── css/
│   │   └── style.css      # Styles
│   ├── js/
│   │   └── script.js      # Theme toggle
│   ├── files/
│   │   └── resume.pdf     # Your resume
│   └── images/            # Images (add your photo here)
└── serve.sh               # Development server
```

## ✨ Features

- **Sidebar Layout**: Name and photo on left
- **Simple Links**: Resume (PDF) and Email only
- **Dark/Light Theme**: Toggle with button
- **Articles Section**: Blog posts
- **Fully Responsive**: Mobile-friendly

## 📝 To Add Your Photo

Replace the placeholder by adding your photo:
```bash
# Add your photo to assets/images/
cp /path/to/your/photo.jpg assets/images/profile.jpg
```

Then update index.html:
```html
<!-- Change this: -->
<div class="photo-placeholder">
  <span>BD</span>
</div>

<!-- To this: -->
<div class="photo-placeholder">
  <img src="assets/images/profile.jpg" alt="Badri Bishal Das">
</div>
```

And update style.css:
```css
.photo-placeholder img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: 50%;
}
```

## 🔗 Links

- **Resume**: Automatically served from `assets/files/resume.pdf`
- **Email**: d.badri@iitg.ac.in

## 🛠️ Tech Stack

- Pure HTML/CSS/JS
- No frameworks
- No build process
- Simple Python HTTP server

---

**Built for simplicity and clarity.**
