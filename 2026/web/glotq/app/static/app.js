const contentTypes = {
    json: 'application/json',
    yaml: 'application/yaml',
    xml: 'application/xml'
};

let currentFormat = 'json';

function init() {
    handleCommandChange('json');
    handleCommandChange('yaml');
    handleCommandChange('xml');
}

function switchFormat(format) {
    currentFormat = format;

    document.querySelectorAll('.tab').forEach(tab => {
        tab.classList.remove('active');
        if (tab.dataset.format === format) {
            tab.classList.add('active');
        }
    });

    document.querySelectorAll('.format-editor').forEach(editor => {
        editor.classList.remove('active');
    });
    document.getElementById(`${format}-editor`).classList.add('active');

    const output = document.getElementById('output');
    output.textContent = 'Your results will appear here...';
    output.className = '';
}

function handleCommandChange(format) {
    const commandSelect = document.getElementById(`${format}-command`);
    const command = commandSelect.value;
    const isMan = command === 'man';

    if (format === 'json') {
        document.getElementById('json-args-line').style.display = isMan ? 'none' : 'block';
        document.getElementById('json-args-disabled').style.display = isMan ? 'block' : 'none';
    } else if (format === 'yaml') {
        document.getElementById('yaml-args-line').style.display = isMan ? 'none' : 'block';
        document.getElementById('yaml-args-value').style.display = isMan ? 'none' : 'block';
        document.getElementById('yaml-args-disabled').style.display = isMan ? 'block' : 'none';
    } else if (format === 'xml') {
        document.getElementById('xml-args-line').style.display = isMan ? 'none' : 'block';
        document.getElementById('xml-args-disabled').style.display = isMan ? 'block' : 'none';
    }
}

function buildJsonRequest() {
    const command = document.getElementById('json-command').value;
    const isMan = command === 'man';
    const args = isMan ? ['jq'] : [document.getElementById('json-args').value];
    const customData = document.getElementById('json-custom').value.trim();

    let jsonStr = '{\n';
    jsonStr += `  "command": "${command}",\n`;
    jsonStr += `  "args": ${JSON.stringify(args)}`;

    if (customData) {
        jsonStr += `,\n  ${customData}`;
    }

    jsonStr += '\n}';

    try {
        const parsed = JSON.parse(jsonStr);
        return JSON.stringify(parsed, null, 2);
    } catch (e) {
        return jsonStr;
    }
}

function buildYamlRequest() {
    const command = document.getElementById('yaml-command').value;
    const isMan = command === 'man';
    const args = isMan ? '  - "yq"' : `  - "${document.getElementById('yaml-args').value}"`;
    const customData = document.getElementById('yaml-custom').value.trim();

    let yamlStr = `command: ${command}\n`;
    yamlStr += `args:\n${args}\n`;

    if (customData) {
        yamlStr += customData;
    }

    return yamlStr;
}

function buildXmlRequest() {
    const command = document.getElementById('xml-command').value;
    const isMan = command === 'man';
    const argsValue = document.getElementById('xml-args').value;
    const customData = document.getElementById('xml-custom').value.trim();

    let argsXml = '';
    if (isMan) {
        argsXml = '<arg>xq</arg>';
    } else if (argsValue) {
        const argParts = argsValue.split(' ');
        argsXml = argParts.map(arg => `<arg>${arg}</arg>`).join('');
    }

    let xmlStr = `<?xml version="1.0"?>\n`;
    xmlStr += `<request>\n`;
    xmlStr += `    <command>${command}</command>\n`;
    xmlStr += `    <args>${argsXml}</args>\n`;

    if (customData) {
        xmlStr += customData + '\n';
    }

    xmlStr += `</request>`;

    return xmlStr;
}

async function executeQuery() {
    const output = document.getElementById('output');

    let requestBody;
    switch (currentFormat) {
        case 'json':
            requestBody = buildJsonRequest();
            break;
        case 'yaml':
            requestBody = buildYamlRequest();
            break;
        case 'xml':
            requestBody = buildXmlRequest();
            break;
    }

    output.textContent = 'Executing query...';
    output.className = '';

    try {
        const response = await fetch(`/${currentFormat}`, {
            method: 'POST',
            headers: {
                'Content-Type': contentTypes[currentFormat]
            },
            body: requestBody
        });

        const responseContentType = response.headers.get('Content-Type');

        if (responseContentType && responseContentType.includes('application/json')) {
            const result = await response.json();

            if (result.success) {
                output.textContent = result.output || '(empty output)';
                output.className = 'success';
            } else {
                output.textContent = `Error: ${result.error || 'Unknown error'}`;
                output.className = 'error';
            }
        } else {
            const text = await response.text();
            output.textContent = `Error: ${text}`;
            output.className = 'error';
        }
    } catch (e) {
        output.textContent = `Network Error: ${e.message}`;
        output.className = 'error';
    }
}

document.addEventListener('DOMContentLoaded', init);
