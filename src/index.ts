import { registerPlugin } from '@capacitor/core';

import type { TCPPluginPlugin } from './definitions';

const TCPPlugin = registerPlugin<TCPPluginPlugin>('TCPPlugin', {
  web: () => import('./web').then(m => new m.TCPPluginWeb()),
});

export * from './definitions';
export { TCPPlugin };
