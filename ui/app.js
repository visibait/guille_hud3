$(function(){

    window.addEventListener("message", function(event){

        if (event.data.swim == false) {
            var selector = document.querySelector(".o2")
            selector.style = "display:none;"
            
        }

        if (event.data.swim == true) {
            var selector = document.querySelector(".o2")
            selector.style = "display:block;"    
        }

        if (event.data.stress == false) {
            var selector = document.querySelector(".stress")
            selector.style = "display:none;"
            
        }

        if (event.data.stress == true) {
            var selector = document.querySelector(".stress")
            selector.style = "display:block;"    
        }

        $(".vida-b").css("height", (event.data.vida) + "%");
        $(".escudo-b").css("height", (event.data.escudito) + "%");
        $(".agua-b").css("height", (event.data.bebida) + "%");
        $(".comida-b").css("height", (event.data.comida) + "%");
        $(".comida-b").css("height", (event.data.comida) + "%");
        $(".o2-b").css("height", (event.data.o2) + "%");
        $(".stress-b").css("height", (event.data.stressval) + "%");
        

           
    })
        
})
