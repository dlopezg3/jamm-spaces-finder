const duration_input = document.getElementById('booking_duration');
const price_input = document.getElementById('price_per_hour');
const price = parseInt(price_input.innerText);

  function calculatePrice() {
    duration_input.addEventListener("change", (event) => {
      let duration = parseInt(duration_input.value);
      price_input.innerText = (duration * price).toString();
    })
  };

export { calculatePrice };

