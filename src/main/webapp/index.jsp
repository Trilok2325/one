<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>TTD · Tirumala Tirupati Devasthanam</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800;14..32,900&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Inter', sans-serif;
      background: #f3f0ea;
      color: #1e1b16;
      padding: 20px;
      line-height: 1.5;
    }
    .app-container {
      max-width: 1280px;
      margin: 0 auto;
      background: white;
      border-radius: 32px;
      box-shadow: 0 20px 60px rgba(0, 0, 0, 0.08);
      overflow: hidden;
      padding: 24px 28px 40px;
    }
    /* header */
    .header {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
      padding-bottom: 20px;
      border-bottom: 1px solid #e5ddd4;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .brand i {
      font-size: 32px;
      color: #b76e2e;
      background: #faeedb;
      padding: 10px;
      border-radius: 18px;
    }
    .brand h1 {
      font-weight: 800;
      font-size: 26px;
      letter-spacing: -0.4px;
      color: #4a2c1a;
    }
    .brand small {
      display: block;
      font-weight: 400;
      font-size: 13px;
      color: #7a6452;
    }
    .user-actions {
      display: flex;
      align-items: center;
      gap: 18px;
    }
    .user-actions .badge {
      background: #faeedb;
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 14px;
      color: #4a2c1a;
    }
    .user-actions .badge i {
      margin-right: 6px;
      color: #b76e2e;
    }
    .user-actions button {
      background: #4a2c1a;
      border: 0;
      color: white;
      padding: 10px 20px;
      border-radius: 40px;
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 8px;
      cursor: pointer;
      transition: 0.2s;
      font-size: 14px;
      border: 1px solid transparent;
    }
    .user-actions button:hover {
      background: #6b422a;
      transform: scale(1.02);
    }

    /* search card — darshan booking */
    .search-card {
      background: linear-gradient(135deg, #fcf6ed, #f5ede3);
      border-radius: 24px;
      padding: 28px 30px;
      margin: 24px 0 30px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
      border: 1px solid #e5ddd4;
    }
    .search-row {
      display: flex;
      flex-wrap: wrap;
      gap: 16px 20px;
      align-items: flex-end;
    }
    .field-group {
      flex: 1 0 160px;
      min-width: 140px;
    }
    .field-group label {
      display: block;
      font-size: 13px;
      font-weight: 600;
      color: #4a3a2a;
      margin-bottom: 5px;
      letter-spacing: 0.3px;
    }
    .field-group input, .field-group select {
      width: 100%;
      padding: 12px 14px;
      border-radius: 16px;
      border: 1px solid #d6cdc0;
      background: white;
      font-size: 14px;
      font-weight: 500;
      transition: 0.2s;
      outline: none;
    }
    .field-group input:focus, .field-group select:focus {
      border-color: #b76e2e;
      box-shadow: 0 0 0 4px rgba(183, 110, 46, 0.15);
    }
    .search-btn {
      background: #b76e2e;
      border: 0;
      color: white;
      font-weight: 700;
      padding: 12px 34px;
      border-radius: 40px;
      font-size: 16px;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      gap: 8px;
      margin-top: 6px;
      border: 1px solid #9a5a24;
    }
    .search-btn:hover {
      background: #9a5a24;
      transform: translateY(-2px);
      box-shadow: 0 8px 18px rgba(183, 110, 46, 0.25);
    }

    /* quick filters — seva / darshan types */
    .quick-filters {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 28px;
    }
    .quick-filters .chip {
      background: white;
      padding: 8px 18px;
      border-radius: 40px;
      border: 1px solid #d6cdc0;
      font-weight: 500;
      font-size: 13px;
      cursor: pointer;
      transition: 0.15s;
      color: #2d241c;
      box-shadow: 0 1px 2px rgba(0,0,0,0.02);
    }
    .quick-filters .chip i {
      margin-right: 6px;
      color: #b76e2e;
    }
    .quick-filters .chip:hover {
      background: #f5ede3;
      border-color: #b76e2e;
    }
    .quick-filters .chip.active {
      background: #4a2c1a;
      color: white;
      border-color: #4a2c1a;
    }
    .quick-filters .chip.active i {
      color: white;
    }

    /* train list → seva / darshan list */
    .section-title {
      display: flex;
      justify-content: space-between;
      align-items: baseline;
      margin: 12px 0 18px;
    }
    .section-title h2 {
      font-weight: 700;
      font-size: 22px;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .section-title h2 i {
      color: #b76e2e;
    }
    .section-title span {
      color: #7a6452;
      font-size: 14px;
    }

    .seva-card {
      background: white;
      border-radius: 20px;
      padding: 18px 22px;
      margin-bottom: 14px;
      border: 1px solid #e5ddd4;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      transition: 0.2s;
      box-shadow: 0 2px 6px rgba(0,0,0,0.02);
    }
    .seva-card:hover {
      border-color: #c4b3a2;
      box-shadow: 0 6px 16px rgba(0, 0, 0, 0.04);
    }
    .seva-info {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 14px 30px;
      flex: 2 1 300px;
    }
    .seva-name {
      font-weight: 700;
      font-size: 17px;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .seva-name .code {
      background: #faeedb;
      padding: 2px 12px;
      border-radius: 40px;
      font-size: 12px;
      font-weight: 600;
      color: #4a2c1a;
    }
    .route {
      display: flex;
      align-items: center;
      gap: 6px;
      font-weight: 500;
      color: #4a3a2a;
    }
    .route i {
      color: #b76e2e;
      font-size: 14px;
    }
    .time-detail {
      font-size: 14px;
      color: #5f4d3a;
    }
    .time-detail strong {
      color: #1e1b16;
    }
    .seat-status {
      display: flex;
      align-items: center;
      gap: 14px;
      flex-wrap: wrap;
    }
    .seat-badge {
      background: #e9f0e7;
      color: #2d5a2a;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 13px;
    }
    .seat-badge.medium {
      background: #fef3c7;
      color: #854d0e;
    }
    .seat-badge.low {
      background: #fee2e2;
      color: #991b1b;
    }
    .price-tag {
      font-weight: 800;
      font-size: 20px;
      color: #1e1b16;
      letter-spacing: -0.3px;
    }
    .price-tag small {
      font-weight: 400;
      font-size: 13px;
      color: #7a6452;
    }
    .book-btn {
      background: #4a2c1a;
      border: 0;
      color: white;
      padding: 10px 28px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 14px;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      gap: 6px;
      border: 1px solid #4a2c1a;
    }
    .book-btn:hover {
      background: #6b422a;
      transform: scale(1.02);
    }
    .book-btn.outline {
      background: transparent;
      color: #4a2c1a;
      border: 1px solid #4a2c1a;
    }
    .book-btn.outline:hover {
      background: #f5ede3;
    }

    /* summary panel */
    .summary-panel {
      margin-top: 32px;
      background: #fcf6ed;
      border-radius: 24px;
      padding: 22px 28px;
      border: 1px solid #e5ddd4;
      display: none;
    }
    .summary-panel.visible {
      display: block;
    }
    .summary-panel h3 {
      display: flex;
      align-items: center;
      gap: 10px;
      font-size: 18px;
      margin-bottom: 14px;
    }
    .summary-panel .row {
      display: flex;
      flex-wrap: wrap;
      gap: 12px 30px;
    }
    .summary-panel .col {
      flex: 1 0 180px;
    }
    .summary-panel .label {
      font-size: 13px;
      color: #7a6452;
    }
    .summary-panel .value {
      font-weight: 700;
      font-size: 16px;
    }
    .summary-panel .actions {
      display: flex;
      gap: 12px;
      margin-top: 16px;
      flex-wrap: wrap;
    }
    .summary-panel .actions button {
      padding: 10px 26px;
      border-radius: 40px;
      font-weight: 600;
      border: 0;
      cursor: pointer;
      transition: 0.15s;
    }
    .btn-confirm {
      background: #b76e2e;
      color: white;
    }
    .btn-confirm:hover {
      background: #9a5a24;
    }
    .btn-cancel {
      background: #e5ddd4;
      color: #1e1b16;
    }
    .btn-cancel:hover {
      background: #d6cdc0;
    }

    /* responsive */
    @media (max-width: 780px) {
      .app-container { padding: 16px; }
      .search-row { flex-direction: column; }
      .seva-card { flex-direction: column; align-items: stretch; gap: 12px; }
      .seva-info { flex-direction: column; align-items: flex-start; }
      .seat-status { width: 100%; justify-content: space-between; }
    }
    @media (max-width: 480px) {
      .brand h1 { font-size: 20px; }
      .user-actions button { padding: 8px 14px; font-size: 13px; }
    }
    .text-muted { color: #7a6452; }
    .mt-8 { margin-top: 8px; }
    .gap-6 { gap: 6px; }
    .flex { display: flex; align-items: center; }

    /* TTD style highlight */
    .temple-icon {
      color: #b76e2e;
    }
    .gold-bg {
      background: #faeedb;
    }
  </style>
</head>
<body>
<div class="app-container">

  <!-- HEADER : TTD style -->
  <header class="header">
    <div class="brand">
      <i class="fas fa-temple-hindu"></i>
      <div>
        <h1>Tirumala <small>TTD · Sri Venkateswara</small></h1>
      </div>
    </div>
    <div class="user-actions">
      <span class="badge"><i class="fas fa-ticket-alt"></i> My Sevas</span>
      <button id="showSummaryBtn"><i class="fas fa-receipt"></i> Summary</button>
    </div>
  </header>

  <!-- DARSHAN BOOKING CARD -->
  <div class="search-card">
    <div class="search-row">
      <div class="field-group">
        <label><i class="fas fa-map-pin"></i> Seva / Darshan</label>
        <input type="text" id="fromStation" value="Tirumala" placeholder="Seva name" />
      </div>
      <div class="field-group">
        <label><i class="fas fa-calendar-day"></i> Date</label>
        <input type="date" id="travelDate" value="2026-09-20" />
      </div>
      <div class="field-group">
        <label><i class="fas fa-user"></i> Devotees</label>
        <select id="classSelect">
          <option value="all">All Sevas</option>
          <option value="suprabhatam">Suprabhatam</option>
          <option value="sahasranam">Sahasranam</option>
          <option value="archana">Archana</option>
          <option value="kalyanam">Kalyanam</option>
        </select>
      </div>
      <button class="search-btn" id="searchTrainsBtn"><i class="fas fa-magnifying-glass"></i> Search</button>
    </div>
  </div>

  <!-- quick filters – seva types -->
  <div class="quick-filters" id="filterChips">
    <span class="chip active" data-filter="all"><i class="fas fa-list"></i> All Sevas</span>
    <span class="chip" data-filter="suprabhatam"><i class="fas fa-sun"></i> Suprabhatam</span>
    <span class="chip" data-filter="sahasranam"><i class="fas fa-om"></i> Sahasranam</span>
    <span class="chip" data-filter="archana"><i class="fas fa-leaf"></i> Archana</span>
    <span class="chip" data-filter="kalyanam"><i class="fas fa-ring"></i> Kalyanam</span>
  </div>

  <!-- SEVA LIST -->
  <div class="section-title">
    <h2><i class="fas fa-temple-hindu"></i> Available Sevas</h2>
    <span id="trainCount">6 sevas found</span>
  </div>
  <div id="trainList"></div>

  <!-- BOOKING SUMMARY -->
  <div class="summary-panel" id="summaryPanel">
    <h3><i class="fas fa-circle-check" style="color:#b76e2e;"></i> Seva summary</h3>
    <div class="row">
      <div class="col"><div class="label">Seva</div><div class="value" id="summaryTrain">—</div></div>
      <div class="col"><div class="label">Temple</div><div class="value" id="summaryRoute">Tirumala</div></div>
      <div class="col"><div class="label">Category</div><div class="value" id="summaryClass">—</div></div>
      <div class="col"><div class="label">Devotees</div><div class="value" id="summaryPassengers">1</div></div>
      <div class="col"><div class="label">Total</div><div class="value" id="summaryTotal">₹0</div></div>
    </div>
    <div class="actions">
      <button class="btn-confirm" id="confirmBooking"><i class="fas fa-check"></i> Confirm Seva</button>
      <button class="btn-cancel" id="cancelBooking"><i class="fas fa-xmark"></i> Cancel</button>
    </div>
    <div id="bookingMessage" style="margin-top:14px;font-weight:500;color:#2d5a2a;display:none;"></div>
  </div>
</div>

<script>
  (function() {
    // ----- DATA : TTD Seva database (replica) -----
    const sevas = [
      { id: 1, name: 'Suprabhatam Seva', code: 'SP-01', from: 'Tirumala', to: 'Sri Venkateswara', dep: '03:00', arr: '04:00', duration: '1h', class: 'suprabhatam', seats: 120, price: 300, img: '🌅' },
      { id: 2, name: 'Sahasranam Archana', code: 'SA-12', from: 'Tirumala', to: 'Sri Venkateswara', dep: '06:00', arr: '07:30', duration: '1.5h', class: 'sahasranam', seats: 80, price: 250, img: '🕉️' },
      { id: 3, name: 'Archana Seva', code: 'AR-07', from: 'Tirumala', to: 'Sri Venkateswara', dep: '09:00', arr: '10:30', duration: '1.5h', class: 'archana', seats: 150, price: 200, img: '🌿' },
      { id: 4, name: 'Kalyanam Seva', code: 'KL-03', from: 'Tirumala', to: 'Sri Venkateswara', dep: '11:00', arr: '13:00', duration: '2h', class: 'kalyanam', seats: 60, price: 500, img: '💐' },
      { id: 5, name: 'Suprabhatam (Special)', code: 'SP-09', from: 'Tirumala', to: 'Sri Venkateswara', dep: '04:30', arr: '05:45', duration: '1.25h', class: 'suprabhatam', seats: 45, price: 450, img: '🌅' },
      { id: 6, name: 'Archana (Group)', code: 'AR-22', from: 'Tirumala', to: 'Sri Venkateswara', dep: '14:00', arr: '15:30', duration: '1.5h', class: 'archana', seats: 90, price: 180, img: '🌿' },
    ];

    let selectedSevaId = null;
    let devoteeCount = 1;

    const trainListEl = document.getElementById('trainList');
    const trainCountEl = document.getElementById('trainCount');
    const summaryPanel = document.getElementById('summaryPanel');
    const summaryTrain = document.getElementById('summaryTrain');
    const summaryRoute = document.getElementById('summaryRoute');
    const summaryClass = document.getElementById('summaryClass');
    const summaryPassengers = document.getElementById('summaryPassengers');
    const summaryTotal = document.getElementById('summaryTotal');
    const bookingMessage = document.getElementById('bookingMessage');
    const filterChips = document.querySelectorAll('#filterChips .chip');
    const searchBtn = document.getElementById('searchTrainsBtn');
    const fromInput = document.getElementById('fromStation');
    const classSelect = document.getElementById('classSelect');

    function renderSevas(filterClass = 'all', searchFrom = null) {
      let filtered = [...sevas];
      if (filterClass !== 'all') {
        filtered = filtered.filter(t => t.class === filterClass);
      }
      if (searchFrom) {
        filtered = filtered.filter(t => t.name.toLowerCase().includes(searchFrom.toLowerCase()));
      }

      trainCountEl.textContent = filtered.length + ' sevas found';

      if (filtered.length === 0) {
        trainListEl.innerHTML = `<div style="padding:30px;text-align:center;background:#fcf6ed;border-radius:24px;color:#7a6452;"><i class="fas fa-temple-hindu" style="font-size:32px;opacity:0.4;display:block;margin-bottom:12px;"></i> No sevas match your search</div>`;
        return;
      }

      let html = '';
      filtered.forEach(t => {
        let seatLabel = 'Available';
        let seatClass = '';
        if (t.seats < 20) { seatLabel = 'Filling fast'; seatClass = 'low'; }
        else if (t.seats < 50) { seatLabel = 'Limited'; seatClass = 'medium'; }
        else { seatLabel = 'Available'; seatClass = ''; }

        const isSelected = (selectedSevaId === t.id);
        html += `
          <div class="seva-card" data-id="${t.id}" style="${isSelected ? 'border-color:#b76e2e;background:#fcf6ed;' : ''}">
            <div class="seva-info">
              <div class="seva-name">
                ${t.img} ${t.name} <span class="code">${t.code}</span>
              </div>
              <div class="route">
                <span>${t.from}</span> <i class="fas fa-arrow-right"></i> <span>${t.to}</span>
              </div>
              <div class="time-detail">
                <strong>${t.dep}</strong> – <strong>${t.arr}</strong> <span class="text-muted">• ${t.duration}</span>
              </div>
            </div>
            <div class="seat-status">
              <span class="seat-badge ${seatClass}"><i class="fas fa-chair"></i> ${t.seats} slots</span>
              <span class="seat-badge ${seatClass}">${seatLabel}</span>
              <span class="price-tag">₹${t.price} <small>/ devotee</small></span>
              <button class="book-btn ${isSelected ? 'outline' : ''}" data-id="${t.id}">
                ${isSelected ? '✓ Selected' : 'Book now'} <i class="fas fa-chevron-right"></i>
              </button>
            </div>
          </div>
        `;
      });
      trainListEl.innerHTML = html;

      document.querySelectorAll('.seva-card .book-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const id = parseInt(this.dataset.id);
          selectSeva(id);
        });
      });

      document.querySelectorAll('.seva-card').forEach(card => {
        card.addEventListener('click', function() {
          const id = parseInt(this.dataset.id);
          selectSeva(id);
        });
      });
    }

    function selectSeva(id) {
      const seva = sevas.find(t => t.id === id);
      if (!seva) return;
      selectedSevaId = id;
      const currentFilter = document.querySelector('#filterChips .chip.active')?.dataset.filter || 'all';
      renderSevas(currentFilter, fromInput.value);
      summaryPanel.classList.add('visible');
      summaryTrain.textContent = seva.name + ' (' + seva.code + ')';
      summaryRoute.textContent = 'Tirumala';
      summaryClass.textContent = seva.class.toUpperCase();
      summaryPassengers.textContent = devoteeCount;
      const total = seva.price * devoteeCount;
      summaryTotal.textContent = '₹' + total.toLocaleString('en-IN');
      bookingMessage.style.display = 'none';
    }

    filterChips.forEach(chip => {
      chip.addEventListener('click', function() {
        filterChips.forEach(c => c.classList.remove('active'));
        this.classList.add('active');
        const filter = this.dataset.filter;
        renderSevas(filter, fromInput.value);
      });
    });

    searchBtn.addEventListener('click', function() {
      const filter = document.querySelector('#filterChips .chip.active')?.dataset.filter || 'all';
      renderSevas(filter, fromInput.value);
    });

    [fromInput, classSelect].forEach(el => {
      el.addEventListener('keyup', (e) => { if (e.key === 'Enter') searchBtn.click(); });
    });

    document.getElementById('confirmBooking').addEventListener('click', function() {
      if (!selectedSevaId) {
        bookingMessage.style.display = 'block';
        bookingMessage.innerHTML = '<i class="fas fa-circle-exclamation" style="color:#b76e2e;"></i> Please select a seva first.';
        bookingMessage.style.color = '#991b1b';
        return;
      }
      const seva = sevas.find(t => t.id === selectedSevaId);
      if (!seva) return;
      bookingMessage.style.display = 'block';
      bookingMessage.innerHTML = `<i class="fas fa-circle-check" style="color:#b76e2e;"></i> Seva confirmed for ${seva.name} (${devoteeCount} devotee${devoteeCount > 1 ? 's' : ''}) · Total ₹${(seva.price * devoteeCount).toLocaleString('en-IN')}`;
      bookingMessage.style.color = '#2d5a2a';
    });

    document.getElementById('cancelBooking').addEventListener('click', function() {
      selectedSevaId = null;
      summaryPanel.classList.remove('visible');
      bookingMessage.style.display = 'none';
      const currentFilter = document.querySelector('#filterChips .chip.active')?.dataset.filter || 'all';
      renderSevas(currentFilter, fromInput.value);
    });

    document.getElementById('showSummaryBtn').addEventListener('click', function() {
      if (summaryPanel.classList.contains('visible')) {
        summaryPanel.classList.remove('visible');
      } else {
        if (selectedSevaId) {
          summaryPanel.classList.add('visible');
        } else {
          alert('Please select a seva first.');
        }
      }
    });

    summaryPassengers.addEventListener('click', function() {
      if (!selectedSevaId) return;
      devoteeCount = devoteeCount === 1 ? 2 : (devoteeCount === 2 ? 3 : 1);
      const seva = sevas.find(t => t.id === selectedSevaId);
      if (seva) {
        summaryPassengers.textContent = devoteeCount;
        summaryTotal.textContent = '₹' + (seva.price * devoteeCount).toLocaleString('en-IN');
      }
    });

    // init
    renderSevas('all', 'Tirumala');
  })();
</script>
</body>
</html>
