$(".button").click(function(){
        var total_player = $('#total_player').val();
        $(".grid").empty();
    $.post("api.php",
    {
        total_player: total_player
    },
      function(data,status){
        if(data.response_code === 200){
        var i = 0;
        var row = 0;
        $(".grid").append('<hr>');
        $.each(data.players , function(index, val) { 
            if(index % 4 === 0 || row === 0){
                row++;
                $(".grid").append('<div class="row row_'+row+'"></div>');  
            }
            var player = index;
            $(".row_"+row).append('<div class="col-sm"><div class="card mb-3" style="width: 25rem;"><h5 class="card-header"> Player '  + player + '</h5><div class="card-body"><div class="player_'  + player + '"></div></div><div class="card-footer"><p class="card-text">' + val.cards +'</p></div></div></div>');
            $.each(val.cards, function(index, value) {
            $(".player_"+player).append('<img src="./assets/cards/'+value+'.png" class="card-img">');
            });
           

            i++;

        });

    } else {

        $(".grid").append('<div class="alert alert-danger" role="alert">'+ data.response_desc +'</div>');
    }
    });
});
  