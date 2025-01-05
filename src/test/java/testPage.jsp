<!-- Carousel -->
<div class="container" style="display: flex; width: 100%; height: 100%; align-items: center; justify-content: center; margin: 0 auto;">
    <div id="demo" class="carousel slide" style="display: flex; border-radius: 5px; width: 80%; box-shadow: 0 1rem 3rem rgba(000,000,000, .175); data-bs-ride="carousel">

    <!-- Indicators/dots -->
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
        <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
    </div>

    <!-- The slideshow/carousel -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="../../main/webapp/resources/imgs/imagem1carousel.jpg" alt="Los Angeles" class="d-block" style="width:100%">
        </div>
        <div class="carousel-item">
            <img src="../../main/webapp/resources/imgs/imagem2carousel.webp" alt="Chicago" class="d-block" style="width:100%">
        </div>
        <div class="carousel-item">
            <img src="../../main/webapp/resources/imgs/imagem3carousel.jpg" alt="New York" class="d-block" style="width:100%">
        </div>
    </div>

    <!-- Left and right controls/icons -->
    <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
    </button>
</div>
<%--    Fim do Carousel--%>
</div>