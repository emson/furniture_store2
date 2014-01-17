var transformProp = Modernizr.prefixed('transform');
function Carousel3D(el){this.e=el;this.r=0;this.pC=$('#carousel img').length;this.theta=360/this.pC;this.count=0}
Carousel3D.prototype.transform=function(){this.e.style[transformProp]='translateZ(-'+this.rad+'px)'+'rotateY'+'('+this.r+'deg)'};
Carousel3D.prototype.modify=function(){
	this.pS = this.e['offsetWidth'];
	this.rad = Math.round((this.pS/2)/Math.tan(Math.PI/this.pC));
	for(var i=0;i<this.pC;i++){this.e.children[i].style[transformProp]='rotateY'+'('+this.theta*i+'deg) translateZ('+this.rad+'px)'}
	this.r=Math.round(this.r/this.theta)*this.theta;
	this.transform();
};
Carousel3D.prototype.page=function(){this.count++;if(this.count>this.pC-1)this.count=0;$('.paging span').removeClass();$('#a'+this.count).addClass('current')}



var init = function() {
	if($I('carousel')){
		cs = new Carousel3D($I('carousel'))
		doRotate = function(){cs.r+=cs.theta*-1;cs.transform();cs.page()};
		for(var i=0;i<cs.pC;i++){$('.paging').append('<span id="a'+i+'">')};$('#a0').addClass('current');
		cs.modify();
		var callDoRotate=setInterval( function(){doRotate()}, 3000);      
		$('.container').on('mouseover',function(){clearInterval(callDoRotate)})
		$('.container').on('mouseout',function(){callDoRotate=setInterval( function(){doRotate()}, 3000)})     
		$('body').addClass('ready')
	}
	if($I('catimg')){
		$('#linklist a').on('mouseover',function(e){var imag=$(e.target).data('src');$('#catimg').attr('src','/images/'+imag)})
	}
}
$(document).ready(function(){init()})			
$(window).bind('resizeEnd', function() {if($I('carousel')){cs.modify()}});
