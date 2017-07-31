var itemArray = [0, 0, 0, 0, 0];

var priceArray = [0, 0, 0, 0, 0];

function addDetroitBlend() {
    priceArray[0] += 1.49;
    itemArray[0]++;
    subTotal();
}

function addCappuccino() {
    priceArray[1] += 2.24;
    itemArray[1]++;
    subTotal();
}

function addCaramelMacc() {
    priceArray[2] += 3.99;
    itemArray[2]++;
    subTotal();
}

function addIcedCoffee() {
    priceArray[3] += 2.49;
    itemArray[3]++;
    subTotal();
}

function addScone() {
    priceArray[4] += 1.99;
    itemArray[4]++;
    subTotal();
}

function subTotal() {

    var sum = 0;

    for (var i = 0; i < priceArray.length; i++) {
        sum = sum + priceArray[i];
    }

    if (itemArray[0] > 0) {
        document.getElementsByClassName("showBlend")[0].innerHTML = (itemArray[0] + " Detroit Blend -- " + priceArray[0]);
    }
    if (itemArray[1] > 0) {
        document.getElementsByClassName("showCapp")[0].innerHTML = (itemArray[1] + " Cappuccino -- " + priceArray[1]);
    }
    if (itemArray[2] > 0) {
        document.getElementsByClassName("showMacc")[0].innerHTML = (itemArray[2] + " Caramel Macchiatto -- " + priceArray[2]);
    }
    if (itemArray[3] > 0) {
        document.getElementsByClassName("showIced")[0].innerHTML = (itemArray[3] + " Iced Coffee -- " + priceArray[3]);
    }
    if (itemArray[4] > 0) {

        document.getElementsByClassName("showScone")[0].innerHTML = (itemArray[4] + "Scone -- " + priceArray[4]);
    }

    document.getElementsByClassName("showSubtotal")[0].innerHTML = ("Sub-total: " + sum.toFixed(2));

}
function checkOut() {
    var sum = 0;

    for (var i = 0; i < priceArray.length; i++) {
        sum = sum + priceArray[i];
    }
    var total = (sum * 1.06);
    var finalPrice = total.toFixed(2);

    alert("This completes your order.\nSubtotal: " + sum.toFixed(2) + "\nYour total bill with tax is: " + finalPrice)
}
