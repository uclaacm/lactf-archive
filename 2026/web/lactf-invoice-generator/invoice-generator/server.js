const express = require("express");
const puppeteer = require("puppeteer");
const path = require("path");

// Invoices
const app = express();
const PORT = 3000;

// Middleware
app.use(express.static("public"));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "public", "index.html"));
});

// Generate PDF invoice
app.post("/generate-invoice", async (req, res) => {
  try {
    const { name, item, cost, datePurchased } = req.body;

    if (!name || !item || !cost || !datePurchased) {
      return res.status(400).send("All fields are required");
    }

    const invoiceHTML = generateInvoiceHTML(
      name,
      item,
      parseFloat(cost),
      datePurchased,
    );

    let browser;
    try {
      browser = await puppeteer.launch({
        headless: true,
        args: ["--js-flags=--jitless", "--incognito"],
      });

      const page = await browser.newPage();
      await page.setViewport({ width: 821, height: 1159 });
      await page.setContent(invoiceHTML, { waitUntil: "load" });

      const pdf = await page.pdf({
        format: "A4",
        printBackground: true,
        margin: 0,
      });

      res.contentType("application/pdf");
      res.setHeader(
        "Content-Disposition",
        `attachment; filename="invoice-${Date.now()}.pdf"`,
      );
      res.end(pdf);
    } finally {
      if (browser) {
        await browser.close();
      }
    }
  } catch (error) {
    res.status(500).send("Error generating invoice");
  }
});

function generateInvoiceHTML(name, item, cost, datePurchased) {
  const invoiceNumber = Math.floor(Math.random() * 100000)
    .toString()
    .padStart(6, "0");
  const currentDate = new Date().toLocaleDateString("en-US", {
    year: "numeric",
    month: "long",
    day: "numeric",
  });

  return `
    <!DOCTYPE html>
    <html>
    <head>
      <meta charset="UTF-8">
      <title>Invoice</title>
      <style>
        body {
          font-family: Arial, sans-serif;
          max-width: 800px;
          margin: 0 auto;
          padding: 20px;
          color: #333;
        }
        .header {
          text-align: center;
          margin-bottom: 30px;
          border-bottom: 2px solid #333;
          padding-bottom: 20px;
        }
        .header h1 {
          margin: 0;
          font-size: 32px;
        }
        .invoice-details {
          display: flex;
          justify-content: space-between;
          margin-bottom: 30px;
          font-size: 14px;
        }
        .invoice-details div {
          flex: 1;
        }
        .invoice-details strong {
          display: block;
          margin-bottom: 5px;
        }
        .customer-info {
          margin-bottom: 30px;
          font-size: 14px;
        }
        .customer-info strong {
          display: block;
          margin-bottom: 5px;
        }
        table {
          width: 100%;
          border-collapse: collapse;
          margin-bottom: 30px;
        }
        table th {
          background-color: #f0f0f0;
          padding: 10px;
          text-align: left;
          border-bottom: 2px solid #333;
          font-weight: bold;
        }
        table td {
          padding: 10px;
          border-bottom: 1px solid #ddd;
        }
        .text-right {
          text-align: right;
        }
        .total-section {
          display: flex;
          justify-content: flex-end;
          margin-bottom: 30px;
        }
        .total-section div {
          width: 300px;
        }
        .total-row {
          display: flex;
          justify-content: space-between;
          padding: 8px 0;
          border-bottom: 1px solid #ddd;
        }
        .total-row.final {
          border: none;
          border-top: 2px solid #333;
          font-size: 18px;
          font-weight: bold;
          padding-top: 10px;
        }
        .footer {
          text-align: center;
          font-size: 12px;
          color: #666;
          margin-top: 30px;
          padding-top: 20px;
          border-top: 1px solid #ddd;
        }
      </style>
    </head>
    <body>
      <div class="header">
        <h1>INVOICE</h1>
      </div>

      <div class="invoice-details">
        <div>
          <strong>Invoice Number:</strong>
          ${invoiceNumber}
        </div>
        <div>
          <strong>Invoice Date:</strong>
          ${currentDate}
        </div>
      </div>

      <div class="customer-info">
        <strong>Bill To:</strong>
        ${name}
      </div>

      <table>
        <thead>
          <tr>
            <th>Description</th>
            <th class="text-right">Unit Price</th>
            <th class="text-right">Quantity</th>
            <th class="text-right">Amount</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>${item}</td>
            <td class="text-right">$${cost.toFixed(2)}</td>
            <td class="text-right">1</td>
            <td class="text-right">$${cost.toFixed(2)}</td>
          </tr>
        </tbody>
      </table>

      <div class="total-section">
        <div>
          <div class="total-row">
            <span>Subtotal:</span>
            <span>$${cost.toFixed(2)}</span>
          </div>
          <div class="total-row">
            <span>Tax (0%):</span>
            <span>$0.00</span>
          </div>
          <div class="total-row final">
            <span>Total:</span>
            <span>$${cost.toFixed(2)}</span>
          </div>
        </div>
      </div>

      <div class="customer-info">
        <strong>Date Purchased:</strong>
        ${datePurchased}
      </div>

      <div class="footer">
        <p>Thank you for your purchase!</p>
      </div>
    </body>
    </html>
  `;
}

// Start server
app.listen(PORT, () => {
  console.log(`Invoice generator running on http://localhost:${PORT}`);
});
