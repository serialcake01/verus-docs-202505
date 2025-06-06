# [\#](https://monkins1010.github.io/veruslogin/login-template/\#boiler-plate-template-for-login-using-verusid) Boiler Plate template for login using VerusID

`git clone https://github.com/monkins1010/verusid-login-template.git`

This project was created with:

Client: Vite + React JS Server: node + express

## [\#](https://monkins1010.github.io/veruslogin/login-template/\#available-scripts) Available Scripts

See the Readme.md files in the individual folders for starting the two projects.

Basic overview is

Open a new terminal and.

`cd client`

`yarn install`

`yarn run dev`

Then open your browser at `http://localhost:5173/`

Open another Terminal.

`cd server`

`cd src`

`node index.js`

❗Be sure to rename the `.env.sample` files to `.env` and populate them with your details.

## [\#](https://monkins1010.github.io/veruslogin/login-template/\#using-the-verus-mobile-to-test) Using the Verus Mobile to test.

When using the Verus Mobile app the app may not be able to post to your server. To allow the server to post to a https endpoint you can install ngrok.

Then set the `SERVER_URL="https://horse-inviting-eggs.ngrok-free.app"` in the `server/.env` to this.

Note: Setting a domain in ngrok allows you to get a static url that does not change andyou can start it like this.

`http --domain=horse-inviting-eggs.ngrok-free.app 8000`

This will then host your http://localhost:8000 on the above domain.

### [\#](https://monkins1010.github.io/veruslogin/login-template/\#screen-shots) Screen Shots

![](https://github.com/monkins1010/verusid-login-template/blob/main/PNG/signin.png?raw=true)![](https://github.com/monkins1010/verusid-login-template/blob/main/PNG/qr.png?raw=true)![](https://github.com/monkins1010/verusid-login-template/blob/main/PNG/loggedin.png?raw=true)

[verusid login](https://monkins1010.github.io/tags/verusid-login/)

Contents

- [Available Scripts](https://monkins1010.github.io/veruslogin/login-template/#available-scripts)
- [Using the Verus Mobile to test.](https://monkins1010.github.io/veruslogin/login-template/#using-the-verus-mobile-to-test)
- [Screen Shots](https://monkins1010.github.io/veruslogin/login-template/#screen-shots)