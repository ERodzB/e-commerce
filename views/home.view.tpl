<div class="hero">
        <div class="ad">
            <h2>Pide tu orden de Alitas ¡Ya!</h2>
            <button id="btnOrder">Ordenar</button>    
        </div>
    </div>
<script>
    $().ready(function(){
    $("#btnOrder").click(function(e){
    e.preventDefault();
    e.stopPropagation();
    window.location.assign("index.php?page={{store}}");
    });
});
</script>   