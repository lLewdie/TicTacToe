var currentPlayer = 'X';

function boxClick(box) {
    if (box.value === '') {
        box.value = currentPlayer;
        checkWinner();
        currentPlayer = (currentPlayer === 'X') ? 'O' : 'X';
        document.getElementById('turnIndicator').innerText = "It's " + currentPlayer + "'s turn";
        document.getElementById('message').innerText = '';
    } else {
        document.getElementById('message').innerText = 'Invalid move. The space is already taken.';
    }
}

function checkWinner() {
    var boxes = document.getElementsByClassName('grid-box');
    var values = [];
    for (var i = 0; i < boxes.length; i++) {
        values.push(boxes[i].value);
    }

    // Check rows, columns, and diagonals for a win
    if (checkLine(0, 1, 2) || checkLine(3, 4, 5) || checkLine(6, 7, 8) ||
        checkLine(0, 3, 6) || checkLine(1, 4, 7) || checkLine(2, 5, 8) ||
        checkLine(0, 4, 8) || checkLine(2, 4, 6)) {
        document.getElementById('message').innerText = currentPlayer + ' wins!';
        resetBoard();
    } else if (values.every(value => value !== '')) {
        document.getElementById('message').innerText = 'It\'s a draw!';
        resetBoard();
    }
}

function checkLine(a, b, c) {
    var boxes = document.getElementsByClassName('grid-box');
    return boxes[a].value !== '' && boxes[a].value === boxes[b].value && boxes[a].value === boxes[c].value;
}

function resetBoard() {
    var boxes = document.getElementsByClassName('grid-box');
    for (var i = 0; i < boxes.length; i++) {
        boxes[i].value = '';
    }
    currentPlayer = 'X';
    document.getElementById('turnIndicator').innerText = "It's X's turn";
}
