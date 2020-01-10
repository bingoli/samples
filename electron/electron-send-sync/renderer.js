// This file is required by the index.html file and will
// be executed in the renderer process for that window.
// No Node.js APIs are available in this process because
// `nodeIntegration` is turned off. Use `preload.js` to
// selectively enable features needed in the rendering
// process.

const { ipcRenderer } = require('electron')

function callSendSync() {
    console.log("call sendSync");
    const ret = ipcRenderer.sendSync('sendSync')
    console.log(ret);
}

function callDeadLock() {
    console.log("call deadLock");
    const ret = ipcRenderer.sendSync('deadLock')
    console.log(ret);
}

 function callSend() {
    console.log("call send");
    ipcRenderer.send('send')
 }

 function callMainHang() {
    console.log("call main hang");
    ipcRenderer.send('mainHang')
    console.log("end call main hang");
 }

 function callOpenDevTools() {
     ipcRenderer.send("openDevTools");
 }

document.addEventListener('DOMContentLoaded', function (event) {
    var el = document.getElementById('call-open-dev-tools');
    el.onclick = callOpenDevTools;

    el = document.getElementById('call-send');
    el.onclick = callSend;

    el = document.getElementById('call-send-sync');
    el.onclick = callSendSync;

    el = document.getElementById('call-dead-lock');
    el.onclick = callDeadLock;

    el = document.getElementById('call-main-hang');
    el.onclick = callMainHang;
});

ipcRenderer.on('onSend', (event, arg) => {
    console.log("receive onSend");
});

ipcRenderer.on('onDeadLock', (event, arg) => {
    console.log("receive onDeadLock");
});

ipcRenderer.on('onMainHang', (event, arg) => {
    console.log("receive onMainHang");
});

var heart_break_count = 0;
setInterval(function() {
    heart_break_count += 1
    var el = document.getElementById('render-heart-break')
    el.innerHTML = heart_break_count
    console.log(Date(), ' : render process heart break count : ', heart_break_count)
}, 1000)