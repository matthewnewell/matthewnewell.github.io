---
layout: default
title: Projects
---

#[CMMI Club](http://www.cmmi.club) 
[CMMI.Club](http://www.cmmi.club)

The Capability Maturity Model Integrated (CMMI) is a collection of best practices that help organizations to improve their processes. Process enables leveraging of resources and provides a way to incorporate knowledge of how to do things better.

<insert_d3>
</insert_d3>
My plan with CMMI.club is to create project accounts where organizations can maintain appraisal evidence online. Eventually, I would like to enable organizations to establish and maintain policy that traces directly to the CMMI standard from within the site. 

This would significantly lower the cost of CMMI appraisals and organizational policy compliance. 

If CMMI compliance appraisals remain relevant (current implementations are expensive and provide marginal value), the CMMI.club might have a bright future.

*The animation is from Mike Bostok's d3.js [bl.ocks.org](www.bl.ocks.org)*


<style>

insert_d3 {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  width: 400px;
  height: 320px;
  position: relative;
}

form {
  position: absolute;
  top: 1em;
  left: 1em;
}

path {
  fill-rule: evenodd;
  stroke: #333;
  stroke-width: 2px;
}

.sun path {
  fill: #6baed6;
}

.planet path {
  fill: #9ecae1;
}

.annulus path {
  fill: #c6dbef;
}

</style>

<script src="d3/d3.v3.js"></script>
<script>

var width = 400,
    height = 380,
    radius = 80,
    x = Math.sin(2 * Math.PI / 3),
    y = Math.cos(2 * Math.PI / 3);

var offset = 0,
    speed = 2,
    start = Date.now();

var svg = d3.select("insert_d3").append("svg")
    .attr("width", width)
    .attr("height", height)
  .append("g")
    .attr("transform", "translate(" + width / 2 + "," + height / 2 + ")scale(.55)")
  .append("g");

var frame = svg.append("g")
    .datum({radius: Infinity});

frame.append("g")
    .attr("class", "annulus")
    //.datum({teeth: 80, radius: -radius * 5, annulus: true})
  .append("path")
    .attr("d", gear);

frame.append("g")
    .attr("class", "sun")
    .datum({teeth: 32, radius: radius * 2})
  .append("path")
    .attr("d", gear);

frame.append("g")
    .attr("class", "planet")
    .attr("transform", "translate(0,-" + radius * 3 + ")")
    .datum({teeth: 16, radius: -radius * 1})
  .append("path")
    .attr("d", gear);

frame.append("g")
    .attr("class", "planet")
    .attr("transform", "translate(" + -radius * 3 * x + "," + -radius * 3 * y + ")")
    .datum({teeth: 16, radius: -radius * 1})
  .append("path")
    .attr("d", gear);

frame.append("g")
    .attr("class", "planet")
    .attr("transform", "translate(" + radius * 3 * x + "," + -radius * 3 * y + ")")
    .datum({teeth: 16, radius: -radius * 1})
  .append("path")
    .attr("d", gear);

frame.append("g")
    .append("text")
    .text("Process")
    .attr("x", "-85")
    .attr("y", "-40")
    .attr("font-size", "50px");

frame.append("g")
    .append("text")
    .text("Procedures")
    .attr("x", "-50")
    .attr("y", "-270")
    .attr("font-size", "20px");

frame.append("g")
    .append("text")
    .text("People")
    .attr("x", "-240")
    .attr("y", "165")
    .attr("font-size", "20px");

frame.append("g")
    .append("text")
    .text("Tools")
    .attr("x", "185")
    .attr("y", "165")
    .attr("font-size", "20px");


d3.selectAll("input[name=reference]")
    .data([radius * 5, Infinity, -radius])
    .on("change", function(radius1) {
      var radius0 = frame.datum().radius, angle = (Date.now() - start) * speed;
      frame.datum({radius: radius1});
      svg.attr("transform", "rotate(" + (offset += angle / radius0 - angle / radius1) + ")");
    });

d3.selectAll("input[name=speed]")
    .on("change", function() { speed = +this.value; });

function gear(d) {
  var n = d.teeth,
      r2 = Math.abs(d.radius),
      r0 = r2 - 8,
      r1 = r2 + 8,
      r3 = d.annulus ? (r3 = r0, r0 = r1, r1 = r3, r2 + 20) : 20,
      da = Math.PI / n,
      a0 = -Math.PI / 2 + (d.annulus ? Math.PI / n : 0),
      i = -1,
      path = ["M", r0 * Math.cos(a0), ",", r0 * Math.sin(a0)];
  while (++i < n) path.push(
      "A", r0, ",", r0, " 0 0,1 ", r0 * Math.cos(a0 += da), ",", r0 * Math.sin(a0),
      "L", r2 * Math.cos(a0), ",", r2 * Math.sin(a0),
      "L", r1 * Math.cos(a0 += da / 3), ",", r1 * Math.sin(a0),
      "A", r1, ",", r1, " 0 0,1 ", r1 * Math.cos(a0 += da / 3), ",", r1 * Math.sin(a0),
      "L", r2 * Math.cos(a0 += da / 3), ",", r2 * Math.sin(a0),
      "L", r0 * Math.cos(a0), ",", r0 * Math.sin(a0));
  path.push("M0,", -r3, "A", r3, ",", r3, " 0 0,0 0,", r3, "A", r3, ",", r3, " 0 0,0 0,", -r3, "Z");
  return path.join("");
}

d3.timer(function() {
  var angle = (Date.now() - start) * speed,
      transform = function(d) { return "rotate(" + angle / d.radius + ")"; };
  frame.selectAll("path").attr("transform", transform);
  frame.attr("transform", transform); // frame of reference
});

</script>
