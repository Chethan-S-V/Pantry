// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require_self
//= require_tree .
import "@hotwired/turbo-rails"
import "controllers"
//
window.addEventListener('load', () => {
  console.log("Registering");
  navigator.serviceWorker.register('/service-worker.js')
  .then(registration => {
    console.log('ServiceWorker registered: ', registration)
  });
});

// if (navigator.serviceWorker) {
//   navigator.serviceWorker.register('/service-worker.js', { scope: './' })
//     .then(function(reg) {
//       console.log('[Companion]', 'Service worker registered!');
//       console.log(reg);
//     });
// }
console.log("HERE?x");
if ('serviceWorker' in navigator) {
  window.addEventListener('load', function() {
    navigator.serviceWorker.register('/service-worker.js', {scope: '/'});
  });
}
