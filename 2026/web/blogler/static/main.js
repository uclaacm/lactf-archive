require.config({ paths: { vs: 'https://unpkg.com/monaco-editor@0.45.0/min/vs' } });

const initialYaml = fetch('/config').then(r => r.text());
const configInput = document.querySelector('form > input[name=config]');
const blogTitleInput = document.querySelector('form > input[name=title]');
const blogContentInput = document.querySelector('form > input[name=blog]');

require(['vs/editor/editor.main'], async function () {
  const blogEditor = monaco.editor.create(document.querySelectorAll('.editor')[1], {
    value: '# Blog Title\n\nYour blog here',
    language: 'markdown',
    theme: 'vs-light'
  });

  const confEditor = monaco.editor.create(document.querySelectorAll('.editor')[0], {
    value: await initialYaml,
    language: 'yaml',
    theme: 'vs-light'
  });

  const updateBlogForm = () => {
    const blogMarkdown = blogEditor.getValue();

    const lines = [];
    let title;

    for (const line of blogMarkdown.split("\n")) {
      if (title === undefined && line.startsWith('#')) {
        title = line.slice(1).trim();
        continue;
      } else {
        lines.push(line);
      }
    }
    blogTitleInput.value = title ?? '';
    blogContentInput.value = lines.join('\n');
  };

  const updateConfigForm = () => {
    configInput.value = confEditor.getValue();
  };

  const updateForms = () => {
    updateBlogForm();
    updateConfigForm();
  };

  document.querySelectorAll('form').forEach(form => form.addEventListener('submit', updateForms));
});
