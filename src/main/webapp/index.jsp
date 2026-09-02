<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>RailYatri · Book your train</title>
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
      background: #f2f4f8;
      color: #1e293b;
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
      border-bottom: 1px solid #e9edf2;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .brand i {
      font-size: 32px;
      color: #d97706;
      background: #fef3c7;
      padding: 10px;
      border-radius: 18px;
    }
    .brand h1 {
      font-weight: 800;
      font-size: 26px;
      letter-spacing: -0.4px;
      background: linear-gradient(145deg, #1e3a8a, #3b82f6);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .brand small {
      display: block;
      font-weight: 400;
      font-size: 13px;
      color: #64748b;
      -webkit-text-fill-color: #64748b;
    }
    .user-actions {
      display: flex;
      align-items: center;
      gap: 18px;
    }
    .user-actions .badge {
      background: #eef2ff;
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 14px;
      color: #1e3a8a;
    }
    .user-actions .badge i {
      margin-right: 6px;
    }
    .user-actions button {
      background: #1e3a8a;
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
      background: #2563eb;
      transform: scale(1.02);
    }

    /* search card */
    .search-card {
      background: linear-gradient(135deg, #f8fafc, #eef2ff);
      border-radius: 24px;
      padding: 28px 30px;
      margin: 24px 0 30px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
      border: 1px solid #e2e8f0;
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
      color: #334155;
      margin-bottom: 5px;
      letter-spacing: 0.3px;
    }
    .field-group input, .field-group select {
      width: 100%;
      padding: 12px 14px;
      border-radius: 16px;
      border: 1px solid #d1d9e6;
      background: white;
      font-size: 14px;
      font-weight: 500;
      transition: 0.2s;
      outline: none;
    }
    .field-group input:focus, .field-group select:focus {
      border-color: #3b82f6;
      box-shadow: 0 0 0 4px rgba(59, 130, 246, 0.15);
    }
    .search-btn {
      background: #d97706;
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
      border: 1px solid #b45309;
    }
    .search-btn:hover {
      background: #b45309;
      transform: translateY(-2px);
      box-shadow: 0 8px 18px rgba(217, 119, 6, 0.25);
    }

    /* quick filters */
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
      border: 1px solid #d1d9e6;
      font-weight: 500;
      font-size: 13px;
      cursor: pointer;
      transition: 0.15s;
      color: #1e293b;
      box-shadow: 0 1px 2px rgba(0,0,0,0.02);
    }
    .quick-filters .chip i {
      margin-right: 6px;
      color: #3b82f6;
    }
    .quick-filters .chip:hover {
      background: #eef2ff;
      border-color: #3b82f6;
    }
    .quick-filters .chip.active {
      background: #1e3a8a;
      color: white;
      border-color: #1e3a8a;
    }
    .quick-filters .chip.active i {
      color: white;
    }

    /* train list */
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
      color: #d97706;
    }
    .section-title span {
      color: #64748b;
      font-size: 14px;
    }

    .train-card {
      background: white;
      border-radius: 20px;
      padding: 18px 22px;
      margin-bottom: 14px;
      border: 1px solid #e9edf2;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      transition: 0.2s;
      box-shadow: 0 2px 6px rgba(0,0,0,0.02);
    }
    .train-card:hover {
      border-color: #b1c5e0;
      box-shadow: 0 6px 16px rgba(0, 0, 0, 0.04);
    }
    .train-info {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 14px 30px;
      flex: 2 1 300px;
    }
    .train-name {
      font-weight: 700;
      font-size: 17px;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .train-name .code {
      background: #dbeafe;
      padding: 2px 12px;
      border-radius: 40px;
      font-size: 12px;
      font-weight: 600;
      color: #1e3a8a;
    }
    .route {
      display: flex;
      align-items: center;
      gap: 6px;
      font-weight: 500;
      color: #334155;
    }
    .route i {
      color: #94a3b8;
      font-size: 14px;
    }
    .time-detail {
      font-size: 14px;
      color: #475569;
    }
    .time-detail strong {
      color: #0f172a;
    }
    .seat-status {
      display: flex;
      align-items: center;
      gap: 14px;
      flex-wrap: wrap;
    }
    .seat-badge {
      background: #dcfce7;
      color: #166534;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 13px;
    }
    .seat-badge.medium {
      background: #fef9c3;
      color: #854d0e;
    }
    .seat-badge.low {
      background: #fee2e2;
      color: #991b1b;
    }
    .price-tag {
      font-weight: 800;
      font-size: 20px;
      color: #0f172a;
      letter-spacing: -0.3px;
    }
    .price-tag small {
      font-weight: 400;
      font-size: 13px;
      color: #64748b;
    }
    .book-btn {
      background: #1e3a8a;
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
      border: 1px solid #1e3a8a;
    }
    .book-btn:hover {
      background: #2563eb;
      transform: scale(1.02);
    }
    .book-btn.outline {
      background: transparent;
      color: #1e3a8a;
      border: 1px solid #1e3a8a;
    }
    .book-btn.outline:hover {
      background: #eef2ff;
    }

    /* booking summary panel */
    .summary-panel {
      margin-top: 32px;
      background: #f8fafc;
      border-radius: 24px;
      padding: 22px 28px;
      border: 1px solid #e2e8f0;
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
      color: #64748b;
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
      background: #d97706;
      color: white;
    }
    .btn-confirm:hover {
      background: #b45309;
    }
    .btn-cancel {
      background: #e2e8f0;
      color: #1e293b;
    }
    .btn-cancel:hover {
      background: #cbd5e1;
    }

    /* responsive */
    @media (max-width: 780px) {
      .app-container { padding: 16px; }
      .search-row { flex-direction: column; }
      .train-card { flex-direction: column; align-items: stretch; gap: 12px; }
      .train-info { flex-direction: column; align-items: flex-start; }
      .seat-status { width: 100%; justify-content: space-between; }
    }
    @media (max-width: 480px) {
      .brand h1 { font-size: 20px; }
      .user-actions button { padding: 8px 14px; font-size: 13px; }
    }
    .text-muted { color: #64748b; }
    .mt-8 { margin-top: 8px; }
    .gap-6 { gap: 6px; }
    .flex { display: flex; align-items: center; }
  </style>
</head>
<body>
<div class="app-container">

  <!-- HEADER -->
  <header class="header">
    <div class="brand">
      <i class="fas fa-train-subway"></i>
      <div>
        <h1>RailYatri <small>book · travel · explore</small></h1>
      </div>
    </div>
    <div class="user-actions">
      <span class="badge"><i class="fas fa-ticket-alt"></i> My Bookings</span>
      <button id="showSummaryBtn"><i class="fas fa-receipt"></i> Summary</button>
    </div>
  </header>

  <!-- SEARCH CARD -->
  <div class="search-card">
    <div class="search-row">
      <div class="field-group">
        <label><i class="fas fa-flag"></i> From</label>
        <input type="text" id="fromStation" value="Mumbai Central" placeholder="Station" />
      </div>
      <div class="field-group">
        <label><i class="fas fa-flag-checkered"></i> To</label>
        <input type="text" id="toStation" value="Delhi Junction" placeholder="Station" />
      </div>
      <div class="field-group">
        <label><i class="fas fa-calendar-day"></i> Date</label>
        <input type="date" id="travelDate" value="2026-09-15" />
      </div>
      <div class="field-group">
        <label><i class="fas fa-user"></i> Class</label>
        <select id="classSelect">
          <option value="all">All Classes</option>
          <option value="sleeper">Sleeper</option>
          <option value="ac3">AC 3 Tier</option>
          <option value="ac2">AC 2 Tier</option>
          <option value="first">First AC</option>
        </select>
      </div>
      <button class="search-btn" id="searchTrainsBtn"><i class="fas fa-magnifying-glass"></i> Search</button>
    </div>
  </div>

  <!-- quick filters -->
  <div class="quick-filters" id="filterChips">
    <span class="chip active" data-filter="all"><i class="fas fa-list"></i> All</span>
    <span class="chip" data-filter="sleeper"><i class="fas fa-bed"></i> Sleeper</span>
    <span class="chip" data-filter="ac3"><i class="fas fa-couch"></i> AC 3</span>
    <span class="chip" data-filter="ac2"><i class="fas fa-couch"></i> AC 2</span>
    <span class="chip" data-filter="first"><i class="fas fa-crown"></i> First AC</span>
  </div>

  <!-- TRAIN LIST -->
  <div class="section-title">
    <h2><i class="fas fa-train"></i> Available Trains</h2>
    <span id="trainCount">6 trains found</span>
  </div>
  <div id="trainList"></div>

  <!-- BOOKING SUMMARY PANEL -->
  <div class="summary-panel" id="summaryPanel">
    <h3><i class="fas fa-circle-check" style="color:#22c55e;"></i> Booking summary</h3>
    <div class="row">
      <div class="col"><div class="label">Train</div><div class="value" id="summaryTrain">—</div></div>
      <div class="col"><div class="label">Route</div><div class="value" id="summaryRoute">—</div></div>
      <div class="col"><div class="label">Class</div><div class="value" id="summaryClass">—</div></div>
      <div class="col"><div class="label">Passengers</div><div class="value" id="summaryPassengers">1</div></div>
      <div class="col"><div class="label">Total</div><div class="value" id="summaryTotal">₹0</div></div>
    </div>
    <div class="actions">
      <button class="btn-confirm" id="confirmBooking"><i class="fas fa-check"></i> Confirm booking</button>
      <button class="btn-cancel" id="cancelBooking"><i class="fas fa-xmark"></i> Cancel</button>
    </div>
    <div id="bookingMessage" style="margin-top:14px;font-weight:500;color:#166534;display:none;"></div>
  </div>
</div>

<script>
  (function() {
    // ----- DATA (train database) -----
    const trains = [
      { id: 1, name: 'Rajdhani Express', code: '12951', from: 'Mumbai Central', to: 'Delhi Junction', dep: '16:35', arr: '08:30', duration: '15h 55m', class: 'first', seats: 18, price: 4850, img: '🚄' },
      { id: 2, name: 'Shatabdi Express', code: '12002', from: 'Mumbai Central', to: 'Delhi Junction', dep: '06:20', arr: '21:10', duration: '14h 50m', class: 'ac2', seats: 42, price: 2950, img: '🚅' },
      { id: 3, name: 'Duronto Express', code: '12259', from: 'Mumbai Central', to: 'Delhi Junction', dep: '22:00', arr: '11:40', duration: '13h 40m', class: 'ac3', seats: 78, price: 2250, img: '🚆' },
      { id: 4, name: 'Garib Rath', code: '12909', from: 'Mumbai Central', to: 'Delhi Junction', dep: '19:50', arr: '10:30', duration: '14h 40m', class: 'sleeper', seats: 120, price: 1250, img: '🚇' },
      { id: 5, name: 'Tejas Express', code: '22119', from: 'Mumbai Central', to: 'Delhi Junction', dep: '09:10', arr: '23:45', duration: '14h 35m', class: 'ac3', seats: 52, price: 2350, img: '🚝' },
      { id: 6, name: 'Humsafar Express', code: '12751', from: 'Mumbai Central', to: 'Delhi Junction', dep: '12:05', arr: '03:20', duration: '15h 15m', class: 'sleeper', seats: 88, price: 1350, img: '🚈' },
    ];

    // current selection
    let selectedTrainId = null;
    let passengerCount = 1;

    // DOM refs
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
    const toInput = document.getElementById('toStation');
    const classSelect = document.getElementById('classSelect');

    // Helper: render trains with optional filter
    function renderTrains(filterClass = 'all', searchFrom = null, searchTo = null) {
      let filtered = [...trains];
      // filter by class
      if (filterClass !== 'all') {
        filtered = filtered.filter(t => t.class === filterClass);
      }
      // filter by station (if provided)
      if (searchFrom) {
        filtered = filtered.filter(t => t.from.toLowerCase().includes(searchFrom.toLowerCase()));
      }
      if (searchTo) {
        filtered = filtered.filter(t => t.to.toLowerCase().includes(searchTo.toLowerCase()));
      }

      trainCountEl.textContent = filtered.length + ' trains found';

      if (filtered.length === 0) {
        trainListEl.innerHTML = `<div style="padding:30px;text-align:center;background:#f8fafc;border-radius:24px;color:#64748b;"><i class="fas fa-train" style="font-size:32px;opacity:0.4;display:block;margin-bottom:12px;"></i> No trains match your search</div>`;
        return;
      }

      let html = '';
      filtered.forEach(t => {
        let seatLabel = 'Available';
        let seatClass = '';
        if (t.seats < 20) { seatLabel = 'Filling fast'; seatClass = 'low'; }
        else if (t.seats < 50) { seatLabel = 'Limited'; seatClass = 'medium'; }
        else { seatLabel = 'Available'; seatClass = ''; }

        const isSelected = (selectedTrainId === t.id);
        html += `
          <div class="train-card" data-id="${t.id}" style="${isSelected ? 'border-color:#3b82f6;background:#f5f9ff;' : ''}">
            <div class="train-info">
              <div class="train-name">
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
              <span class="seat-badge ${seatClass}"><i class="fas fa-chair"></i> ${t.seats} seats</span>
              <span class="seat-badge ${seatClass}">${seatLabel}</span>
              <span class="price-tag">₹${t.price} <small>/ person</small></span>
              <button class="book-btn ${isSelected ? 'outline' : ''}" data-id="${t.id}">
                ${isSelected ? '✓ Selected' : 'Book now'} <i class="fas fa-chevron-right"></i>
              </button>
            </div>
          </div>
        `;
      });
      trainListEl.innerHTML = html;

      // attach book button events
      document.querySelectorAll('.train-card .book-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const id = parseInt(this.dataset.id);
          selectTrain(id);
        });
      });

      // click on card also selects
      document.querySelectorAll('.train-card').forEach(card => {
        card.addEventListener('click', function() {
          const id = parseInt(this.dataset.id);
          selectTrain(id);
        });
      });
    }

    // select train
    function selectTrain(id) {
      const train = trains.find(t => t.id === id);
      if (!train) return;
      selectedTrainId = id;
      // re-render to highlight
      const currentFilter = document.querySelector('#filterChips .chip.active')?.dataset.filter || 'all';
      renderTrains(currentFilter, fromInput.value, toInput.value);
      // update summary
      summaryPanel.classList.add('visible');
      summaryTrain.textContent = train.name + ' (' + train.code + ')';
      summaryRoute.textContent = train.from + ' → ' + train.to;
      summaryClass.textContent = train.class.toUpperCase();
      summaryPassengers.textContent = passengerCount;
      const total = train.price * passengerCount;
      summaryTotal.textContent = '₹' + total.toLocaleString('en-IN');
      bookingMessage.style.display = 'none';
    }

    // filter chips
    filterChips.forEach(chip => {
      chip.addEventListener('click', function() {
        filterChips.forEach(c => c.classList.remove('active'));
        this.classList.add('active');
        const filter = this.dataset.filter;
        renderTrains(filter, fromInput.value, toInput.value);
      });
    });

    // search button
    searchBtn.addEventListener('click', function() {
      const filter = document.querySelector('#filterChips .chip.active')?.dataset.filter || 'all';
      renderTrains(filter, fromInput.value, toInput.value);
    });

    // Enter key on inputs triggers search
    [fromInput, toInput, classSelect].forEach(el => {
      el.addEventListener('keyup', (e) => { if (e.key === 'Enter') searchBtn.click(); });
    });

    // summary: confirm booking
    document.getElementById('confirmBooking').addEventListener('click', function() {
      if (!selectedTrainId) {
        bookingMessage.style.display = 'block';
        bookingMessage.innerHTML = '<i class="fas fa-circle-exclamation" style="color:#b45309;"></i> Please select a train first.';
        bookingMessage.style.color = '#991b1b';
        return;
      }
      const train = trains.find(t => t.id === selectedTrainId);
      if (!train) return;
      bookingMessage.style.display = 'block';
      bookingMessage.innerHTML = `<i class="fas fa-circle-check" style="color:#16a34a;"></i> Booking confirmed for ${train.name} (${passengerCount} passenger${passengerCount > 1 ? 's' : ''}) · Total ₹${(train.price * passengerCount).toLocaleString('en-IN')}`;
      bookingMessage.style.color = '#166534';
      // optional: reset selection? no, keep it.
    });

    document.getElementById('cancelBooking').addEventListener('click', function() {
      selectedTrainId = null;
      summaryPanel.classList.remove('visible');
      bookingMessage.style.display = 'none';
      // re-render to remove highlight
      const currentFilter = document.querySelector('#filterChips .chip.active')?.dataset.filter || 'all';
      renderTrains(currentFilter, fromInput.value, toInput.value);
    });

    // toggle summary panel (show/hide)
    document.getElementById('showSummaryBtn').addEventListener('click', function() {
      if (summaryPanel.classList.contains('visible')) {
        summaryPanel.classList.remove('visible');
      } else {
        if (selectedTrainId) {
          summaryPanel.classList.add('visible');
        } else {
          alert('Please select a train first.');
        }
      }
    });

    // passenger count can be changed (simple increment/decrement via click on summary)
    summaryPassengers.addEventListener('click', function() {
      if (!selectedTrainId) return;
      passengerCount = passengerCount === 1 ? 2 : (passengerCount === 2 ? 3 : 1);
      const train = trains.find(t => t.id === selectedTrainId);
      if (train) {
        summaryPassengers.textContent = passengerCount;
        summaryTotal.textContent = '₹' + (train.price * passengerCount).toLocaleString('en-IN');
      }
    });

    // init
    renderTrains('all', 'Mumbai Central', 'Delhi Junction');
  })();
</script>
</body>
</html>
