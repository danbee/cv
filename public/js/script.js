(function() {
  var viewportmeta;

  if (navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i)) {
    viewportmeta = document.querySelectorAll("meta[name=\"viewport\"]")[0];
    if (viewportmeta) {
      viewportmeta.content = "width=device-width, minimum-scale=1.0, maximum-scale=1.0";
      document.body.addEventListener("gesturestart", (function() {
        return viewportmeta.content = "width=device-width, minimum-scale=0.25, maximum-scale=1.6";
      }), false);
    }
  }

  $(function() {
    var canvas, colour, colours, context, offset, _i, _len, _results;

    canvas = document.getElementById("colours");
    context = canvas.getContext("2d");
    colours = ['#FF6205', '#8ED600', '#00BAEB'];
    offset = 0;
    _results = [];
    for (_i = 0, _len = colours.length; _i < _len; _i++) {
      colour = colours[_i];
      context.fillStyle = colour;
      context.fillRect(offset, 0, 72, 12);
      _results.push(offset += 72);
    }
    return _results;
  });

}).call(this);
