window._show = function() {
  document.querySelector('#app').style.opacity = 1;
};

window.addEventListener('load', function() {
  // Download main.dart.js
  _flutter.loader.loadEntrypoint({
    serviceWorker: {
      serviceWorkerVersion: serviceWorkerVersion,
    },
    onEntrypointLoaded: async function(engineInitializer) {
      const appRunner = await engineInitializer.initializeEngine({
        hostElement: document.querySelector("#app"),
      });
      await appRunner.runApp();
    },
  });
});
