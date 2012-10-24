
$(window).load(function(){
    $('#masonry').masonry({
        itemSelector: '.card',
        columnWidth: 306,
        gutterWidth: 10
    });
    console.log("Loaded masonry with 268 columns");  
});