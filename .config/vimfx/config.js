let {commands} = vimfx.modes.normal;
vimfx.addCommand({
  name: 'search_tabs',
  description: 'Search tabs',
  category: 'tabs',
  order: commands.focus_location_bar.order + 1,
}, ({vim}) => {
  let {gURLBar} = vim.window;
  commands.focus_location_bar.run({vim});
  gURLBar.value = '% ';
  gURLBar.onInput(new vim.window.KeyboardEvent('input'));
});
vimfx.set('custom.mode.normal.search_tabs', 'b');

vimfx.addCommand({
  name: 'zoom_enlarge',
  description: 'Zoom in',
}, ({vim}) => {
  vim.window.FullZoom.enlarge()
})
vimfx.set('custom.mode.normal.zoom_enlarge', 'zi');

vimfx.addCommand({
  name: 'zoom_reduce',
  description: 'Zoom in',
}, ({vim}) => {
  vim.window.FullZoom.reduce()
})
vimfx.set('custom.mode.normal.zoom_reduce', 'zo');

vimfx.addCommand({
  name: 'zoom_reset',
  description: 'Zoom in',
}, ({vim}) => {
  vim.window.FullZoom.reset()
})
vimfx.set('custom.mode.normal.zoom_reset', 'zz');
