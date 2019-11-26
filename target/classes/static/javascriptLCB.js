// Menu caché
function openNav() {
	  document.getElementById("mySidenav").style.width = "250px";
	  $("#bouton_connexion").show();
	  // sert a aller récuperer en cache l'info de connexion //
	    let user = sessionStorage.getItem('Mail')
	    if ( user == null){
	        $("#bouton_deconnexion").hide();               
	    }
	    else {
	        $("#bouton_connexion").hide();
	        if ($("#pseudo").length == 0){
	            getPseudo();
	        }
	    }
	}
	function closeNav() {
	  document.getElementById("mySidenav").style.width = "0";
	}

/*  	
// Affiche onclick le menu deroulant connexion/favoris/etc
function displayMenu(){
    $("#menu_navigation").toggle();
    $("#bouton_connexion").show();
    // sert a aller récuperer en cache l'info de connexion //
    let user = sessionStorage.getItem('Mail')
    if ( user == null){
        $("#bouton_deconnexion").hide();               
    }
    else {
        $("#bouton_connexion").hide();
        if ($("#pseudo").length == 0){
            getPseudo();
        }
    }
};
*/

// fonction vérifiant la connexion en cas de click sur le menu favori et recette. 
//Si l'user n'est pas connecté, une redirection vers la page de connexion se produit //
function update(url){
    let pseudo = sessionStorage.getItem('Mail');
    connection(pseudo, url);
    }
function connection(pseudo, url){
    if (pseudo == null){
        document.location.href="connexion.html";
    }
    else{
        document.location.href=""+url+".html";
        }
    }

// Supprime les informations de connexion du cache //
function deconnexion(){
    sessionStorage.clear();
    closeNav();
    $("#pseudo").remove();
    location.href = 'index.html';
    }

// Fonction barre de recherche //
function search() {
    let recherche = $("#search").val();
        $.ajax({
            url: "http://localhost:8080/recette/search",
            headers: { "lib": recherche },
            type: 'GET',
            dataType: "json",
            timeout: 15000
            }).done(
                function (data) {              
                    $("#card-deck").empty();
                    for (let i=0; i < data.length;i++){
                        
                        $("#card-deck").append('<div class="card" style="width: 20rem;"><img class="card-img-top" id="image'+i+'" alt="Card image cap"><div class="card-body"><h5 class="card-title text-center">'+data[i].lib+'</h5><p class="card-text text-justify">'+data[i].instruction+'</p></div><div class="card-body"><a href="#" class="card-link text-center">Voir la recette</a></div></div>');
                        $("#image"+i).attr("src", "data:image/png;base64,"+data[i].image+"");
                    }
                });                    
                }

// Va chercher les 3 premières recettes dans la db et les affiche//
function image() {
    $.ajax({
        url: "http://localhost:8080/recette/homePageRecette",
        type: 'GET',
        dataType: "json",
        timeout: 15000
                   }).done(
                       function (data) {
                           for (let i = 0; i < data.length; i++) {
                               document.getElementById("image"+i+"").src="data:image/png;base64,"+data[i].image+"";
                               document.getElementById("title"+i+"").textContent=""+data[i].lib+"";
                               document.getElementById("text"+i+"").textContent=""+data[i].instruction+"";
                           }
                       });                           
                   }

// va chercher le pseudo de l'utilisateur quand il est connecté //
function getPseudo() {
    let tempMail = sessionStorage.getItem('Mail');
    let tempPassword = sessionStorage.getItem('Password');
                       
    $.ajax({ 
        url: "http://localhost:8080/utilisateur/connexion", 
        headers: { "mail" : tempMail , "password" : tempPassword},
        type: 'GET',
        dataType:"json",
        timeout: 15000
            }).done(
                    function(data) { 
                        $("#mySidenav").prepend("<p id='pseudo'>Bienvenue "+data.pseudo+"");
                    });
}

function onloadUserRecette() {
    $.ajax({
        url: "http://localhost:8080/recette/userRecette",
        headers: { "mail": sessionStorage.getItem('Mail'), "password": sessionStorage.getItem('Password') },
        type: 'GET',
        dataType: "json",
        timeout: 15000
    }).done(
        function (data) {
            $("#card-deck").empty();
            for (let i=0; i < data.length;i++){
                $("#card-deck").append('<div class="card" style="width: 20rem;"><img class="card-img-top" id="image'+i+'" alt="Card image cap"><div class="card-body"><h5 class="card-title text-center">'+data[i].lib+'</h5><p class="card-text text-justify">'+data[i].instruction+'</p></div><div class="card-body"><a href="#" class="card-link text-center">Voir la recette</a></div></div>');
                $("#image"+i).attr("src", "data:image/png;base64,"+data[i].image+"");
            }
            }
        );
      }

function onloadUserFavoris() {
    $.ajax({
        url: "http://localhost:8080/recette/userFavoris",
        headers: { "mail": sessionStorage.getItem('Mail'), "password": sessionStorage.getItem('Password') },
        type: 'GET',
        dataType: "json",
        timeout: 15000
        }).done(
            function (data) {
              $("#card-deck").empty();
                  for (let i=0; i < data.length;i++){
                      $("#card-deck").append('<div class="card" style="width: 20rem;"><img class="card-img-top" id="image'+i+'" alt="Card image cap"><div class="card-body"><h5 class="card-title text-center">'+data[i].lib+'</h5><p class="card-text text-justify">'+data[i].instruction+'</p></div><div class="card-body"><a href="#" class="card-link text-center">Voir la recette</a></div></div>');
                      $("#image"+i).attr("src", "data:image/png;base64,"+data[i].image+"");
                  }
            });
          }