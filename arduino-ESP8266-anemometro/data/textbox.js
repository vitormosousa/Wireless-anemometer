
	var speed =0;
	function updateText(event) {
		//var x = document.getElementById("title").innerHTML;
		drawText(speed, 10, 10, 60, 40);
		var y= event.keyCode;
		if (y== 13){
			textRect(speed, 10, 10, 60, 40);
			console.log("a");
		} else {
			console.log("b");
		}
		
	}		
		
	function drawRoundRect(x, y, w, h, radius)
	{
	  var canvas = document.getElementById("canvas6");
	  var context = canvas.getContext("2d");
	  var r = x + w;
	  var b = y + h;
	  context.beginPath();
	  
	  context.lineWidth="5";
	  context.moveTo(x+radius, y);
	  context.lineTo(r-radius, y);
	  context.quadraticCurveTo(r, y, r, y+radius);
	  context.lineTo(r, y+h-radius);
	  context.quadraticCurveTo(r, b, r-radius, b);
	  context.lineTo(x+radius, b);
	  context.quadraticCurveTo(x, b, x, b-radius);
	  context.lineTo(x, y+radius);
	  context.quadraticCurveTo(x, y, x+radius, y);
	  context.fillStyle='#d9d9d9';
	  context.fill();
	  context.strokeStyle="#666666";
	  context.stroke();
	}
	
	function drawText( texto, x, y, w, h)
	{
		var canvas = document.getElementById("canvas6");
		var ctx = canvas.getContext("2d");
		ctx.fillStyle="#d9d9d9";
		ctx.fillRect(x+50, y+10, w-20, h-20);
		ctx.font = "30px Comic Sans MS";
		ctx.fillStyle = "#666666";
		ctx.textAlign = "center";
		ctx.fillText(texto, x+20+w/2, y+10+h/2);

	}
	
	//roundRect(10, 10, 100, 40, 20);

