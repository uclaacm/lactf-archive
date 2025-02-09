// module aliases
var Engine = Matter.Engine,
    Render = Matter.Render,
    Runner = Matter.Runner,
    Bodies = Matter.Bodies,
    Composite = Matter.Composite;

// create an engine

// create balls and pins
const colors = [
    "#00ff00", "#1ce300", "#39c600", "#55aa00", "#718e00", "#8e7100", 
    "#aa5500", "#c63900", "#e31c00", "#ff0000", "#e31c00", "#c63900", 
    "#aa5500", "#8e7100", "#718e00", "#55aa00", "#39c600", "#1ce300", 
    "#00ff00"
];

// SETTING UP THE PINS AND WALLS AND GROUND
const pins = [];
const dropZones = [];
for (let row=5; row<16; row++) {
    const middleSpace = 65*(row-1);
    const frontPad = (1000-middleSpace)/2
    for (let pin=0; pin<row; pin++) {
        let pinBody = Bodies.circle(pin*65+frontPad, (row-4)*85-10, 5, {isStatic: true, label: "obstacle", isSensor: true, render: {fillStyle: 'blue'}});
        pins.push(pinBody);
    }
}
// 19 drop zones with varying points
for (let i=0; i<19; i++) {
    let width = 1000/19;
    let dropZone = Bodies.rectangle(i*width+width/2, 1000, width, 60, { isStatic: true, friction: 0, isSensor: true, render: {fillStyle: colors[i]}});
    dropZones.push(dropZone);
}

const ground = Bodies.rectangle(500, 1000, 1000, 60, { isStatic: true, friction: 0, label: 'obstacle', isSensor: true});
const leftWall = Bodies.rectangle(190, 480, 1, 1100, {isStatic: true, angle: Math.PI/8.6, label: 'obstacle', isSensor: true, render: {fillStyle: 'blue'}});
const rightWall = Bodies.rectangle(810, 480, 1, 1100, {isStatic: true, angle: -Math.PI/8.6, label: 'obstacle', isSensor: true, render: {fillStyle: 'blue'}});
const allBodies = pins.concat([ground, leftWall, rightWall]).concat(dropZones);
// add all of the bodies to the world
let socket = null;

// DONE SETTING UP THE PINS AND BALLS

async function setup() { 
    if (socket) {
        return;
    }
    let engine;
    let render;
    let runner;

    const wsUrl = location.protocol.replace("http", "ws") + "//" + location.host;
    socket = new WebSocket(wsUrl);

    const currMoney = parseInt(document.getElementById("moneyCounter").innerText);
    document.getElementById("moneyCounter").innerText = currMoney-100;

    let ball = Bodies.circle(500, 10, 10, {label: "ball", mass: 1, friction: 0, frictionAir: 0});

    function waitForMessage() {
        return new Promise((resolve) => {
            function handler(event) {
                socket.removeEventListener("message", handler);
                resolve(event.data);
            }
            socket.addEventListener("message", handler);
        });
    }


    // add ball to the world and connect to the socket
    socket.onopen = async() => {
        console.log('Connected to WebSocket server');
        socket.send(JSON.stringify({"msgType": "join", "ballPos": ball.position, "ballVelo": ball.velocity, "time": 0}));
        const resp = await waitForMessage();
        if ("error" in JSON.parse(resp)) window.location = "/login";
        engine = Engine.create();
        render = Render.create({
            element: document.body,
            engine: engine,
            options: {
                width: 1000,
                height: 1000,
                wireframes: false
            }
        });
        runner = Runner.create();
        Composite.add(engine.world, allBodies);
        Composite.add(engine.world, [ball]);

        Render.run(render);
        Runner.run(runner, engine);
        Matter.Events.off(engine, "collisionStart");

        Matter.Events.on(engine, "collisionStart", (event) => {
            event.pairs.forEach(async(pair) => {
                if ((pair.bodyA.label === "ball" || pair.bodyB.label === "ball") && (pair.bodyA.label === "obstacle" || pair.bodyB.label === "obstacle")) {

                    Runner.stop(runner);
                    engine.enabled = false;
                    let collisionTime = engine.timing.timestamp;

                    var ball = pair.bodyA.label === "ball" ? pair.bodyA : pair.bodyB;
                    let collisionPos = {'x': ball.position.x, 'y': ball.position.y};

                    var obs = pair.bodyA.label === "obstacle" ? pair.bodyA : pair.bodyB;
                    socket.send(JSON.stringify({"msgType": "collision", "velocity": ball.velocity, "position": ball.position, "obsPosition": obs.position, "time": engine.timing.timestamp}));

                    const resp = await waitForMessage();
                    if (parseInt(resp)>=0) {
                        // Ball hit the ground
                        const currMoney = parseInt(document.getElementById("moneyCounter").innerText);
                        document.getElementById("moneyCounter").innerText = currMoney+parseInt(resp);
                        socket.close();
                        socket = null;
                        document.getElementById("drop").removeAttribute("disabled");
                        Runner.stop(runner);
                        engine.enabled = false;
                        Composite.remove(engine.world, ball);
                        Matter.World.clear(engine.world, false);
                        if (render.canvas) {
                            render.canvas.remove();
                        }
                        return;

                    }
                    else {
                        respJSON = JSON.parse(resp);
                        if ("error" in respJSON) {
                            // You either cheated or you're not logged in
                            socket.close();
                            if (respJSON['error'] === "Not logged in") window.location = "/login";
                            Composite.remove(engine.world, ball);
                            Matter.World.clear(engine.world, false);
                            // document.querySelector('canvas').remove();
                            socket = null;
                            document.getElementById("drop").removeAttribute("disabled");
                            return;
                        }

                        engine.timing.timestamp = collisionTime;
                        Matter.Body.setPosition(ball, collisionPos);
                        Matter.Body.setVelocity(ball, JSON.parse(resp));

                        engine.enabled = true;
                        Runner.run(runner, engine);
                    }
                    
                }
            });
        });
        Matter.Events.off(engine, "afterUpdate");
        Matter.Events.on(engine, "afterUpdate", () => {
            console.log("Update step:", engine.timing.timestamp);
        
            // Example: Log velocity of a specific body
            console.log("Position of bodyA", ball.position);
            console.log("Velocity of bodyA:", ball.velocity);
        });
    };
    

}

document.getElementById("drop").addEventListener("click", () => {
    setup();
    document.getElementById("drop").setAttribute("disabled", true);
});
