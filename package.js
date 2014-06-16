Package.describe({
  summary: 'Simple library to convert accents (diacritics) from strings to latin characters.'
});

Package.on_use(function (api) {
  api.add_files(['build/latinize.js'],['client', 'server']);
  api.export(['latinize'], ['client', 'server']);
});

