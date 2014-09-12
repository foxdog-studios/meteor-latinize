Package.describe({
  summary: 'Simple library to convert accents (diacritics) from strings to latin characters. Packaged for meteor',
  version: '0.0.0',
  name: 'fds:latinize',
  git: 'https://github.com/foxdog-studios/meteor-latinize.git'
});

Package.onUse(function (api) {
  api.addFiles(['build/latinize.js'],['client', 'server']);
  api.export(['latinize'], ['client', 'server']);
});

