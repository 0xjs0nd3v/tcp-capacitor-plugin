import { TCPPlugin } from 'tcp-capacitor-plugin';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    TCPPlugin.echo({ value: inputValue })
}
