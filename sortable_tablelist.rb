BASE JS SCRIPT 

<script>
$(".attachment-arrange").sortable(
    {handle: '.this_hander',
    stop: function( event, ui ) {     
        var data = "";
        $('.attachment-arrange').each(function(i, el){
          var pos = $(el).attr("id-position");
          data += pos+"="+($('.attachments-listing').index($(el))+1 )+",";
          console.log($('.attachments-listing').index($(el))+1);
        });        
        $.ajax({url:"/route?method="+"1"+"&list="+data,
          success:function(result){
          }
        });
    }
  });
</script>

DB MIGRATION

add_columns :the_position, :integer, default: 0

CALLBACK

before_create :create (0 + 1) to position column

ROUTES

get 'set_attachment'

CLASS VIEW LEVEL

<div class="attachment-arrange-<%= any_id.id %>"></div>

MODEL

default_scope order('position')