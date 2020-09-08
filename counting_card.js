var count = 0;

function cc(card) {
  switch (card) {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      count++;
      break;
    case "J":
    case "Q":
    case "K":
    case "A":
    case 10:
      count--;
      break;
  }

  var holdBet = "Hold";
  if (count > 0) {
    holdBet = "Bet";
  }

  return count + " " + holdBet;
}

cc(2);
cc(3);
cc(7);
cc("K");
cc("A");
