class RoundBox {

	constructor ( canvas, nChar ){
		this._canvas = document.getElementById(canvas);
		this._ctx = this._canvas.getContext("2d");
		this._nChar = nChar;
		this._x = 0;
		this._y = 0;
		this._l = 20*nChar;
		this._w = 50 ;
		this._r = this._w/4;
	}

	draw(){
		var x1 = this._x + this._l;
		var y1 = this._y + this._w;
		var radius = this._r;
		this._ctx.beginPath();

		this._ctx.lineWidth="5";
		this._ctx.moveTo(this._x+radius, this._y);
		this._ctx.lineTo(x1-radius, this._y);
		this._ctx.quadraticCurveTo(x1, this._y, x1, this._y+radius);
		this._ctx.lineTo(x1, this._y+this._w-radius);
		this._ctx.quadraticCurveTo(x1, y1, x1-radius, y1);
		this._ctx.lineTo(this._x+radius, y1);
		this._ctx.quadraticCurveTo(this._x, y1, this._x, y1-radius);
		this._ctx.lineTo(this._x, this._y+radius);
		this._ctx.quadraticCurveTo(this._x, this._y, this._x+radius, this._y);
		this._ctx.fillStyle='#d9d9d9';
		this._ctx.fill();
		this._ctx.strokeStyle="#666666";
		this._ctx.stroke();	
	}
	
	setPosition( x, y){
		this._x = x;
		this._y = y;
	}
	
	setDimension ( l , w) {
		this._l = l;
		this._w = w ;
		this._r = this._w/4;
	}
	
	update( valor ){
		
		this._ctx.fillStyle="#d9d9d9";
		this._ctx.fillRect(this._x+this._r, this._y+this._r, this._l-2*this._r, this._w-2*this._r);
		this._ctx.font = "30px Comic Sans MS";
		this._ctx.fillStyle = "#666666";
		this._ctx.textAlign = "center";
		this._ctx.fillText(valor, this._x+this._l/2, this._y+this._w/2+15-this._ctx.lineWidth);
		
	}

	
}
