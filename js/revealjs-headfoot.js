// integrated by ppenguin from https://stackoverflow.com/a/37518822/12771809 /
// for some reason pandoc cannot parse the $() stuff below, so we use this external js
// which we place in lib/js/ within the reveal.js directory

// 3. On Reveal.js ready event, copy header/footer <div> into each `.slide-background` <div>
var headfoot = $('#headfoot').html();
if ( window.location.search.match( /print-pdf/gi ) ) {
    Reveal.addEventListener( 'ready', function( event ) {
        $('.slide-background').append(headfoot);
    });
}
else {
    $('div.reveal').append(headfoot);
}
