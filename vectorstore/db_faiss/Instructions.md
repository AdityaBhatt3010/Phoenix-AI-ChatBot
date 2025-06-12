### 📦 `vectorstore/db_faiss/` Directory

This folder stores the **automatically generated vector database** used for semantic search.

* It is created dynamically from the PDF files located in the `data/` directory.
* The PDF content is:

  1. **Loaded and split** into smaller text chunks.
  2. **Embedded** into vector representations using `sentence-transformers/all-MiniLM-L6-v2`.
  3. **Indexed** using FAISS for fast similarity search.

#### Files Generated:

| File          | Purpose                                                   |
| ------------- | --------------------------------------------------------- |
| `index.faiss` | Binary FAISS index storing the text embeddings            |
| `index.pkl`   | Metadata file mapping vectors to original document chunks |

> ⚠️ **Note:** These files are re-generated when new PDFs are added to `/data/`.
