const express = require('express');
const cookieParser = require('cookie-parser');
const crypto = require('crypto');
const fs = require('fs');

const ADMINPW = process.env.ADMINPW ?? crypto.randomBytes(16).toString('hex');
const FLAG = process.env.FLAG ?? 'lactf{test_flag}';

const app = express();
const recruiters = new Map();
const jobs = new Map();
const applications = new Map();
const sessions = new Map();
const landingPageTemplate = () => fs.readFileSync('site/index.html').toString();
const jobTemplate = () => fs.readFileSync('site/job.html').toString();
const appliedTemplate = () => fs.readFileSync('site/applied.html').toString();
const applicationTemplate = () => fs.readFileSync('site/application.html').toString();

// js translation of python's html.escape because
// this isn't in nodejs stdlib i think
// src - https://github.com/python/cpython/blob/18347417b06d09fa7eeac68f88eb1e720e925c65/Lib/html/__init__.py#L12
function htmlEscape(s, quote=true) {
  s = s.replace("&", "&amp;"); // Must be done first!
  s = s.replace("<", "&lt;");
  s = s.replace(">", "&gt;");
  if (quote) {
    s = s.replace('"', "&quot;");
    s = s.replace('\'', "&#x27;");
  }
  return s;
}

const emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;

function stringMinLen(s, len) {
  return typeof s === 'string' && s.length >= len;
}

function createRecruiter(username, password, name) {
  const recruiter = { username, password, name, jobs: [] };
  recruiters.set(recruiter.username, recruiter);
  return recruiter;
}

function createJob(title, description, recruiter) {
  const id = crypto.randomUUID();
  jobs.set(id, { id, title, description, recruiter });
  return id;
}

const privateJobs = [];
const publicJobs = [];

// create the initial jobs
(() => {
  const recruiter = createRecruiter(
    'admin', ADMINPW, 'Admin McAdmin'
  );
  privateJobs.push(createJob('Flag Haver', `You keep the flag safe (${FLAG}). This is an internal job, not meant for the public.`, recruiter));
  publicJobs.push(createJob('Junior CTFer', 'Solve this challenge and join a team', recruiter));
  publicJobs.push(createJob('Senior CTFer', 'Solve all the challenges and join our team', recruiter));
})();

function isRecruiter(req) {
  if ('session' in req.cookies) {
    const recruiter = sessions.get(req.cookies.session);
    return Boolean(recruiter);
  }
  return false;
}

app.use(express.urlencoded({ extended: true }));
app.use(cookieParser());

app.get('/', (req, res) => {
  let jobList = publicJobs
    .map(jobId => `<li><a href="/job/${jobId}">${jobs.get(jobId).title}</a></li>`)
    .join('\n');
  if (isRecruiter(req)) {
    jobList += privateJobs
      .map(jobId => `<li><a href="/job/${jobId}">${jobs.get(jobId).title}</a></li>`)
      .join('\n');
  }
  return res.send(landingPageTemplate()
    .replace('JOBLIST', jobList)
  );
});

app.get('/job/:id', (req, res) => {
  const job = jobs.get(req.params.id);
  if (!job) {
    return res.send('not found');
  }
  return res.send(jobTemplate()
    .replace('TITLE', htmlEscape(job.title))
    .replace('DESCRIPTION', htmlEscape(job.description))
    .replace('URL', htmlEscape(`/application/${req.params.id}`))
  );
});

app.post('/application/:id', (req, res) => {
  const job = jobs.get(req.params.id);
  if (!job) return res.send('job not found');
  const { name, email, why } = req.body;
  const applicationId = crypto.randomUUID();
  const application = { id: applicationId, name, email, why };
  if (![name, email, why].every((field) => stringMinLen(field, 3))) {
    return res.send('incomplete job application');
  }
  if (!emailRegex.test(email)) {
    return res.send('invalid email in job application');
  }
  applications.set(applicationId, application);
  return res.send(appliedTemplate()
    .replace('NAME', htmlEscape(name))
    .replace('EMAIL', htmlEscape(email))
    .replace('URL', htmlEscape(`/application/${applicationId}`))
  );
});

app.get('/application/:id', (req, res) => {
  const application = applications.get(req.params.id);
  if (!application) return res.send('application not found');
  const { name, email, why } = application;
  return res.send(applicationTemplate()
    .replace('NAME', htmlEscape(name))
    .replace('EMAIL', htmlEscape(email))
    .replace('WHY', htmlEscape(why))
  );
});

// only for admin, not for you!
app.post('/login', (req, res) => {
  const { username, password } = req.body;
  if ([username, password].some(field => !stringMinLen(field, 0))) {
    return res.redirect('/login?err=' + encodeURIComponent('please fill out all fields'));
  }
  if (!recruiters.has(username)) {
    return res.redirect('/login?err=' + encodeURIComponent('username does not exist'));
  }
  const recruiter = recruiters.get(username);
  if (recruiter.password !== password) {
    return res.redirect('/login?err=' + encodeURIComponent('incorrect credentials'));
  }
  const sessionId = crypto.randomUUID();
  sessions.set(sessionId, recruiter);
  return res
    .cookie('session', sessionId)
    .redirect('/');
});

app.use(express.static('site/'));

app.listen(3000, () => {
  console.log('Listening on http://localhost:3000');
});
