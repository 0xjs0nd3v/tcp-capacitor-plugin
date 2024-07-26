import { WebPlugin } from '@capacitor/core';

import type { TCPPluginPlugin } from './definitions';

export class TCPPluginWeb extends WebPlugin implements TCPPluginPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
