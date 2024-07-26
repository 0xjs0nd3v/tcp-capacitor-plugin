export interface TCPPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
