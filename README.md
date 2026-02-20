# 🧠 Compiler with Flex and Bison

This project is a simple compiler built using [Flex](https://github.com/westes/flex) (for lexical analysis) and [Bison](https://www.gnu.org/software/bison/) (for syntax analysis). It recognizes and validates the structure of a fictional language, serving as a foundation for learning compiler construction. 

## 📚 Features

- 🔍 **Lexical Analysis:** Identifies identifiers, keywords, operators, and delimiters.
- 🧾 **Syntax Analysis:** Checks the structure of the code according to a defined grammar.
- 🧠 **Error Messages:** Displays where lexical or syntax errors occur.
- 🧪 **Test with .txt Files:** Reads source code from external files.

## 🛠️ Technologies

- C
- Flex
- Bison
- Makefile (for automated building)

## 🚀 How to Use

### 1. Clone the Repository

```bash
git clone https://github.com/Brun0r0/Compiler-with-flex-and-parser-bison.git
cd Compiler-with-flex-and-parser-bison
```

### 2. Compile the Project

Make sure you have `flex`, `bison`, and `gcc` installed.

```bash
make
```

### 3. Run the Compiler

You can test the compiler with any `.txt` file. Example:

```bash
./parser exemplo.txt
```

> The file `exemplo.txt` should contain code written in the fictional language defined by the compiler.

## 📁 Project Structure

```
.
├── grammar.y         # Bison file (syntax)
├── lexer.l           # Flex file (lexical)
├── exemplo.txt       # Example input code
├── Makefile          # Build automation
└── README.md         # This file
```

## 📌 Example Input Code

```c
int x;
x = 10;
if (x > 5) {
  x = x + 1;
}
```

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
