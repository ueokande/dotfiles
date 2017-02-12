let {commands} = vimfx.modes.normal;

// tabs
vimfx.addCommand({
  name: 'search_tabs',
  description: 'Search tabs',
  category: 'tabs',
}, ({vim}) => {
  let {gURLBar} = vim.window;
  commands.focus_location_bar.run({vim});
  gURLBar.value = '% ';
  gURLBar.onInput(new vim.window.KeyboardEvent('input'));
});
vimfx.set('custom.mode.normal.search_tabs', 'b');

// location
vimfx.addCommand({
  name: 'open_url',
  description: 'Open a URL',
  category: 'location',
  order: commands.focus_location_bar.order,
}, ({vim}) => {
  let {gURLBar} = vim.window;
  commands.focus_location_bar.run({vim});
  gURLBar.value = '';
  gURLBar.onInput(new vim.window.KeyboardEvent('input'));
});
vimfx.set('custom.mode.normal.open_url', 'o');

vimfx.addCommand({
  name: 'alter_url',
  description: 'Open a URL based on current location',
  category: 'location',
  order: commands.focus_location_bar.order + 1,
}, ({vim}) => {
  let {gURLBar} = vim.window;
  let length = gURLBar.value.length;
  commands.focus_location_bar.run({vim});
  gURLBar.setSelectionRange(length, length)
  gURLBar.onInput(new vim.window.KeyboardEvent('input'));
});
vimfx.set('custom.mode.normal.alter_url', 'O');

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

function run_in_new_tab(args, f) {
  let {vim} = args;
  commands.tab_new.run(args);
  vim.window.setTimeout(f);
}

function new_tab_with_prefix(args, prefix) {
  run_in_new_tab(args, () => {
    let {vim} = args;
    let {gURLBar} = vim.window;
    commands.focus_location_bar.run(args);
    gURLBar.value = prefix;
    gURLBar.onInput(new vim.window.KeyboardEvent('input'));
  });
}

vimfx.addCommand({
  name: 'tabopen',
  description: 'Open a URL in a new tab',
  category: 'tabs',
  order: commands.tab_new.order + 1,
}, (args) => {
  let {vim} = args;
  let {gURLBar} = vim.window;
  new_tab_with_prefix(args, gURLBar.value);
});
vimfx.set('custom.mode.normal.tabopen', 'T');
