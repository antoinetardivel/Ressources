// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

document.addEventListener('turbolinks:load', function(){
    statusBarlat = true
    arrow = document.getElementById('arrow')
    arrow1 = document.getElementById('arrow1')
    arrow2 = document.getElementById('arrow2')
    arrow3 = document.getElementById('arrow3')
    barlat = document.getElementById('barlat')
    const resize = () => {
        if(!statusBarlat){
            
            if(window.innerWidth < 992){
    
                barlat.style.width = '100%'
                barlat.style.height = 'calc(100vh - 1em + 85px)'

                arrow.style.marginRight = '20px'

                arrow1.style.width = '15px'
                arrow1.style.transform = 'rotateZ(-45deg)'
    
                arrow2.style.width = '30px'
                arrow2.style.marginTop = '3px'
    
                arrow3.style.width = '15px'
                arrow3.style.transform = 'rotateZ(45deg)'
                arrow3.style.marginTop = '3px'
    
            }else{
                barlat.style.width = '500px'
                barlat.style.height = '80vh'
    
                arrow1.style.width = '15px'
                arrow1.style.transform = 'rotateZ(-45deg)'
    
                arrow2.style.width = '30px'
                arrow2.style.marginTop = '3px'
    
                arrow3.style.width = '15px'
                arrow3.style.transform = 'rotateZ(45deg)'
                arrow3.style.marginTop = '3px'
    
            }
    
        }else{

            if(window.innerWidth < 992){

                barlat.style.width = '40px'
                barlat.style.height = '40px'
    
                arrow.style.marginRight = '10px'

                arrow1.style.width = '20px'
                arrow1.style.transform = 'rotateZ(0deg)'
    
                arrow2.style.width = '20px'
                arrow2.style.marginTop = '6px'
    
                arrow3.style.width = '20px'
                arrow3.style.transform = 'rotateZ(0deg)'
                arrow3.style.marginTop = '6px'
    
            }else{

                barlat.style.width = '60px'
                barlat.style.height = '80vh'

                arrow.style.marginRight = '15px'
    
                arrow1.style.width = '30px'
                arrow1.style.transform = 'rotateZ(0deg)'
                
                arrow2.style.width = '30px'
                arrow2.style.marginTop = '6px'
    
                arrow3.style.width = '30px'
                arrow3.style.transform = 'rotateZ(0deg)'
                arrow3.style.marginTop = '6px'
    
            }
        }
    }
    resize()
    arrow.addEventListener('click', () =>{
        if(!statusBarlat){
            statusBarlat = true
        }else{
            statusBarlat = false
        }
        resize()
    })
    window.addEventListener('resize', () => {
        resize()
    })
});