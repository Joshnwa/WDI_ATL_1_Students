var total = 0;

$('#entry').submit(submitForm);

function submitForm (event) {
    event.preventDefault();

    var item = $('#newEntry').val();
    item = parseFloat(item);

    var html = '<tr><td></td><td>';
    html += formatCurrency(item) + '</td></tr>';

    $('#entries').append(html);

    total += item;

    $('#newEntry').val('');
    $('#total').html( formatCurrency(total) );
}

function formatCurrency (value) {
    value = value.toFixed(2);
    return '$' + value;
}