// server.js
const Matter = require('matter-js');
const express = require('express');
const WebSocket = require('ws');
const session = require('express-session')
const fs = require('fs');
const path = require('path');
const crypto = require('crypto');
const cors = require('cors');
const app = express();
app.use(cors());
const flag = process.env.FLAG || 'lactf{test_flag}';

const port = 3000;

const SECRET_KEY = crypto.randomBytes(16).toString('hex');
app.use(express.json());
const sessionMiddleware = session({
    secret: SECRET_KEY,
    resave: false,
    saveUninitialized: true,
    cookie: { secure: false }
  });
app.use(sessionMiddleware);
app.use(express.static("public", {index: false})); // Serve static files

const users = {};

// Signup endpoint
app.post("/signup", (req, res) => {
    const { username, password } = req.body;
    if (!username || !password || typeof(username)!=='string' || typeof(password)!=='string') return res.status(400).json({ error: "Missing fields" });
    if (users[username]) return res.status(400).json({ error: "User already exists" });

    users[username] = { "password": password, points: 1000}; // Store user
    req.session['user'] = username;
    res.json({ message: "Signup successful" });
});

// Login endpoint
app.post("/login", (req, res) => {
    const { username, password } = req.body;
    if (typeof(username)!=='string' || typeof(password)!=='string' || !users[username] || users[username].password !== password) {
        return res.status(401).json({ error: "Invalid credentials" });
    }
    req.session['user'] = username;
    res.json({ message: "Login successful"});
});

const timeInterval = 16.666666666; // how often the ball's position is updated
const g = 0.27777777777; // our gravity constant

// the set positions of all pins
const pinPositions = [];
for (let row=5; row<16; row++) {
    const middleSpace = 65*(row-1);
    const frontPad = (1000-middleSpace)/2
    for (let pin=0; pin<row; pin++) {
        pinPositions.push({'x': pin*65+frontPad, 'y': (row-4)*85-10});
    }
}
pinPositions.push({'x': 190, 'y': 480});
pinPositions.push({'x': 810, 'y': 480});
pinPositions.push({'x': 500, 'y': 1000});
const leftWall = Matter.Bodies.rectangle(190, 480, 1, 1100, {isStatic: true, angle: Math.PI/8.6});
const rightWall = Matter.Bodies.rectangle(810, 480, 1, 1100, {isStatic: true, angle: -Math.PI/8.6});

function calcPositionDiff(time, v1) {
    let t = 0;
    let v = v1+g;
    let pos = 0;
    while (t<=time-1) {
        pos+=v;
        v+=g;
        t+=timeInterval;
    }
    return pos;
}

function socketSend(ws, data) {
    try {
        if (ws.readyState === WebSocket.OPEN) {
            ws.send(data, (err) => {
                if (err) {
                    console.error("Error sending message:", err);
                }
            });
        } else {
            console.error("WebSocket is not open. ReadyState:", ws.readyState);
        }
    } catch (error) {
        console.error("WebSocket send failed:", error);
    }
}

// validation function; checks that the trajectory the user passed in matches with the velocity vector from the previous collision
function validatePosition(prevCollision, prevVelo, prevTime, currCollision, currVelo, currTime) {
    if (typeof(prevTime)!=='number' || typeof(currTime)!=='number') return false;
    if (!prevCollision || !prevVelo || !currCollision || !currVelo) return false;
    if (!('x' in prevCollision) || !('y' in prevCollision) || !('x' in prevVelo) || !('y' in prevVelo) || !('x' in currCollision) || !('y' in currCollision) || !('x' in currVelo) || !('y' in currVelo)) return false;
    if (Math.abs(prevVelo.x-currVelo.x)>0.001) {
        return false;
    }
    const t = (currTime-prevTime);
    const posChange = calcPositionDiff(t, prevVelo.y);
    const veloChange = timeInterval*t/1000;

    const newYVelo = veloChange+prevVelo.y;
    const newYPos = posChange+prevCollision.y;

    if (Math.abs(newYVelo-currVelo.y)>0.001) {

        return false;
    }
    if (Math.abs(newYPos-currCollision.y)>0.001) {
        return false;
    }
    return true;
}

function hittingWall(position) {
    const ball = Matter.Bodies.circle(position.x, position.y, 10);
    const hitLeft = Matter.Collision.collides(ball, leftWall);
    const hitRight = Matter.Collision.collides(ball, rightWall);
    return hitLeft!==null || hitRight!==null;
}

const wss = new WebSocket.Server({ noServer: true });
// landing zone money multipliers
const multipliers = [
    10.0, 6.24, 3.66, 1.98, 0.95, 0.39, 0.12, 0.02, 0.0015, 0.0, 
    0.0015, 0.02, 0.12, 0.39, 0.95, 1.98, 3.66, 6.24, 10.0
  ];
