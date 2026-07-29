
pandoc cv.md -o word-docs/cv.docx --reference-doc=word-docs/my_template.docx

pandoc cover-letter.md -o word-docs/cover-letter.docx --reference-doc=word-docs/my_template.docx


pandoc cv-extras/cv-extras-publications.md -o word-docs/cv-extras-publications.docx --reference-doc=word-docs/my_template_references.docx
