<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Trisun_Bloom — Amazon‑style UI</title>
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&family=Amazon+Ember&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        /* ----- AMAZON INSPIRED RESET & VARIABLES ----- */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Inter', 'Amazon Ember', sans-serif;
            background: #eaeded;
            color: #111;
            line-height: 1.4;
        }
        a {
            text-decoration: none;
            color: inherit;
        }
        .container {
            max-width: 1500px;
            margin: 0 auto;
            padding: 0 16px;
        }

        /* ----- HEADER (AMAZON‑STYLE DARK) ----- */
        .amazon-header {
            background: #131a22;
            color: white;
            padding: 6px 0;
            position: sticky;
            top: 0;
            z-index: 100;
            box-shadow: 0 2px 8px rgba(0,0,0,0.3);
        }
        .header-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: nowrap;
            gap: 10px;
        }
        .logo-area {
            display: flex;
            align-items: center;
            gap: 6px;
            flex-shrink: 0;
        }
        .logo-area .brand {
            font-family: 'Inter', sans-serif;
            font-weight: 900;
            font-size: 24px;
            background: linear-gradient(135deg, #f9a8d4, #a78bfa, #fcd34d);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            letter-spacing: -0.5px;
        }
        .logo-area i {
            font-size: 28px;
            color: #f9a8d4;
            -webkit-text-fill-color: initial;
        }
        .delivery-loc {
            display: none;
            padding: 0 8px;
            font-size: 12px;
            line-height: 1.2;
            border-left: 1px solid #444;
            flex-shrink: 0;
        }
        .delivery-loc .line1 { color: #ccc; }
        .delivery-loc .line2 { font-weight: 700; color: white; }
        .search-bar {
            flex: 1;
            display: flex;
            align-items: center;
            background: white;
            border-radius: 8px;
            overflow: hidden;
            max-width: 800px;
            min-width: 160px;
            border: 2px solid transparent;
            transition: 0.2s;
        }
        .search-bar:focus-within {
            border-color: #f9a8d4;
            box-shadow: 0 0 0 3px rgba(249,168,212,0.3);
        }
        .search-bar select {
            background: #f3f3f3;
            border: 0;
            padding: 8px 6px;
            font-size: 13px;
            font-weight: 500;
            color: #111;
            cursor: pointer;
            outline: none;
            border-right: 1px solid #ccc;
            width: 50px;
            flex-shrink: 0;
        }
        .search-bar input {
            flex: 1;
            border: 0;
            padding: 10px 12px;
            font-size: 15px;
            outline: none;
            min-width: 80px;
        }
        .search-bar button {
            background: #febd69;
            border: 0;
            padding: 8px 18px;
            font-size: 18px;
            color: #111;
            cursor: pointer;
            transition: 0.2s;
            border-radius: 0 8px 8px 0;
        }
        .search-bar button:hover {
            background: #f3a847;
        }
        .header-actions {
            display: flex;
            align-items: center;
            gap: 6px;
            flex-shrink: 0;
        }
        .header-actions .action-item {
            padding: 6px 10px;
            border-radius: 4px;
            transition: 0.2s;
            cursor: pointer;
            font-size: 13px;
            line-height: 1.2;
            border: 1px solid transparent;
        }
        .header-actions .action-item:hover {
            border-color: white;
        }
        .action-item .top { font-size: 11px; color: #ccc; }
        .action-item .bottom { font-weight: 700; color: white; }
        .cart-box {
            display: flex;
            align-items: center;
            gap: 4px;
            padding: 6px 10px;
            position: relative;
            font-weight: 700;
        }
        .cart-box i { font-size: 28px; }
        .cart-count {
            position: absolute;
            top: -4px;
            left: 22px;
            background: #f08804;
            color: #111;
            font-size: 14px;
            font-weight: 800;
            padding: 0 5px;
            border-radius: 30px;
            line-height: 1.4;
            min-width: 22px;
            text-align: center;
        }
        .hamburger {
            display: none;
            font-size: 24px;
            padding: 6px 10px;
            cursor: pointer;
        }

        /* ----- SECONDARY NAV (AMAZON CATEGORIES) ----- */
        .secondary-nav {
            background: #232f3e;
            color: white;
            padding: 5px 0;
            font-size: 14px;
        }
        .secondary-nav .nav-inner {
            display: flex;
            align-items: center;
            gap: 16px;
            flex-wrap: wrap;
        }
        .secondary-nav .nav-inner a {
            padding: 6px 4px;
            font-weight: 500;
            border-radius: 4px;
            transition: 0.1s;
        }
        .secondary-nav .nav-inner a:hover {
            border: 1px solid white;
            padding: 5px 3px;
        }

        /* ----- HERO BANNER (AMAZON CAROUSEL STYLE) ----- */
        .hero-banner {
            background: linear-gradient(145deg, #1e1035, #4c1d95);
            border-radius: 0 0 28px 28px;
            padding: 30px 20px 40px;
            margin-bottom: 20px;
            color: white;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" opacity="0.1"><circle cx="20" cy="20" r="40" fill="%23f9a8d4"/><circle cx="80" cy="70" r="30" fill="%23a78bfa"/><circle cx="60" cy="10" r="20" fill="%23fcd34d"/></svg>');
            background-size: cover;
        }
        .hero-banner h1 {
            font-size: 32px;
            font-weight: 900;
            background: linear-gradient(135deg, #fcd34d, #f9a8d4);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .hero-banner p { opacity: 0.9; max-width: 500px; }
        .hero-banner .btn {
            background: #febd69;
            color: #111;
            border: 0;
            padding: 10px 28px;
            border-radius: 30px;
            font-weight: 700;
            cursor: pointer;
            transition: 0.2s;
        }
        .hero-banner .btn:hover { background: #f3a847; transform: scale(1.02); }

        /* ----- PRODUCT GRID (AMAZON CARDS) ----- */
        .section-title {
            font-size: 26px;
            font-weight: 700;
            margin: 20px 0 12px;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .section-title span { background: linear-gradient(135deg, #a78bfa, #f9a8d4); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
        .grid { display: grid; gap: 20px; }
        .products-grid { grid-template-columns: repeat(auto-fill, minmax(220px, 1fr)); }

        .product-card {
            background: white;
            border-radius: 12px;
            padding: 16px 14px 18px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
            transition: 0.25s;
            display: flex;
            flex-direction: column;
            border: 1px solid #e7e7e7;
        }
        .product-card:hover {
            box-shadow: 0 8px 20px rgba(0,0,0,0.12);
            transform: translateY(-4px);
            border-color: #a78bfa;
        }
        .product-card img {
            width: 100%;
            aspect-ratio: 1/1;
            object-fit: cover;
            background: #f7f7f7;
            border-radius: 8px;
            margin-bottom: 10px;
        }
        .product-card .title {
            font-weight: 600;
            font-size: 15px;
            line-height: 1.3;
            margin: 4px 0;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .product-card .rating {
            color: #f08804;
            font-size: 14px;
        }
        .product-card .price-row {
            display: flex;
            align-items: baseline;
            gap: 6px;
            margin: 6px 0;
        }
        .product-card .price {
            font-weight: 700;
            font-size: 20px;
        }
        .product-card .old-price {
            color: #565959;
            font-size: 13px;
            text-decoration: line-through;
        }
        .product-card .badge {
            background: #fb7185;
            color: white;
            font-size: 11px;
            font-weight: 800;
            padding: 2px 12px;
            border-radius: 30px;
            display: inline-block;
            align-self: flex-start;
        }
        .product-card .add-btn {
            background: #febd69;
            border: 0;
            padding: 10px;
            border-radius: 30px;
            font-weight: 700;
            cursor: pointer;
            margin-top: 10px;
            transition: 0.2s;
            color: #111;
        }
        .product-card .add-btn:hover { background: #f3a847; }

        /* ----- DEAL SECTION (AMAZON DEAL STYLE) ----- */
        .deal-block {
            background: white;
            border-radius: 20px;
            padding: 20px 24px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 24px;
            border: 1px solid #ddd;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
            margin: 20px 0;
        }
        .deal-block img {
            width: 200px;
            height: 180px;
            object-fit: cover;
            border-radius: 16px;
            flex-shrink: 0;
        }
        .deal-block .deal-content { flex: 1; }
        .deal-block .deal-content h3 { font-size: 24px; }
        .deal-block .timer {
            display: flex;
            gap: 12px;
            margin: 12px 0;
        }
        .deal-block .time-box {
            background: #131a22;
            color: white;
            padding: 6px 14px;
            border-radius: 12px;
            text-align: center;
            min-width: 60px;
        }
        .deal-block .time-box div:first-child { font-size: 24px; font-weight: 800; }
        .deal-block .time-box div:last-child { font-size: 11px; opacity: 0.7; }
        .deal-discount {
            background: #fb7185;
            color: white;
            padding: 4px 16px;
            border-radius: 60px;
            font-weight: 800;
        }

        /* ----- FOOTER (AMAZON STYLE) ----- */
        .footer {
            background: #131a22;
            color: #ddd;
            padding: 30px 0 20px;
            margin-top: 30px;
        }
        .footer .footer-row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
        }
        .footer .footer-col { min-width: 140px; }
        .footer .footer-col h5 { color: white; font-weight: 700; margin-bottom: 8px; }
        .footer .footer-col a { display: block; color: #ccc; font-size: 14px; padding: 2px 0; }
        .footer .footer-col a:hover { text-decoration: underline; }

        /* Responsive */
        @media (max-width: 900px) {
            .delivery-loc { display: none; }
            .header-actions .action-item .top { display: none; }
            .header-actions .action-item .bottom { font-size: 12px; }
        }
        @media (max-width: 700px) {
            .hamburger { display: inline-block; }
            .secondary-nav .nav-inner a { font-size: 12px; }
            .search-bar select { display: none; }
            .hero-banner h1 { font-size: 24px; }
            .deal-block { flex-direction: column; text-align: center; }
            .deal-block img { width: 100%; height: auto; max-height: 200px; }
        }
        @media (max-width: 500px) {
            .header-actions .action-item { padding: 4px 6px; }
            .cart-box i { font-size: 22px; }
            .logo-area .brand { font-size: 18px; }
        }
        .muted { color: #565959; }
        .text-center { text-align: center; }
        .mt-12 { margin-top: 12px; }
        .mb-8 { margin-bottom: 8px; }
        .flex { display: flex; align-items: center; gap: 8px; }
        .gap-12 { gap: 12px; }
        .wrap { flex-wrap: wrap; }
    </style>
</head>
<body>

<!-- HEADER (AMAZON STYLE) -->
<header class="amazon-header">
    <div class="container header-row">
        <!-- hamburger + logo -->
        <div class="logo-area">
            <span class="hamburger" id="hamburgerBtn"><i class="fas fa-bars"></i></span>
            <span class="brand"><i class="fas fa-seedling"></i> Trisun_Bloom</span>
        </div>
        <!-- delivery location (desktop) -->
        <div class="delivery-loc">
            <div class="line1">Deliver to</div>
            <div class="line2"><i class="fas fa-map-marker-alt"></i> India</div>
        </div>
        <!-- search -->
        <div class="search-bar">
            <select><option>All</option></select>
            <input type="search" id="searchInput" placeholder="Search Amazon-like..." />
            <button id="searchBtn"><i class="fas fa-search"></i></button>
        </div>
        <!-- actions -->
        <div class="header-actions">
            <div class="action-item"><div class="top">Hello, Sign in</div><div class="bottom">Account & Lists</div></div>
            <div class="action-item"><div class="top">Returns</div><div class="bottom">& Orders</div></div>
            <div class="cart-box" id="cartBtn">
                <i class="fas fa-shopping-cart"></i>
                <span class="cart-count" id="cartCount">0</span>
                <span style="font-size:14px;font-weight:700;">Cart</span>
            </div>
        </div>
    </div>
    <!-- mobile menu (hidden by default) -->
    <div id="mobileMenu" style="display:none; background:#232f3e; padding:12px 16px; border-top:1px solid #444;">
        <div style="display:flex;flex-direction:column;gap:6px;color:white;">
            <a href="#">Home</a>
            <a href="#">Categories</a>
            <a href="#">Trending</a>
            <a href="#">Deals</a>
            <a href="#">Your Orders</a>
        </div>
    </div>
</header>

<!-- SECONDARY NAV -->
<div class="secondary-nav">
    <div class="container nav-inner">
        <a href="#"><i class="fas fa-bars"></i> All</a>
        <a href="#">Today's Deals</a>
        <a href="#">Customer Service</a>
        <a href="#">Registry</a>
        <a href="#">Gift Cards</a>
        <a href="#">Sell</a>
        <a href="#" style="margin-left:auto; background:#f9a8d4; padding:2px 14px; border-radius:20px; color:#111; font-weight:700;">Blooms</a>
    </div>
</div>

<main>
    <!-- HERO BANNER -->
    <section class="container hero-banner">
        <div>
            <h1>🌼 Bloom into Spring</h1>
            <p>Fresh colours, vibrant tech, playful accessories — curated for your unique style.</p>
            <button class="btn" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
        </div>
        <div style="font-size:80px; opacity:0.2; filter:drop-shadow(0 8px 20px rgba(0,0,0,0.1));">🌸</div>
    </section>

    <!-- CATEGORIES (amazon style chips) -->
    <section class="container">
        <div class="section-title">📂 <span>Shop by Vibe</span></div>
        <div class="grid" style="grid-template-columns:repeat(auto-fit, minmax(120px,1fr)); gap:12px;" id="categoriesGrid"></div>
    </section>

    <!-- PRODUCTS GRID -->
    <section class="container">
        <div class="section-title">🔥 <span>Trending Blooms</span></div>
        <div class="grid products-grid" id="productsGrid"></div>
    </section>

    <!-- DEAL BLOCK -->
    <section class="container" id="deals">
        <div class="deal-block">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook" />
            <div class="deal-content">
                <h3>MacBook Air M2 <span class="deal-discount" style="margin-left:10px;">BLOOM</span></h3>
                <p class="muted">Supercharged by M2 — now in colourful vibes.</p>
                <div class="timer">
                    <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
                    <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
                    <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
                    <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
                </div>
                <div class="flex wrap gap-12">
                    <span style="font-size:28px;font-weight:800;">$999</span>
                    <span class="old-price" style="font-size:18px;">$1,199</span>
                    <span class="deal-discount">-17%</span>
                    <span style="font-weight:600;">Only <strong>12</strong> left</span>
                </div>
                <button class="btn" style="background:#febd69;color:#111;padding:10px 32px;border-radius:30px;font-weight:700;border:0;margin-top:10px;cursor:pointer;" id="buyDeal">Buy Now <i class="fas fa-bolt"></i></button>
            </div>
        </div>
    </section>

    <!-- TESTIMONIALS (mini) -->
    <section class="container">
        <div class="section-title">💬 <span>What our blooms say</span></div>
        <div style="display:flex;gap:20px;overflow-x:auto;padding:8px 0 16px;" id="testimonials">
            <div style="min-width:240px;background:white;padding:18px;border-radius:20px;border-left:8px solid #a78bfa;">
                <div style="color:#f08804;">★★★★★</div>
                <p>"Love the vibrant colours & fast delivery!"</p>
                <strong>Ava M.</strong>
            </div>
            <div style="min-width:240px;background:white;padding:18px;border-radius:20px;border-left:8px solid #f9a8d4;">
                <div style="color:#f08804;">★★★★☆</div>
                <p>"Super fresh products, will order again."</p>
                <strong>Michael L.</strong>
            </div>
        </div>
    </section>

    <!-- NEWSLETTER (amazon style) -->
    <section class="container" style="background:#232f3e;border-radius:24px;padding:30px 20px;color:white;margin:20px 0;">
        <div style="text-align:center;">
            <h3>📬 Stay in bloom</h3>
            <p style="opacity:0.8;">Get exclusive offers & new arrivals.</p>
            <form id="newsletterForm" style="display:flex;justify-content:center;gap:12px;flex-wrap:wrap;margin-top:12px;">
                <input id="newsletterEmail" type="email" placeholder="Enter your email" style="padding:12px 20px;border-radius:40px;border:0;min-width:220px;flex:1;" required />
                <button style="background:#febd69;color:#111;border:0;padding:12px 28px;border-radius:40px;font-weight:700;cursor:pointer;">Subscribe</button>
            </form>
            <div id="newsletterMsg" style="margin-top:12px;font-weight:500;display:none;"></div>
        </div>
    </section>
</main>

<!-- FOOTER (AMAZON STYLE) -->
<footer class="footer">
    <div class="container footer-row">
        <div class="footer-col">
            <h5>Trisun_Bloom</h5>
            <a href="#">About</a>
            <a href="#">Careers</a>
            <a href="#">Press</a>
        </div>
        <div class="footer-col">
            <h5>Support</h5>
            <a href="#">Help</a>
            <a href="#">Returns</a>
            <a href="#">Contact</a>
        </div>
        <div class="footer-col">
            <h5>Connect</h5>
            <a href="#"><i class="fab fa-facebook"></i> Facebook</a>
            <a href="#"><i class="fab fa-twitter"></i> Twitter</a>
            <a href="#"><i class="fab fa-instagram"></i> Instagram</a>
        </div>
    </div>
    <div style="text-align:center;margin-top:24px;color:#999;font-size:13px;">© <span id="year"></span> Trisun_Bloom. All rights reserved.</div>
</footer>

<script>
    // ----- DATA (bloom themed) -----
    const CATEGORIES = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
        { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'✨ New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=300&q=80' },
        { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=300&q=80' },
        { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, badge:'🌈 -25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=300&q=80' },
        { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=300&q=80' },
        { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=300&q=80' },
        { id:6, title:'Chanel No.5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=300&q=80' },
        { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=300&q=80' },
        { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=300&q=80' }
    ];

    // ----- RENDER -----
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    let cartCount = 0;

    function renderCategories() {
        categoriesGrid.innerHTML = '';
        CATEGORIES.forEach(cat => {
            const el = document.createElement('div');
            el.style.cssText = 'background:white;border-radius:40px;padding:12px 8px;text-align:center;box-shadow:0 2px 8px rgba(0,0,0,0.05);cursor:pointer;border:1px solid #e7e7e7;transition:0.2s;';
            el.innerHTML = `<i class="fas ${cat.icon}" style="font-size:24px;color:#a78bfa;"></i><div style="font-weight:600;font-size:13px;">${cat.name}</div>`;
            el.addEventListener('click', () => {
                searchInput.value = cat.name;
                filterProducts(cat.name);
            });
            categoriesGrid.appendChild(el);
        });
    }

    function renderProducts(filter = '') {
        productsGrid.innerHTML = '';
        const list = filter ? PRODUCTS.filter(p => p.title.toLowerCase().includes(filter.toLowerCase()) || p.category?.includes(filter)) : PRODUCTS;
        list.forEach(p => {
            const card = document.createElement('div');
            card.className = 'product-card';
            const stars = '★'.repeat(p.rating) + '☆'.repeat(5-p.rating);
            card.innerHTML = `
                <img src="${p.img}" alt="${p.title}" loading="lazy" />
                ${p.badge ? `<span class="badge">${p.badge}</span>` : ''}
                <div class="title">${p.title}</div>
                <div class="rating">${stars} ${p.reviews}</div>
                <div class="price-row"><span class="price">$${p.price}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
                <button class="add-btn" data-id="${p.id}">Add to Cart</button>
            `;
            const btn = card.querySelector('.add-btn');
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                cartCount++;
                cartCountEl.textContent = cartCount;
                btn.textContent = 'Added ✓';
                setTimeout(() => btn.textContent = 'Add to Cart', 800);
            });
            productsGrid.appendChild(card);
        });
    }

    function filterProducts(keyword) {
        renderProducts(keyword);
    }

    // search
    document.getElementById('searchBtn').addEventListener('click', () => {
        filterProducts(searchInput.value);
    });
    searchInput.addEventListener('keyup', (e) => {
        if (e.key === 'Enter') filterProducts(searchInput.value);
    });

    // mobile toggle
    document.getElementById('hamburgerBtn').addEventListener('click', () => {
        const menu = document.getElementById('mobileMenu');
        menu.style.display = menu.style.display === 'none' ? 'block' : 'none';
    });

    // deal timer
    function dealTimer() {
        let end = new Date();
        end.setDate(end.getDate() + 2);
        end.setHours(23, 59, 59);
        function tick() {
            const now = new Date();
            const diff = Math.max(0, Math.floor((end - now) / 1000));
            const d = Math.floor(diff / 86400);
            const h = Math.floor((diff % 86400) / 3600);
            const m = Math.floor((diff % 3600) / 60);
            const s = diff % 60;
            document.getElementById('dealDays').textContent = d;
            document.getElementById('dealHours').textContent = String(h).padStart(2, '0');
            document.getElementById('dealMinutes').textContent = String(m).padStart(2, '0');
            document.getElementById('dealSeconds').textContent = String(s).padStart(2, '0');
        }
        tick();
        setInterval(tick, 1000);
    }
    dealTimer();

    // year
    document.getElementById('year').textContent = new Date().getFullYear();

    // init
    renderCategories();
    renderProducts();

    // Cart button click alert (demo)
    document.getElementById('cartBtn').addEventListener('click', (e) => {
        e.preventDefault();
        alert(`🛒 Cart has ${cartCount} item(s)`);
    });

    // Shop Now / Explore Deals
    document.getElementById('shopNow').addEventListener('click', () => {
        document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('buyDeal').addEventListener('click', () => {
        alert('⚡ Flash deal added to cart!');
        cartCount++;
        cartCountEl.textContent = cartCount;
    });

    // Newsletter (simple)
    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
        e.preventDefault();
        const msg = document.getElementById('newsletterMsg');
        msg.style.display = 'block';
        msg.textContent = '✅ You\'re now in bloom! Check your inbox.';
        msg.style.color = '#fcd34d';
        document.getElementById('newsletterEmail').value = '';
    });
</script>
</body>
</html>
