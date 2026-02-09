const NotesApp = {
    STORAGE_KEY: 'notes',
    COUNTER_KEY: 'notes_counter',

    getAllNotes() {
        const data = localStorage.getItem(this.STORAGE_KEY);
        return data ? JSON.parse(data) : {};
    },

    saveNotes(notes) {
        localStorage.setItem(this.STORAGE_KEY, JSON.stringify(notes));
    },

    getNextId() {
        const counter = parseInt(localStorage.getItem(this.COUNTER_KEY) || '0', 10);
        const nextId = counter + 1;
        localStorage.setItem(this.COUNTER_KEY, nextId.toString());
        return nextId;
    },

    getNote(noteId) {
        const notes = this.getAllNotes();
        return notes[noteId] || null;
    },

    createNote(content) {
        const notes = this.getAllNotes();
        const noteId = this.getNextId();
        notes[noteId] = content;
        this.saveNotes(notes);
        return noteId;
    },

    deleteNote(noteId) {
        const notes = this.getAllNotes();
        if (notes[noteId]) {
            delete notes[noteId];
            this.saveNotes(notes);
            return true;
        }
        return false;
    },

    searchNotes(query, maxResults) {
        const notes = this.getAllNotes();
        const matching = [];

        for (const [noteId, content] of Object.entries(notes)) {
            if (matching.length >= maxResults) {
                break;
            }
            if (content.startsWith(query)) {
                matching.push({ id: noteId, content: content });
            }
        }

        return matching;
    },

    getNotesArray(maxResults) {
        const notes = this.getAllNotes();
        const result = [];

        for (const [noteId, content] of Object.entries(notes)) {
            if (result.length >= maxResults) {
                break;
            }
            result.push({ id: noteId, content: content });
        }

        return result;
    }
};
