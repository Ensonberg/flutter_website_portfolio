'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "3fe4fd5df2020acccdd334a29a3cc4f4",
"index.html": "7546733482529e633cd5cfe724313d42",
"/": "7546733482529e633cd5cfe724313d42",
"main.dart.js": "392c46258d1d91c7ff366d0c05683991",
"flutter.js": "1cfe996e845b3a8a33f57607e8b09ee4",
"favicon.png": "145c978d46dbb4b5d98815bfbcf8d047",
"icons/Icon-192.png": "eb66e12e134790266847c7d960282565",
"icons/Icon-maskable-192.png": "eb66e12e134790266847c7d960282565",
"icons/Icon-maskable-512.png": "0eaae761cd0fc81fba9d8275accfe6f6",
"icons/Icon-512.png": "0eaae761cd0fc81fba9d8275accfe6f6",
"manifest.json": "b7e1ad833e78aa8368f3edc42f88b9c1",
"assets/AssetManifest.json": "a13b3e44befa21e4390e25d67efa6583",
"assets/NOTICES": "b6fccd3f977145417ccca14e0ea6161b",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/background.svg": "9e350e75dadef9899465fb6158436aa2",
"assets/assets/Dots.svg": "fceba3df3785439002b6590401b75d2a",
"assets/assets/dummy_project.png": "a2adb639de0a3d9f9d96f56034649df1",
"assets/assets/profile_image_2.png": "783ca4746ce404cd5cf114c32d93911b",
"assets/assets/Github.svg": "ab1686ef867a34add430e2347ac62afa",
"assets/assets/images/porfolio.png": "cad89ebf24090b0934aeca6bf6ecaa13",
"assets/assets/images/devops2.png": "adf01ed20726660a254d4b3c6e18f2d3",
"assets/assets/images/devops3.png": "e26d630b65b7a94030c49b9948a6f4a2",
"assets/assets/images/devops1.png": "d0eb695d5a8fe4b046907f89b45bf6d9",
"assets/assets/images/kris.jpg": "5c74988e990e91e34965976daa191231",
"assets/assets/images/foodui.jpg": "8f8ef11706a952fb60b0ff85029735f4",
"assets/assets/images/urhobo.png": "3289a61aa06521f39cc28e077d8340d1",
"assets/assets/images/TokTok%2520-%2520Thumbnails%2520Figma.png": "35556c1768fcea39896df1ae8c97a3a3",
"assets/assets/flutter.svg": "af34f4ac4ea04da0bcd00b6ca663189f",
"assets/assets/docker.svg": "c6034f8bdf2a6ee75fb91c6d19f7251a",
"assets/assets/Email.svg": "21d00c3bcd1c1d6d9a825b957498c1df",
"assets/assets/background.png": "cf42a1c9212f310915ce9714aff3fef8",
"assets/assets/close.svg": "a5721ab47aa129560e172bbabea9e585",
"assets/assets/brand.svg": "499ed0e85d68ca721ca966df78b22ae8",
"assets/assets/menu_drawer.svg": "811d0a0095a96c642e39db7c1b02cdbe",
"assets/assets/location.svg": "65a9980994ba795292f236c5fba6b8b8",
"assets/assets/Linkedin.svg": "710ee731526ed19d01b63fe84102da5e",
"assets/assets/Twitter.svg": "328b6d38af79494d72241d7e9e80f887",
"assets/assets/Discord.svg": "4ab613c834e56c31e520e24ca03e1aef",
"assets/assets/quote.svg": "a3a56653acb8cd6160dc1179b5a43387",
"assets/assets/Logo.svg": "81ee51e42fddbe9ef7998814b182ea49",
"assets/assets/skill-bg.svg": "4cf68be15c410dd22596f0700eb6dea9",
"assets/assets/image.png": "aafb60ec19141c8b87bc6f08e15fbef2",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
