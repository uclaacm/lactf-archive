// just edit physics.js, you can put this right after setting the 'ball' and 'obs' variables
// this is just what was intended, but i found out later that there were a couple of other things i forgot to check lol
// so you could also either edit x positions or edit initial y position and initial x velocity which are not validated

if (obs.position.y<1000 && !((obs.position.x==190 || obs.position.x==810) && obs.position.y==480)) {
    let skip;
    if (ball.position.x<500 && obs.position.x<ball.position.x) skip = true;
    else if (ball.position.x>=500 && obs.position.x>ball.position.x) skip = true;
    if (skip) {
        engine.enabled = true;
        Runner.run(runner, engine);
        return;
    }
}