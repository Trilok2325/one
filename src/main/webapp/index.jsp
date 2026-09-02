<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Trisun_Bloom — Colourful E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        /* ----- COLOURFUL ROOT – Trisun_Bloom palette ----- */
        :root {
            --bg: #fbf6ff;
            --primary: #1e1035;
            --bloom1: #f9a8d4;   /* soft pink */
            --bloom2: #a78bfa;   /* lavender */
            --bloom3: #6ee7b7;   /* mint */
            --bloom4: #fcd34d;   /* sunshine */
            --bloom5: #fb7185;   /* rose */
            --surface: #ffffff;
            --muted: #5f4b6e;
            --radius: 28px;
            --container: 1200px;
            --shadow: 0 20px 40px -12px rgba(120, 80, 200, 0.20);
            --gradient-hero: linear-gradient(145deg, #1e1035 0%, #4c1d95 40%, #7e22ce 100%);
        }

        * { box-sizing: border-box; margin: 0; }

        body {
            margin: 0;
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--primary);
            -webkit-font-smoothing: antialiased;
            line-height: 1.5;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 20px;
        }

        /* ----- HEADER – glassmorphism + bloom ----- */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255, 250, 255, 0.75);
            backdrop-filter: blur(16px) saturate(180%);
            border-bottom: 2px solid rgba(167, 139, 250, 0.20);
            box-shadow: 0 4px 30px rgba(167, 139, 250, 0.08);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 10px 0;
            flex-wrap: wrap;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Poppins', sans-serif;
            font-weight: 900;
            font-size: 26px;
            letter-spacing: -0.5px;
            background: linear-gradient(135deg, var(--bloom2), var(--bloom1), var(--bloom4));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .brand i {
            font-size: 30px;
            color: var(--bloom1);
            -webkit-text-fill-color: initial;
            filter: drop-shadow(0 4px 8px rgba(249, 168, 212, 0.3));
        }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
            padding: 0;
            margin: 0;
            align-items: center;
        }

        nav.main-nav li a {
            display: flex;
            gap: 6px;
            align-items: center;
            padding: 8px 16px;
            border-radius: 60px;
            font-weight: 600;
            color: var(--primary);
            transition: 0.2s;
            background: transparent;
        }

        nav.main-nav li a:hover {
            background: linear-gradient(135deg, #f3e8ff, #fce7f3);
            color: #7c3aed;
            box-shadow: 0 4px 14px rgba(167, 139, 250, 0.25);
        }

        .search {
            display: flex;
            align-items: center;
            gap: 8px;
            background: white;
            padding: 6px 16px 6px 20px;
            border-radius: 60px;
            border: 2px solid #e0d7f0;
            min-width: 210px;
            transition: 0.2s;
            box-shadow: 0 2px 8px rgba(0,0,0,0.02);
        }

        .search:focus-within {
            border-color: var(--bloom2);
            box-shadow: 0 0 0 4px rgba(167, 139, 250, 0.15);
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
            padding: 6px 0;
            color: var(--primary);
        }

        .icon-btn {
            background: transparent;
            border: 0;
            font-size: 18px;
            color: var(--primary);
            cursor: pointer;
            padding: 8px;
            border-radius: 40px;
            transition: 0.2s;
        }

        .icon-btn:hover {
            background: #f3e8ff;
            color: #7c3aed;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 4px;
        }

        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 8px 14px;
            border-radius: 60px;
            background: linear-gradient(135deg, #f3e8ff, #fce7f3);
            font-weight: 700;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -8px;
            background: var(--bloom5);
            color: white;
            font-size: 12px;
            font-weight: 800;
            width: 22px;
            height: 22px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            box-shadow: 0 4px 12px rgba(251, 113, 133, 0.4);
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 26px;
            cursor: pointer;
            color: var(--primary);
        }

        /* ----- HERO – Trisun_Bloom glow ----- */
        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background: var(--gradient-hero);
            background-size: 200% 200%;
            animation: gradientShift 10s ease infinite alternate;
            color: white;
            min-height: 360px;
            padding: 48px 20px;
            border-radius: 0 0 48px 48px;
            margin: 0 0 24px 0;
            position: relative;
            overflow: hidden;
        }

        .hero::after {
            content: "🌼";
            position: absolute;
            font-size: 140px;
            right: 2%;
            bottom: -30px;
            opacity: 0.15;
            transform: rotate(10deg);
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .hero h1 {
            font-family: 'Poppins', sans-serif;
            font-size: 48px;
            font-weight: 900;
            margin: 0 0 12px;
            background: linear-gradient(135deg, var(--bloom4), var(--bloom1), var(--bloom2));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            letter-spacing: -0.02em;
        }

        .hero p {
            max-width: 700px;
            margin: 0 auto 28px;
            opacity: 0.95;
            font-size: 18px;
            font-weight: 400;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 14px 32px;
            border-radius: 60px;
            font-weight: 700;
            border: 0;
            cursor: pointer;
            transition: 0.25s;
            font-size: 16px;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--bloom4), var(--bloom1));
            color: #1e1035;
            box-shadow: 0 12px 24px -8px rgba(249, 168, 212, 0.4);
        }

        .btn-primary:hover {
            transform: scale(1.04) translateY(-3px);
            box-shadow: 0 20px 36px -8px rgba(249, 168, 212, 0.6);
        }

        .btn-ghost {
            background: rgba(255,255,255,0.10);
            backdrop-filter: blur(6px);
            border: 2px solid rgba(255,255,255,0.20);
            color: white;
        }

        .btn-ghost:hover {
            background: rgba(255,255,255,0.20);
        }

        /* ----- SECTION TITLES (bloom) ----- */
        .section-title {
            font-family: 'Poppins', sans-serif;
            font-weight: 800;
            font-size: 34px;
            letter-spacing: -0.02em;
        }

        .section-title span {
            background: linear-gradient(135deg, var(--bloom2), var(--bloom1), var(--bloom4));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .section { padding: 32px 0 48px; }
        .title { text-align: center; margin-bottom: 28px; }
        .title p { color: var(--muted); font-weight: 500; }

        /* ----- CATEGORIES (bloom cards) ----- */
        .grid { display: grid; gap: 24px; }
        .categories { grid-template-columns: repeat(6, 1fr); }

        .cat-card {
            background: white;
            border-radius: 28px;
            padding: 24px 12px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: all 0.25s ease;
            border: 2px solid transparent;
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-10px) scale(1.02);
            border-color: var(--bloom2);
            box-shadow: 0 30px 50px -12px rgba(167, 139, 250, 0.30);
        }

        .cat-card .icon {
            font-size: 38px;
            margin-bottom: 8px;
            display: inline-block;
            background: linear-gradient(135deg, var(--bloom2), var(--bloom1));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .cat-card h4 { margin: 8px 0 4px; font-weight: 700; }
        .cat-card .muted { font-size: 13px; color: var(--muted); }

        /* ----- PRODUCTS (vibrant) ----- */
        .products { grid-template-columns: repeat(4, 1fr); }

        .product {
            background: white;
            border-radius: 28px;
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: 0.25s ease;
            border: 2px solid transparent;
            display: flex;
            flex-direction: column;
        }

        .product:hover {
            transform: translateY(-10px);
            border-color: var(--bloom1);
            box-shadow: 0 30px 50px -16px rgba(249, 168, 212, 0.30);
        }

        .product img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            display: block;
            background: #f0ecf5;
        }

        .product-body { padding: 14px 16px 6px; flex: 1; }
        .product h5 { font-weight: 700; font-size: 16px; margin: 0 0 4px; }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            margin: 8px 0;
        }

        .price { font-weight: 800; font-size: 20px; color: #1e1035; }
        .old-price { color: var(--muted); text-decoration: line-through; font-size: 14px; margin-left: 6px; font-weight: 500; }
        .rating { color: #fbbf24; font-size: 14px; font-weight: 600; }

        .product-footer {
            padding: 10px 16px 16px;
            display: flex;
            gap: 10px;
        }

        .add-btn {
            flex: 1;
            background: linear-gradient(135deg, var(--bloom2), #8b5cf6);
            color: white;
            border: 0;
            padding: 10px;
            border-radius: 60px;
            font-weight: 700;
            cursor: pointer;
            transition: 0.2s;
            box-shadow: 0 6px 16px rgba(139, 92, 246, 0.25);
        }

        .add-btn:hover {
            transform: scale(1.02);
            box-shadow: 0 12px 24px rgba(139, 92, 246, 0.35);
        }

        .wish-btn {
            background: #f3e8ff;
            border: 0;
            padding: 8px 16px;
            border-radius: 60px;
            cursor: pointer;
            transition: 0.2s;
            color: #7c3aed;
        }

        .wish-btn:hover { background: #fce7f3; color: #db2777; }

        /* ----- DEAL (bloom flash) ----- */
        .deal {
            display: flex;
            gap: 20px;
            background: linear-gradient(135deg, #fdf2f8, #ede9fe);
            border-radius: 40px;
            overflow: hidden;
            align-items: stretch;
            border: 2px solid rgba(167, 139, 250, 0.15);
            box-shadow: var(--shadow);
        }

        .deal img { width: 45%; height: 280px; object-fit: cover; }
        .deal .content { padding: 32px 28px; flex: 1; display: flex; flex-direction: column; justify-content: center; }

        .deal h3 {
            font-family: 'Poppins', sans-serif;
            font-size: 30px;
            margin: 0 0 6px;
            font-weight: 800;
        }

        .timer {
            display: flex;
            gap: 14px;
            margin: 16px 0;
        }

        .time-box {
            background: #1e1035;
            color: white;
            padding: 10px 14px;
            border-radius: 24px;
            min-width: 70px;
            text-align: center;
            font-weight: 700;
            box-shadow: 0 8px 0 #4c1d95;
        }

        .time-box div:first-child { font-size: 26px; font-weight: 800; }

        .deal .price { font-size: 34px; font-weight: 800; }
        .deal-discount {
            background: var(--bloom5);
            color: white;
            padding: 6px 18px;
            border-radius: 60px;
            font-weight: 800;
            font-size: 18px;
        }

        /* ----- TESTIMONIALS ----- */
        .testimonials {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 4px 16px;
        }

        .testimonial {
            min-width: 300px;
            background: white;
            padding: 24px;
            border-radius: 32px;
            box-shadow: var(--shadow);
            border-left: 10px solid var(--bloom2);
        }

        .testimonial .rating { color: #fbbf24; font-size: 18px; }

        /* ----- NEWSLETTER (bloom) ----- */
        .newsletter {
            background: linear-gradient(145deg, #1e1035, #4c1d95);
            color: white;
            border-radius: 48px;
            padding: 44px 28px;
            text-align: center;
            box-shadow: 0 24px 48px -12px rgba(76, 29, 149, 0.4);
        }

        .newsletter h3 {
            font-family: 'Poppins', sans-serif;
            font-size: 34px;
            margin: 0 0 8px;
        }

        .newsletter input {
            padding: 14px 24px;
            border-radius: 60px;
            border: 0;
            width: 320px;
            max-width: 100%;
            font-size: 16px;
            background: rgba(255,255,255,0.10);
            backdrop-filter: blur(4px);
            color: white;
            border: 2px solid rgba(255,255,255,0.10);
        }

        .newsletter input::placeholder { color: rgba(255,255,255,0.5); }

        .newsletter button {
            background: linear-gradient(135deg, var(--bloom4), var(--bloom1));
            color: #1e1035;
            border: 0;
            padding: 14px 36px;
            border-radius: 60px;
            font-weight: 700;
            cursor: pointer;
            transition: 0.2s;
        }

        .newsletter button:hover { transform: scale(1.02); }

        /* ----- FOOTER ----- */
        footer {
            margin-top: 20px;
            padding: 40px 0 24px;
            border-top: 2px solid #ede9fe;
            color: var(--muted);
        }

        /* ----- RESPONSIVE ----- */
        @media (max-width: 1024px) {
            .categories { grid-template-columns: repeat(3, 1fr); }
            .products { grid-template-columns: repeat(3, 1fr); }
        }

        @media (max-width: 820px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .products { grid-template-columns: repeat(2, 1fr); }
            .categories { grid-template-columns: repeat(2, 1fr); }
            .deal img { width: 40%; height: 200px; }
        }

        @media (max-width: 600px) {
            .hero h1 { font-size: 32px; }
            .products { grid-template-columns: 1fr; }
            .categories { grid-template-columns: 1fr 1fr; }
            .deal { flex-direction: column; }
            .deal img { width: 100%; height: 200px; }
            .search { min-width: 140px; }
        }

        .muted { color: var(--muted); }
        .text-center { text-align: center; }
        .badge-bloom {
            display: inline-block;
            background: var(--bloom5);
            color: white;
            font-size: 11px;
            font-weight: 800;
            padding: 4px 14px;
            border-radius: 60px;
            margin: 6px 0 0;
        }
    </style>
</head>

<body>

<header>
    <div class="container header-inner">
        <div style="display:flex;align-items:center;gap:12px;">
            <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
            <a class="brand" href="#"><i class="fas fa-seedling"></i> Trisun_Bloom</a>
        </div>

        <nav class="main-nav" id="mainNav">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories</a></li>
                <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
            </ul>
        </nav>

        <div style="display:flex;align-items:center;gap:12px;flex-wrap:wrap;">
            <div class="search">
                <input type="search" id="searchInput" placeholder="Search blooms..." />
                <button class="icon-btn" id="searchBtn"><i class="fas fa-search"></i></button>
            </div>
            <div class="header-actions">
                <a class="icon-btn" href="#"><i class="far fa-user"></i></a>
                <a class="icon-btn" href="#"><i class="far fa-heart"></i></a>
                <a class="cart" href="#" id="cartBtn">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </a>
            </div>
        </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu" style="display:none; background:white; border-top:2px solid #ede9fe; padding:12px 0;">
        <div class="container">
            <ul style="list-style:none;padding:0;display:flex;flex-direction:column;gap:10px;font-weight:600;">
                <li><a href="#">Home</a></li>
                <li><a href="#">Categories</a></li>
                <li><a href="#">Trending</a></li>
                <li><a href="#deals">Deals</a></li>
            </ul>
        </div>
    </div>
</header>

<main>
    <!-- Hero -->
    <section class="hero">
        <div class="container">
            <h1>🌼 Bloom into Spring</h1>
            <p>Fresh colours, vibrant tech, and playful accessories — curated for your unique style.</p>
            <div style="display:flex;gap:14px;justify-content:center;flex-wrap:wrap;">
                <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
                <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
            </div>
        </div>
    </section>

    <!-- Categories -->
    <section class="section container" aria-labelledby="cat-title">
        <div class="title">
            <h2 class="section-title">🌸 <span>Shop by Vibe</span></h2>
            <p class="muted">Find your bloom — from tech to threads.</p>
        </div>
        <div class="grid categories" id="categoriesGrid"></div>
    </section>

    <!-- Products -->
    <section class="section container" aria-labelledby="prod-title">
        <div class="title">
            <h2 class="section-title">🔥 <span>Trending Blooms</span></h2>
            <p class="muted">Popular picks with a pop of colour.</p>
        </div>
        <div class="grid products" id="productsGrid"></div>
    </section>

    <!-- Deal -->
    <section id="deals" class="section container">
        <div class="title">
            <h2 class="section-title">⚡ <span>Flash Bloom</span></h2>
            <p class="muted">Grab it before it fades!</p>
        </div>
        <div class="deal">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2">
            <div class="content">
                <h3>MacBook Air M2 <span style="background:#fb7185;color:white;font-size:14px;padding:4px 16px;border-radius:60px;margin-left:10px;">BLOOM</span></h3>
                <p class="muted">Supercharged by M2 — now in colourful vibes.</p>
                <div class="timer">
                    <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
                    <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
                    <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
                    <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
                </div>
                <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;">
                    <div class="price">$999 <span class="old-price">$1,199</span></div>
                    <span class="deal-discount">-17%</span>
                </div>
                <p style="margin:8px 0 0;">Only <strong>12</strong> left — hurry!</p>
                <button class="btn btn-primary" id="buyDeal" style="margin-top:14px;">Buy Now <i class="fas fa-bolt"></i></button>
            </div>
        </div>
    </section>

    <!-- Testimonials -->
    <section class="section container">
        <div class="title">
            <h2 class="section-title">💬 <span>Loved by many</span></h2>
            <p class="muted">Real reviews, real bloom.</p>
        </div>
        <div class="testimonials" id="testimonials">
            <div class="testimonial">
                <div class="rating">★★★★★</div>
                <p>"Absolutely love the colours! Fast shipping and great support."</p>
                <div style="display:flex;align-items:center;gap:12px;margin-top:12px;">
                    <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:44px;height:44px;border-radius:50%;object-fit:cover;border:3px solid #a78bfa;">
                    <div><strong>Ava Martin</strong> <div class="muted" style="font-size:13px;">Verified</div></div>
                </div>
            </div>
            <div class="testimonial">
                <div class="rating">★★★★☆</div>
                <p>"The vibe is immaculate. Will definitely shop again."</p>
                <div style="display:flex;align-items:center;gap:12px;margin-top:12px;">
                    <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:44px;height:44px;border-radius:50%;object-fit:cover;border:3px solid #f9a8d4;">
                    <div><strong>Michael Lee</strong> <div class="muted" style="font-size:13px;">Frequent buyer</div></div>
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter -->
    <section class="section container">
        <div class="newsletter">
            <h3>📬 Stay in bloom</h3>
            <p>Get exclusive offers & new arrivals.</p>
            <form id="newsletterForm" style="display:flex;justify-content:center;gap:12px;flex-wrap:wrap;margin-top:12px;">
                <input id="newsletterEmail" type="email" placeholder="Enter your email" required />
                <button class="btn btn-primary" id="subscribeBtn" style="background:linear-gradient(135deg,#fcd34d,#f9a8d4);color:#1e1035;">Subscribe</button>
            </form>
            <div id="newsletterMsg" style="margin-top:12px;font-weight:500;display:none;"></div>
        </div>
    </section>
</main>

<footer>
    <div class="container" style="display:flex;flex-wrap:wrap;gap:28px;justify-content:space-between;">
        <div>
            <div style="font-weight:900;font-size:24px;background:linear-gradient(135deg,#a78bfa,#f9a8d4,#fcd34d);-webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;">Trisun_Bloom</div>
            <p class="muted" style="max-width:280px;">Colourful e‑commerce demo — built with 💜 and gradients.</p>
            <div style="display:flex;gap:12px;margin-top:12px;">
                <a class="icon-btn" href="#"><i class="fab fa-facebook"></i></a>
                <a class="icon-btn" href="#"><i class="fab fa-twitter"></i></a>
                <a class="icon-btn" href="#"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
        <div style="display:flex;gap:40px;flex-wrap:wrap;">
            <div><div style="font-weight:700;">Company</div><div class="muted" style="line-height:2;">About<br>Careers<br>Press</div></div>
            <div><div style="font-weight:700;">Support</div><div class="muted" style="line-height:2;">Help<br>Returns<br>Contact</div></div>
        </div>
    </div>
    <div style="text-align:center;margin-top:28px;color:var(--muted);font-size:14px;">© <span id="year"></span> Trisun_Bloom. All rights reserved.</div>
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
        { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'✨ New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'phones' },
        { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'laptops' },
        { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, badge:'🌈 -25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
        { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'footwear' },
        { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
        { id:6, title:'Chanel No.5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'accessories' },
        { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
        { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'gadgets' }
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
            el.className = 'cat-card';
            el.innerHTML = `
                <div class="icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
                <div class="muted" style="font-size:13px;">Explore</div>
            `;
            el.addEventListener('click', () => {
                searchInput.value = cat.name;
                filterProducts(cat.name);
                window.scrollTo({ top: document.getElementById('prod-title').offsetTop - 70, behavior: 'smooth
