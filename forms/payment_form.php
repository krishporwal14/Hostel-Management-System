<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fees Form</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
    <link rel="stylesheet" href="./styles/style.css">
    <link rel="icon" type="image/x-icon" href="../favicon.ico">
    <script>
        function submitPaymentForm(event) {
            event.preventDefault();

            const email = document.getElementById('email').value;
            const cardName = document.getElementById('cardname').value;
            const cardNumber = document.getElementById('cardnumber').value;
            const cvv = document.getElementById('cvv').value;
            const amount = document.getElementById('amount').value;

            // Basic validation
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                alert("Invalid email address.");
                return;
            }
            if (cardNumber.length !== 16 || isNaN(cardNumber)) {
                alert("Card number must be 16 digits.");
                return;
            }
            if (cvv.length !== 3 || isNaN(cvv)) {
                alert("CVV must be 3 digits.");
                return;
            }

            // Populate the receipt section with payment details
            document.getElementById('receiptEmail').innerText = email;
            document.getElementById('receiptCardName').innerText = cardName;
            document.getElementById('receiptCardNumber').innerText = '**** **** **** ' + cardNumber.slice(-4);
            document.getElementById('receiptAmount').innerText = amount + ' Rupees';
            document.getElementById('receiptDate').innerText = new Date().toLocaleString();
            // Show the receipt section and download button
            document.getElementById('paymentReceiptSection').classList.remove('hidden');
            sendMail(email, amount, cardNumber);
        }

        function prepareEmailForm() {
            document.getElementById('hiddenEmail').value = document.getElementById('receiptEmail').innerText;
            document.getElementById('hiddenAmount').value = document.getElementById('receiptAmount').innerText.split(' ')[0]; // Extract amount
            document.getElementById('hiddenCardNumber').value = document.getElementById('receiptCardNumber').innerText.replace('**** **** **** ', ''); // Extract last 4 digits
        }


        function downloadPDF() {
            const name = document.getElementById('receiptCardName').innerText;
            const receiptContent = document.getElementById('downloadSection');

            html2pdf().from(receiptContent).set({
                margin: 1,
                filename: name + '_receipt.pdf',
                html2canvas: {
                    scale: 2
                },
                jsPDF: {
                    unit: 'in',
                    format: 'letter',
                    orientation: 'portrait'
                }
            }).save();
        }
    </script>
</head>

<body>
    <div class="text-white"><?php require('../nav.php') ?></div>
    <div class="min-h-screen bg-neutral-950 text-white pt-5">
        <div class="bg-zinc-800 mx-auto p-4 rounded-lg container">
            <div class="flex justify-between items-center">
                <h2 class="text-2xl font-bold">Pay Fees</h2>
                <a onclick="history.back()">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="4" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 19.5 3 12m0 0 7.5-7.5M3 12h18" />
                    </svg>
                </a>
            </div>
            <form action="#" id="paymentForm" method="POST" class="flex flex-col max-w rounded px-8 pt-6 pb-2" onsubmit="submitPaymentForm(event)">
                <!-- Form Fields -->
                <div class="grid grid-cols-2 gap-5 mb-4">
                    <div>
                        <label for="email" class="block text-white text-md font-bold mb-1">Email:</label>
                        <input type="email" id="email" name="email" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Email">
                    </div>
                    <div>
                        <label for="cardname" class="block text-white text-md font-bold mb-1">Card Name:</label>
                        <input type="text" id="cardname" name="cardname" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Card Name">
                    </div>
                </div>
                <!-- Additional Fields -->
                <div class="mb-4">
                    <label for="cardnumber" class="block text-white text-md font-bold mb-1">Card Number:</label>
                    <input type="number" id="cardnumber" name="cardnumber" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Card Number">
                </div>
                <div class="grid grid-cols-2 gap-5 mb-4">
                    <div>
                        <label for="expiry_date" class="block text-white text-md font-bold mb-1">Expiry Date:</label>
                        <input type="date" id="expiry_date" name="expiry_date" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline">
                    </div>
                    <div>
                        <label for="cvv" class="block text-white text-md font-bold mb-1">CVV:</label>
                        <input type="number" id="cvv" name="cvv" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter CVV Number">
                    </div>
                </div>
                <div class="mb-4">
                    <label for="amount" class="block text-white text-md font-bold mb-1">Amount:</label>
                    <input type="number" id="amount" name="amount" class="bg-black shadow appearance-none rounded-lg w-full py-3 px-4 text-white focus:outline-none focus:shadow-outline" placeholder="Enter Amount">
                </div>
                <div>
                    <button type="submit" class="bg-cyan-800 hover:bg-cyan-900 text-white w-full font-bold py-3 px-4 rounded-lg focus:outline-none focus:shadow-outline">Pay Fees</button>
                </div>
            </form>

            <!-- Payment Receipt Section -->
            <div id="paymentReceiptSection" class="hidden bg-white text-black rounded-lg p-6 mt-8">
                <div id="downloadSection">
                    <h2 class="text-2xl font-bold mb-4">Payment Receipt</h2>
                    <p><strong>Email:</strong> <span id="receiptEmail"></span></p>
                    <p><strong>Cardholder Name:</strong> <span id="receiptCardName"></span></p>
                    <p><strong>Card Number:</strong> <span id="receiptCardNumber"></span></p>
                    <p><strong>Amount Paid:</strong> <span id="receiptAmount"></span></p>
                    <p><strong>Date:</strong> <span id="receiptDate"></span></p>
                </div>
                <button onclick="downloadPDF()" class="mt-4 bg-cyan-800 text-white px-4 py-2 rounded">Download PDF</button>
                <!-- Email Confirmation Button -->
                <form action="mail.php" method="POST">
                    <input type="hidden" name="email" id="hiddenEmail">
                    <input type="hidden" name="amount" id="hiddenAmount">
                    <input type="hidden" name="cardnumber" id="hiddenCardNumber">
                    <button type="submit" onclick="prepareEmailForm()" class="mt-4 bg-cyan-800 text-white px-4 py-2 rounded">
                        Email Confirmation
                    </button>
                </form>

            </div>
        </div>

        <?php require("../footer.php"); ?>
    </div>
    <script src="../scripts/script.js"></script>
</body>

</html>