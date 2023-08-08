'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"favicon.ico": "5bb5b9cc0617d85844c6c767cd6cbfc3",
"icons/apple-touch-icon.png": "e91a2ee33d2ee490134bd73a5c9aec2e",
"index.html": "9525cfaa8f80b8e0f7fc1c5cd6677b9b",
"/": "9525cfaa8f80b8e0f7fc1c5cd6677b9b",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"assets/flutterkaigi_ogp.png": "1a619a2e38e7f71d2b634199ddfd81f9",
"assets/fonts/MaterialIcons-Regular.otf": "307c11ea0d50630787a5f37ca25c1e69",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "896df9bf37bd2c61023b6bd155fbbb57",
"assets/assets/personal_wanted.svg": "f6c29a38b5be8ff6d56f71f7072a3335",
"assets/assets/icons/qiita.svg": "ad2c82abb2aff365dc1bd5e5d32cd036",
"assets/assets/icons/discord.svg": "c23fa787ac3b5a7e6e854a5a6c0f5d81",
"assets/assets/icons/twitter.svg": "5964165e04744351eb5810a0e304c091",
"assets/assets/icons/github.svg": "38b13a1d4f499bc8a61ca438b0a79a75",
"assets/assets/icons/zenn.svg": "af99a22c12e27e1987059e6bd14f4446",
"assets/assets/icons/note.svg": "7d3f2a159a95382d22e7e9fb4f32caba",
"assets/assets/icons/medium.svg": "5bf42a1249a53ff472f1b8c2c502e265",
"assets/assets/flutterkaigi_logo.svg": "c13d5191c64c08448bbc894703cea14b",
"assets/assets/Illustration-Teamwork.svg": "92b3cdc77662d0d9cd6b4d3babc7e899",
"assets/assets/flutterkaigi_logo_union.svg": "580711556f172f0c3c85951d18271551",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/AssetManifest.json": "830885b0509142b3d5b07181228cb71b",
"assets/NOTICES": "0250350fe1251f83a76d8b771f07a146",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"version.json": "960c0c5a17550c0c055dcc8d0f8e86d8",
"main.dart.js": "c95005fc777fff341c9072ecc035ecc9",
"canvaskit/canvaskit.js": "45bec3a754fba62b2d8f23c38895f029",
"canvaskit/skwasm.wasm": "2cb965595f656f0c58ad6bb5988f8280",
"canvaskit/skwasm.js": "831c0eebc8462d12790b0fadf3ab6a8a",
"canvaskit/skwasm.worker.js": "7ec8c65402d6cd2a341a5d66aa3d021f",
"canvaskit/chromium/canvaskit.js": "6bdd0526762a124b0745c05281c8a53e",
"canvaskit/chromium/canvaskit.wasm": "347841c04107bb5a17164bee251d8307",
"canvaskit/canvaskit.wasm": "e5b1f72690096075e25fe1f481cb6ce6",
"favicon.svg": "e3705092462d2b2496639de952f5f58a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
