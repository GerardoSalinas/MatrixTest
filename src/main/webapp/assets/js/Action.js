/**
 * @Author Emilio.Molina@unah.hn
 * @version 0.1.0
 * @date  2024/02/25
 * @since 2024/02/21
 */

 class Action{
	 constructor(){
		 
	 }
	 createDivs (amount){
		 
		 let list = [];
		 
		 while(amount>0){
			 
			 list.push("<div></div>");
			 amount--;
		 }
		 return list.join("");
	 }
	 
	 paint(event){
		 let me = this;
		 
		 me.style.backgroundColor = "blue";
	 }
	 
	 
	 send (pixels, inputPixels, event){// inputPixles en lugar de inputPixels
		 
		 let form = this;
		 let list = [];
		 
		 for(let pixel of pixels){
			 
			 if (pixel.style.backgroundColor === ""){ 
				 list.push(0);
				 
			 }else{
				 list.push(1);
				 
			 }
			 /*inputPixels.value = list.join("");
		 	 form.submit(); se esta enviando el formulario multiples vecez
		 	 porque esta dentro del ciclo*/ 
		 }
		 inputPixels.value = list.join("");
	 	 form.submit();
		 
		 
	 }
 }
