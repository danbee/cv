if navigator.userAgent.match(/iPhone/i) or navigator.userAgent.match(/iPad/i)
  viewportmeta = document.querySelectorAll("meta[name=\"viewport\"]")[0]
  if viewportmeta
    viewportmeta.content = "width=device-width, minimum-scale=1.0, maximum-scale=1.0"
    document.body.addEventListener "gesturestart", (->
      viewportmeta.content = "width=device-width, minimum-scale=0.25, maximum-scale=1.6"
    ), false

$ ->
  canvas = document.getElementById("colours")
  context = canvas.getContext("2d")
  colours = ['#FF5579', '#8ED600', '#00BAEB']
  offset = 0
  for colour in colours
    context.fillStyle = colour
    context.fillRect(offset, 0, 48, 12)
    offset += 48
