const urlParams = new URLSearchParams(window.location.search);
const bookingReference = urlParams.get('bookingReference');


const bookingDetails = "You have successfully booked seats: A1, A2, A3";

const bookingInfo = document.querySelector('.booking-info');
if (bookingReference && bookingDetails) {
    const bookingDetailsParagraph = document.createElement('p');
    bookingDetailsParagraph.textContent = `Booking Reference: ${bookingReference}\n${bookingDetails}`;
    bookingInfo.appendChild(bookingDetailsParagraph);
}
