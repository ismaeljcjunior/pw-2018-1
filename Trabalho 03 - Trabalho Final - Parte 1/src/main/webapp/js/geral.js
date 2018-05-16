 //funcao chamada no clicks de links para mudar a view carregada
function mudarRota(){
    if(this.dataset.ref){
        loadNewFileToMain(this.dataset.ref,mudarRota);   
    }else{
        console.error('Não foi especificado nenhum arquivo para corregar');
    }
}

//carrega nova view dentro de main
function loadNewFileToMain(fileRef, mudarRota){
    var $main = $("#content");
    $main.load('./' + fileRef + ".html", function(){
        $main.children('a.routerLink').on('click',mudarRota);
    })
}

//configurando evento dos elementos a para carregar pagina referenciada por eles
$("a.routerLink").on('click',mudarRota);


//primeira view será app.html
loadNewFileToMain('home',mudarRota);