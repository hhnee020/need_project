
        $(function(){
            for(var i = 1; i <= 12; i ++){
                var $div = $('<option value="">'+ i +' </option>');
                $('#month').append($div);
            }
            for(var i = 1; i <= 30; i ++){
                var $div = $('<option value="">'+ i +' </option>');
                $('#date').append($div);
            }
            for(var i = 1; i <= 24; i ++){
                var $div = $('<option value="">'+ i +' </option>');
                $('#hour').append($div);
            }
            for(var i = 10; i <= 60;){
                var $div = $('<option value="">'+ i +' </option>');
                console.log(i);
                i += 10;
                $('#min').append($div);
            }
        })