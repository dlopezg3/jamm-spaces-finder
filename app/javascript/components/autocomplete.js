function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var spaceAddress = document.getElementById('space_address');

    if (spaceAddress) {
      var autocomplete = new google.maps.places.Autocomplete(spaceAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(spaceAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
