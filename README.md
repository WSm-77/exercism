# Exercism Solutions - Elixir Track

This repository contains my solutions to various coding exercises from [Exercism](https://exercism.org/), specifically for the Elixir programming track. Exercism is a platform for learning programming languages through practice problems and mentorship.

## Introduction

[Exercism](https://exercism.org/) provides coding practice through small, self-contained exercises that help you learn new concepts, syntax, and ways of thinking about problems. This repository serves as a collection of my solutions as I progress through the Elixir track.

Each exercise focuses on specific concepts in Elixir programming, from basic syntax and data structures to more advanced functional programming patterns and OTP (Open Telecom Platform) principles.

## Getting Started

### Prerequisites

To run these solutions locally, you'll need:

- **Elixir** (version 1.10 or later) - [Installation Guide](https://elixir-lang.org/install.html)
- **Erlang** (automatically installed with Elixir)
- **Git** for cloning the repository

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/WSm-77/exercism.git
   cd exercism
   ```

2. Verify your Elixir installation:
   ```bash
   elixir --version
   ```

## Usage

### Directory Structure

The repository is organized as follows:

```
solutions/
└── elixir/
    ├── exercise-name/
    │   ├── 1/          # First iteration/solution
    │   │   └── lib/
    │   │       └── exercise_name.ex
    │   ├── 2/          # Second iteration (if applicable)
    │   │   └── lib/
    │   │       └── exercise_name.ex
    │   └── ...
    └── ...
```

Each exercise may have multiple iterations representing different approaches or improvements to the solution.

### Running Solutions

To test a specific solution:

1. Navigate to the exercise directory:
   ```bash
   cd solutions/elixir/exercise-name/1
   ```

2. Start an Elixir interactive session:
   ```bash
   iex -S mix
   ```

3. Test the module functions:
   ```elixir
   # Example for the Hello World exercise
   HelloWorld.hello()
   ```

### Completed Exercises

This repository currently includes solutions for the following exercises:

- **acronym** - Generate acronyms from strings
- **city-office** - Work with forms and data validation
- **freelancer-rates** - Calculate freelancer rates and budgets
- **german-sysadmin** - Handle German character sanitization
- **hello-world** - Basic function implementation
- **lasagna** - Work with functions and calculations
- **log-level** - Pattern matching and conditional logic
- **name-badge** - String manipulation and formatting
- **pacman-rules** - Boolean logic and game rules
- **resistor-color** - Working with lists and atoms
- **secrets** - Higher-order functions and closures

## Contribution Guidelines

### Adding New Solutions

If you'd like to contribute or suggest improvements:

1. **Fork** the repository
2. **Create a feature branch** from `main`:
   ```bash
   git checkout -b feature/new-exercise-solution
   ```
3. **Add your solution** following the existing directory structure:
   ```
   solutions/elixir/exercise-name/iteration-number/lib/exercise_name.ex
   ```
4. **Ensure your code follows Elixir conventions**:
   - Use `snake_case` for function and variable names
   - Use descriptive function names
   - Include documentation when appropriate
   - Follow the exercise specifications exactly

5. **Test your solution** to ensure it works correctly
6. **Commit your changes** with descriptive commit messages:
   ```bash
   git commit -m "Add solution for exercise-name exercise"
   ```
7. **Push to your fork** and create a **Pull Request**

### Code Quality

- Write clean, readable code that follows Elixir idioms
- Use pattern matching effectively
- Leverage Elixir's functional programming features
- Consider performance and memory usage for larger problems
- Document complex algorithms or business logic

### Multiple Iterations

If you have multiple approaches to solving an exercise:

- Create a new iteration directory (e.g., `2/`, `3/`)
- Include a comment in the code explaining the difference or improvement
- Maintain all working solutions for learning purposes

## Learning Resources

- [Exercism Elixir Track](https://exercism.org/tracks/elixir)
- [Elixir Official Documentation](https://elixir-lang.org/docs.html)
- [Elixir School](https://elixirschool.com/)
- [Programming Elixir by Dave Thomas](https://pragprog.com/titles/elixir16/programming-elixir-1-6/)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## About

Created by Wiktor Sędzimir ([@WSm-77](https://github.com/WSm-77)) as part of learning Elixir through the Exercism platform.

Feel free to explore the solutions, suggest improvements, or use them as reference for your own learning journey!