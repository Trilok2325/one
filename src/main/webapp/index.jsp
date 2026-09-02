<style>
:root {
    --primary: #4f46e5;
    --secondary: #7c3aed;
    --accent: #06b6d4;
    --pink: #ec4899;
    --orange: #f97316;
    --yellow: #facc15;
    --green: #10b981;
    --red: #ef4444;

    --text: #172033;
    --muted: #64748b;
    --bg: #f8fafc;
    --card: #ffffff;
    --surface: #eef2ff;

    --radius: 16px;
    --container: 1200px;
}

* {
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    margin: 0;
    font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont,
        "Segoe UI", sans-serif;

    color: var(--text);
    background:
        linear-gradient(135deg, #f8fafc 0%, #eef2ff 50%, #fdf2f8 100%);

    line-height: 1.5;
}

a {
    color: inherit;
    text-decoration: none;
}

.container {
    width: 100%;
    max-width: var(--container);
    margin: 0 auto;
    padding: 0 20px;
}

/* ================= HEADER ================= */

header {
    position: sticky;
    top: 0;
    z-index: 40;

    background: rgba(255,255,255,0.95);

    border-bottom: 1px solid rgba(79,70,229,0.15);

    backdrop-filter: blur(12px);

    box-shadow: 0 5px 25px rgba(79,70,229,0.08);
}

.header-inner {
    display: flex;
    align-items: center;
    justify-content: space-between;

    gap: 16px;
    padding: 15px 0;
}

.brand {
    display: flex;
    align-items: center;
    gap: 12px;

    font-family: Poppins, sans-serif;
    font-weight: 700;
    font-size: 23px;

    color: var(--primary);
}

.brand .accent {
    background: linear-gradient(
        90deg,
        #ec4899,
        #7c3aed,
        #06b6d4
    );

    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

/* Navigation */

nav.main-nav ul {
    display: flex;
    gap: 6px;

    list-style: none;
    margin: 0;
    padding: 0;
}

nav.main-nav li a {
    display: flex;
    align-items: center;
    gap: 7px;

    padding: 9px 12px;

    border-radius: 10px;

    color: var(--text);

    font-weight: 600;

    transition: all .2s ease;
}

nav.main-nav li a:hover {
    color: white;

    background:
        linear-gradient(
            135deg,
            var(--primary),
            var(--secondary)
        );

    transform: translateY(-2px);

    box-shadow:
        0 6px 15px rgba(79,70,229,.25);
}

/* Search */

.search {
    display: flex;
    align-items: center;

    gap: 8px;

    background: #f1f5f9;

    border: 2px solid transparent;

    padding: 8px 12px;

    border-radius: 999px;

    min-width: 250px;

    transition: all .2s ease;
}

.search:focus-within {
    background: white;

    border-color: var(--primary);

    box-shadow:
        0 0 0 4px rgba(79,70,229,.1);
}

.search input {
    border: 0;
    outline: 0;

    background: transparent;

    width: 100%;

    font-size: 14px;
}

.icon-btn {
    background: transparent;
    color: var(--primary);

    border: 0;

    cursor: pointer;

    font-size: 16px;

    transition: .2s;
}

.icon-btn:hover {
    color: var(--pink);

    transform: scale(1.15);
}

.header-actions {
    display: flex;
    align-items: center;
    gap: 12px;
}

.cart {
    position: relative;

    display: inline-flex;
    align-items: center;

    padding: 9px;

    border-radius: 10px;

    background: #eef2ff;

    color: var(--primary);
}

.cart-count {
    position: absolute;

    top: -7px;
    right: -7px;

    background:
        linear-gradient(
            135deg,
            #ec4899,
            #ef4444
        );

    color: white;

    font-size: 11px;
    font-weight: 700;

    width: 21px;
    height: 21px;

    border-radius: 50%;

    display: grid;
    place-items: center;
}

/* ================= HERO ================= */

.hero {
    position: relative;

    display: flex;
    align-items: center;
    justify-content: center;

    text-align: center;

    min-height: 470px;

    padding: 70px 20px;

    color: white;

    background:
        linear-gradient(
            135deg,
            rgba(79,70,229,.92),
            rgba(124,58,237,.88),
            rgba(236,72,153,.82)
        ),
        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80')
        center/cover;

    border-bottom-left-radius: 30px;
    border-bottom-right-radius: 30px;

    overflow: hidden;
}

.hero::before {
    content: "";

    position: absolute;

    width: 350px;
    height: 350px;

    border-radius: 50%;

    background: rgba(6,182,212,.25);

    top: -150px;
    left: -100px;
}

.hero::after {
    content: "";

    position: absolute;

    width: 300px;
    height: 300px;

    border-radius: 50%;

    background: rgba(250,204,21,.20);

    bottom: -130px;
    right: -80px;
}

.hero .container {
    position: relative;
    z-index: 2;
}

.hero h1 {
    font-family: Poppins, sans-serif;

    font-size: 48px;

    margin: 0 0 15px;

    letter-spacing: -1px;

    text-shadow:
        0 5px 20px rgba(0,0,0,.2);
}

.hero p {
    margin: 0 auto 25px;

    max-width: 820px;

    font-size: 17px;

    opacity: .95;
}

/* Buttons */

.btn {
    display: inline-flex;

    align-items: center;
    justify-content: center;

    gap: 10px;

    padding: 12px 22px;

    border-radius: 999px;

    font-weight: 700;

    cursor: pointer;

    border: 0;

    transition:
        transform .2s,
        box-shadow .2s;
}

.btn:hover {
    transform: translateY(-3px);

    box-shadow:
        0 10px 25px rgba(0,0,0,.2);
}

.btn-primary {
    background:
        linear-gradient(
            135deg,
            #06b6d4,
            #3b82f6
        );

    color: white;
}

.btn-ghost {
    background: rgba(255,255,255,.15);

    border: 2px solid rgba(255,255,255,.6);

    color: white;

    margin-left: 8px;
}

.btn-ghost:hover {
    background: white;
    color: var(--primary);
}

/* ================= SECTIONS ================= */

.section {
    padding: 60px 0;
}

.section .title {
    text-align: center;

    margin-bottom: 28px;
}

.section .title h2 {
    font-family: Poppins, sans-serif;

    font-size: 30px;

    margin-bottom: 8px;

    background:
        linear-gradient(
            90deg,
            #4f46e5,
            #ec4899
        );

    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

/* ================= CATEGORIES ================= */

.grid {
    display: grid;
    gap: 20px;
}

.categories {
    grid-template-columns: repeat(6,1fr);
}

.cat-card {
    background: white;

    border-radius: var(--radius);

    padding: 22px 15px;

    text-align: center;

    border: 1px solid #e2e8f0;

    box-shadow:
        0 8px 25px rgba(79,70,229,.08);

    cursor: pointer;

    transition:
        transform .25s,
        box-shadow .25s;
}

.cat-card:hover {
    transform: translateY(-8px) scale(1.02);

    box-shadow:
        0 18px 35px rgba(79,70,229,.18);

    border-color: #a5b4fc;
}

.cat-card .icon {
    font-size: 32px;

    margin-bottom: 10px;

    background:
        linear-gradient(
            135deg,
            #ec4899,
            #7c3aed,
            #06b6d4
        );

    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.cat-card h4 {
    margin: 6px 0 0;

    font-size: 15px;
}

/* ================= PRODUCTS ================= */

.products {
    grid-template-columns: repeat(4,1fr);
}

.product {
    position: relative;

    background: white;

    border-radius: var(--radius);

    overflow: hidden;

    display: flex;

    flex-direction: column;

    border: 1px solid #e2e8f0;

    box-shadow:
        0 8px 25px rgba(15,23,42,.07);

    transition:
        transform .25s,
        box-shadow .25s;
}

.product:hover {
    transform: translateY(-8px);

    box-shadow:
        0 20px 45px rgba(79,70,229,.18);
}

.product img {
    width: 100%;
    height: 210px;

    object-fit: cover;

    display: block;

    transition: transform .4s;
}

.product:hover img {
    transform: scale(1.06);
}

.product-body {
    padding: 15px;

    display: flex;
    flex-direction: column;

    gap: 10px;

    flex: 1;
}

.product h5 {
    margin: 0;

    font-size: 16px;
}

.price {
    font-weight: 800;

    font-size: 19px;

    color: var(--primary);
}

.old-price {
    color: var(--muted);

    text-decoration: line-through;

    font-size: 13px;
}

.rating {
    color: #f59e0b;

    font-size: 13px;
}

.product-footer {
    padding: 12px;

    display: flex;

    gap: 10px;
}

.add-btn {
    flex: 1;

    background:
        linear-gradient(
            135deg,
            #4f46e5,
            #7c3aed
        );

    color: white;

    border: 0;

    padding: 11px;

    border-radius: 9px;

    cursor: pointer;

    font-weight: 700;

    transition: .2s;
}

.add-btn:hover {
    background:
        linear-gradient(
            135deg,
            #ec4899,
            #ef4444
        );

    transform: translateY(-2px);
}

.wish-btn {
    background: #fff1f2;

    color: #ec4899;

    border: 1px solid #fecdd3;

    padding: 9px;

    border-radius: 9px;

    cursor: pointer;
}

/* ================= FLASH SALE ================= */

.deal {
    display: flex;

    gap: 0;

    background:
        linear-gradient(
            135deg,
            #eef2ff,
            #fdf2f8
        );

    border-radius: 20px;

    overflow: hidden;

    align-items: stretch;

    box-shadow:
        0 15px 40px rgba(79,70,229,.12);
}

.deal img {
    width: 50%;

    height: 330px;

    object-fit: cover;
}

.deal .content {
    padding: 35px;

    flex: 1;
}

.deal .content h3 {
    font-size: 28px;

    color: var(--secondary);
}

.timer {
    display: flex;

    gap: 10px;

    margin: 20px 0;
}

.time-box {
    background:
        linear-gradient(
            135deg,
            #4f46e5,
            #ec4899
        );

    color: white;

    padding: 12px;

    border-radius: 10px;

    min-width: 70px;

    text-align: center;

    box-shadow:
        0 8px 18px rgba(79,70,229,.2);
}

/* ================= TESTIMONIALS ================= */

.testimonials {
    display: flex;

    gap: 18px;

    overflow-x: auto;

    padding: 12px 4px;
}

.testimonial {
    min-width: 320px;

    background: white;

    padding: 22px;

    border-radius: var(--radius);

    border-left: 5px solid #7c3aed;

    box-shadow:
        0 8px 25px rgba(79,70,229,.08);
}

.testimonial .rating {
    color: #f59e0b;

    font-size: 17px;
}

/* ================= NEWSLETTER ================= */

.newsletter {
    background:
        linear-gradient(
            135deg,
            #4f46e5,
            #7c3aed,
            #ec4899
        );

    color: white;

    border-radius: 20px;

    padding: 45px 30px;

    text-align: center;

    box-shadow:
        0 20px 45px rgba(124,58,237,.25);
}

.newsletter h3 {
    font-size: 28px;
}

.newsletter input {
    padding: 13px 17px;

    border-radius: 999px;

    border: 0;

    width: 320px;

    max-width: 100%;

    outline: none;
}

/* ================= FOOTER ================= */

footer {
    margin-top: 30px;

    padding: 45px 0;

    color: white;

    background:
        linear-gradient(
            135deg,
            #172554,
            #312e81,
            #4c1d95
        );
}

/* ================= MOBILE ================= */

.mobile-toggle {
    display: none;

    border: 0;

    background: transparent;

    font-size: 22px;

    cursor: pointer;

    color: var(--primary);
}

@media (max-width:1200px) {

    .categories {
        grid-template-columns: repeat(3,1fr);
    }

    .products {
        grid-template-columns: repeat(3,1fr);
    }
}

@media (max-width:900px) {

    nav.main-nav {
        display: none;
    }

    .mobile-toggle {
        display: inline-block;
    }

    .products {
        grid-template-columns: repeat(2,1fr);
    }

    .categories {
        grid-template-columns: repeat(2,1fr);
    }

    .search {
        min-width: 180px;
    }

    .deal img {
        height: 250px;
    }
}

@media (max-width:600px) {

    .hero h1 {
        font-size: 32px;
    }

    .hero p {
        font-size: 15px;
    }

    .products {
        grid-template-columns: 1fr;
    }

    .categories {
        grid-template-columns: 1fr 1fr;
    }

    .deal {
        flex-direction: column;
    }

    .deal img {
        width: 100%;
        height: 230px;
    }

    .deal .content {
        padding: 25px;
    }

    .timer {
        flex-wrap: wrap;
    }

    .header-inner {
        gap: 8px;
    }

    .search {
        min-width: 130px;
    }
}
</style>
