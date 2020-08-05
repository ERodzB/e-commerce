<div class="page-store">
  <div class="products">
    <div class="items col-s-12 col-m-8 col-6 col-l-6 center col-offset-m-2 col-offset-5 col-offset-l-5 no-padding">
      {{foreach products}}
      <form id="formProducts" class="col-s-12 col-m-12 col-11 no-padding" action="index.php?page={{page}}"
        >
        <input type="hidden" name="codProducto" value="{{codProducto}}">
        <div class="foto col-s-12 col-m-4 col-5 no-padding">
          <h2 class="center"> {{nombreProducto}} </h2>
          <img class="col-s-9 col-m-6 col-10 col-l-12 no-padding" src="{{imagenProducto}}" alt="">
        </div>
        <div class="line-red"></div>

        <div class="opciones">
          <h3>Medicamento</h3>
          <label>
            {{nombreProducto}}
          </label>
        </div>
        <div class="line-red"></div>
        <div class="opciones">
          <button name="btnCart" id="btnCart">+&nbsp;<i class="fa fa-shopping-cart"
              aria-hidden="true"></i>&nbsp;</button>
          <button name="btnCheckout" id="btnCheckout">Ordenar Ahora</button>
        </div>
      </form>
      {{endfor products}}
    </div>
  </div>
</div>