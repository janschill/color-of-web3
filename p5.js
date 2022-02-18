// load web3-hex.txt as colors

function setup() {
  createCanvas(1500, 1500);
}

function draw() {
  background(225);
  let colorIndex = 0;
  let x = 10;
  let y = 10;

  noStroke();
  for (let i = 0; i < 100; i++) {
    for (let j = 0; j < 100; j++) {
      fill(colors[colorIndex]);
      colorIndex++;
      circle(x, y, 10);
      y += 10;
    }
    y = 10;
    x += 10;
  }
}