wss.on('connection', (ws, req) => {
  try {
    let prevCollision;
    let prevVelo;
    let prevTime;

    ws.on('message', (message) => {
        let msgData;
       
        try {
            msgData = JSON.parse(message);
        }
        catch(e) {
            return;
        }
        const msgType = msgData.msgType;

        // user dropped a ball
        if (msgType=='join') {
            if (msgData.ballPos.x!=500) {
                socketSend(ws, JSON.stringify({error: "Stop cheating"}), () => ws.close());
               
            }
            prevCollision = msgData.ballPos;
            prevVelo = msgData.ballVelo;
            prevTime = msgData.time;
            if (!req.session.user || !req.session['user'] || !(users[req.session['user']])) {
                socketSend(ws, JSON.stringify({error: "Not logged in"}), () => ws.close());
            }
            else  {
                if (users[req.session['user']].points<100) {
                    socketSend(ws, JSON.stringify({error: "Not enough money"}), () => ws.close());
                }
                socketSend(ws, JSON.stringify({ message: 'Welcome to the Plinko game!' }));
                users[req.session['user']].points-=100;
            }
            return;
        }

        const ballPos = msgData.position;
        const pinPos = msgData.obsPosition;
        const initialV = msgData.velocity;
        const time = msgData.time;
        if (!ballPos || !pinPos || !initialV || !req.session['user'] || !(users[req.session['user']])) {
            return;
        }
        // validating your given trajectory
        let result = validatePosition(prevCollision, prevVelo, prevTime, ballPos, initialV, time);

        // checking that you're actually hitting an obstacle
        if (Matter.Vector.magnitude(Matter.Vector.sub(ballPos, pinPos))>15) {
            // check if it's hitting a wall or the ground
            let hitting = hittingWall(ballPos);
            if (hitting==false && pinPos.y!=1000) result = false;

        }
        // check that there's really an obstacle in the place you said
        if (!pinPositions.find(position => position.x===pinPos.x && position.y===pinPos.y)) result = false;

        // you cheated
        if (!result) {
            socketSend(ws, JSON.stringify({"error": "Stop cheating!!"}), () => ws.close());
            return;
        }

        if (pinPos.x==500 && pinPos.y==1000) {
            // ground
            let index = Math.floor(ballPos.x/(1000/19));
            if (index<0) index=0;
            if (index>=multipliers.length) index = multipliers.length-1;
            let points = multipliers[index]*100;
            users[req.session['user']].points +=points;
            if (users[req.session['user']].points>10000) socketSend(ws, points+flag, () => ws.close());
            else socketSend(ws, points, () => ws.close());
        }

        let normal;
        if (pinPos.x==190 && pinPos.y==480) {
            // left wall
            normal = Matter.Vector.create(1, -0.38142587779);
        }
        else if (pinPos.x==810 && pinPos.y==480) {
            // right wall
            normal = Matter.Vector.create(1, 0.38142587779);
        }
        else {
            normal = Matter.Vector.sub(ballPos, pinPos);
        }
        normal = Matter.Vector.normalise(normal);

        // Compute the normal component of velocity
        let dotProduct = Matter.Vector.dot(initialV, normal);
        let vNormal = Matter.Vector.mult(normal, dotProduct);

        let vTangent = Matter.Vector.sub(initialV, vNormal);

        let vNormalReflected = Matter.Vector.neg(vNormal);
        let resultantVelocity = Matter.Vector.mult(Matter.Vector.add(vTangent, vNormalReflected), 0.6);
        resultantVelocity = Matter.Vector.rotate(resultantVelocity, Math.random()*0.32-0.16);

        prevCollision = ballPos;
        prevVelo = resultantVelocity;
        prevTime = time;
        // send the resultant velocity of the collision
        socketSend(ws, JSON.stringify(resultantVelocity))
    });

    // Send a welcome message to the client

  } catch (error) {
    ws.close();
  }
});
app.get("/", (req, res) => {
    if (!req.session || !req.session.user || !(req.session.user in users)) {
        return res.redirect("/login"); 
    }
    fs.readFile(path.join(__dirname, "public", "index.html"), "utf8", (err, data) => {
        const money = users[req.session.user].points || 0; // Default to 0 if user not found
        const filledHtml = data.replace("{{money}}", money);
        res.send(filledHtml);
    });
});
app.get("/signup", (req, res) => res.sendFile(path.join(__dirname, "public", "signup.html")));
app.get("/login", (req, res) => res.sendFile(path.join(__dirname, "public", "login.html")));

app.server = app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});

// Attach WebSocket server to Express server
app.server.on('upgrade', (request, socket, head) => {
    sessionMiddleware(request, {}, () => {
        wss.handleUpgrade(request, socket, head, (ws) => {
            wss.emit('connection', ws, request);
        });
    });
});
