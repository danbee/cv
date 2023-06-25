(function() {
  var canvas, colour, colours, context, i, len, offset, results;
  canvas = document.getElementById("colours");
  context = canvas.getContext("2d");
  colours = [
    "hsl(28, 100%, 48%)",
    "hsl(69, 100%, 43%)",
    "hsl(200, 100%, 50%)",
    "hsl(278, 100%, 60%)",
  ];
  offset = 0;
  results = [];

  for (i = 0, len = colours.length; i < len; i++) {
    colour = colours[i];
    context.fillStyle = colour;
    context.fillRect(offset, 0, 72, 12);
    results.push((offset += 72));
  }

  return results;
}).call(this);
