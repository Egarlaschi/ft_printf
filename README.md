*This project has been created as part of the 42 curriculum by egarlasc*

# **ft\_printf**

Re-implementation of the standard C library function printf.  
This project is part of the **42** curriculum and aims to deepen the understanding of **variadic functions** (stdarg.h) and output formatting.

## **Description**

ft\_printf replicates the behavior of printf(3), returning the total number of characters printed.  
The function handles the following **conversions**:

| Specifier | Description |
| :---- | :---- |
| %c | Prints a single character |
| %s | Prints a string |
| %p | Prints a pointer in hexadecimal format |
| %d | Prints a decimal (base 10\) number |
| %i | Prints an integer in base 10 |
| %u | Prints an unsigned decimal number |
| %x | Prints a number in hexadecimal (lowercase) |
| %X | Prints a number in hexadecimal (uppercase) |
| %% | Prints a percent sign |

## **Prototype**

int	ft\_printf(const char \*str, ...);

## **Project Structure**

ft\_printf/  
├── ft\_printf.c        \# Main function and format dispatcher  
├── ft\_printf.h        \# Header with prototypes and includes  
├── ft\_print\_c.c       \# Handles %c  
├── ft\_print\_s.c       \# Handles %s  
├── ft\_print\_d.c       \# Handles %d / %i  
├── ft\_print\_u.c       \# Handles %u  
├── ft\_print\_x.c       \# Handles %x  
├── ft\_print\_x\_up.c    \# Handles %X  
├── ft\_print\_ptr.c     \# Handles %p  
├── libft/             \# libft library (dependency)  
└── Makefile

## **Compilation**

make        \# Compiles libft and ft\_printf → libftprintf.a  
make clean  \# Removes object files  
make fclean \# Removes object files and the library  
make re     \# Recompiles everything from scratch

Compilation produces the static library **libftprintf.a**.

## **Usage**

Include the header and link the library to your project:  
\#include "ft\_printf.h"

int	main(void)  
{  
	ft\_printf("Hello %s, your number is %d\\n", "world", 42);  
	return (0);  
}

cc main.c \-L. \-lftprintf \-o test

## **External Functions Used**

* write  
* va\_start / va\_arg / va\_copy / va\_end

## **Useful Resources**

* [Variadic Arguments in C (stdarg.h)](https://en.cppreference.com/w/c/variadic) — Reference documentation for functions with a variable number of arguments.  
* [Secrets of printf](https://www.academia.edu/24830349/Secrets_of_printf) — In-depth look at how the printf function works and its internal design.  
* **Testers for validation**:  
  * [Tripouille/printfTester](https://github.com/Tripouille/printfTester)  
  * [paulo-santana/ft\_printf\_tester](https://github.com/paulo-santana/ft_printf_tester)
### **AI Usage**
AI was used to make di readme file and to debug in dark times
