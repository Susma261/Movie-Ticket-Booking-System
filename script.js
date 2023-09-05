const numRows = 6; 
const numCols = 8; 

const seatsContainer = document.querySelector('.seats');
const selectedSeatsList = document.getElementById('selected-seats-list');
const totalPrice = document.getElementById('total-price');
const bookButton = document.getElementById('book-button');
const printButton = document.getElementById('print-button');

const ticketPrices = {
    standard: 150.00,
    premium: 250.00,
    vip: 300.00,
};

const seatStatus = new Array(numRows).fill(null).map(() => new Array(numCols).fill(false));

const seatTypes = new Array(numRows).fill(null).map(() => new Array(numCols).fill('standard'));

function createSeatArrangement() {
    for (let row = 0; row < numRows; row++) {
        for (let col = 0; col < numCols; col++) {
            const seat = document.createElement('div');
            seat.className = 'seat standard';
            seat.textContent = String.fromCharCode(65 + row) + (col + 1); // A1, A2, A3, ...
            seat.addEventListener('click', () => toggleSeat(row, col));
            seatsContainer.appendChild(seat);
        }
    }
}

function toggleSeat(row, col) {
    seatStatus[row][col] = !seatStatus[row][col];
    const seat = document.querySelector(`.seats > div:nth-child(${row * numCols + col + 1})`);
    seat.classList.toggle('selected');
    updateSelectedSeatsList();
}

function updateSelectedSeatsList() {
    selectedSeatsList.innerHTML = '';
    let totalPriceValue = 0.00;

    for (let row = 0; row < numRows; row++) {
        for (let col = 0; col < numCols; col++) {
            if (seatStatus[row][col]) {
                const seatType = seatTypes[row][col];
                const seatLabel = String.fromCharCode(65 + row) + (col + 1);
                const listItem = document.createElement('li');
                listItem.textContent = `${seatLabel} (${seatType}) - $${ticketPrices[seatType].toFixed(2)}`;
                selectedSeatsList.appendChild(listItem);
                totalPriceValue += ticketPrices[seatType];
            }
        }
    }

    totalPrice.textContent = totalPriceValue.toFixed(2);
    updateBookButton();
}

function updateBookButton() {
    const selectedSeats = seatStatus.flat().filter(status => status).length;
    bookButton.disabled = selectedSeats === 0;
    printButton.disabled = selectedSeats === 0;
}

function openPrintPage() {
    const printWindow = window.open('', '_blank');
    const htmlToPrint = `
        <html>
        <head>
            <title>Print Tickets</title>
        </head>
        <body>
            <h2>Booking Details</h2>
            <p>Selected Seats:</p>
            <ul>${selectedSeatsList.innerHTML}</ul>
            <p>Total Price: $${totalPrice.textContent}</p>
        </body>
        </html>
    `;

    printWindow.document.open();
    printWindow.document.write(htmlToPrint);
    printWindow.document.close();
    printWindow.print();
}

createSeatArrangement();

bookButton.disabled = true;
printButton.disabled = true;

bookButton.addEventListener('click', () => alert('Booking logic goes here'));
printButton.addEventListener('click', openPrintPage);




function generateQRCode(text) {
    const qr = qrcode(4, 'L');
    qr.addData(text); 
    qr.make();

    const qrCodeElement = document.createElement('img');
    qrCodeElement.src = qr.createDataURL(4); 
    qrCodeElement.alt = 'QR Code';

    return qrCodeElement;
}

