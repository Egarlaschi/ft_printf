# ft_printf

Reimplementazione della funzione `printf` della libreria standard C.
Il progetto fa parte del curriculum di **42** e ha come obiettivo approfondire la gestione delle **funzioni variadiche** (`stdarg.h`) e la formattazione dell'output.

## Descrizione

`ft_printf` riproduce il comportamento di `printf(3)`, restituendo il numero totale di caratteri stampati.
La funzione gestisce le seguenti **conversioni**:

| Specifier | Descrizione |
|:---------:|:------------|
| `%c` | Stampa un singolo carattere |
| `%s` | Stampa una stringa |
| `%p` | Stampa un puntatore in formato esadecimale |
| `%d` | Stampa un numero decimale (base 10) |
| `%i` | Stampa un intero in base 10 |
| `%u` | Stampa un numero decimale senza segno |
| `%x` | Stampa un numero in esadecimale (minuscolo) |
| `%X` | Stampa un numero in esadecimale (maiuscolo) |
| `%%` | Stampa il carattere percentuale |

## Prototipo

```c
int	ft_printf(const char *str, ...);
```

## Struttura del progetto

```
ft_printf/
├── ft_printf.c        # Funzione principale e dispatcher dei formati
├── ft_printf.h        # Header con prototipi e include
├── ft_print_c.c       # Gestione %c
├── ft_print_s.c       # Gestione %s
├── ft_print_d.c       # Gestione %d / %i
├── ft_print_u.c       # Gestione %u
├── ft_print_x.c       # Gestione %x
├── ft_print_x_up.c    # Gestione %X
├── ft_print_ptr.c     # Gestione %p
├── libft/             # Libreria libft (dipendenza)
└── Makefile
```

## Compilazione

```bash
make        # Compila libft e ft_printf → libftprintf.a
make clean  # Rimuove i file oggetto
make fclean # Rimuove file oggetto e libreria
make re     # Ricompila tutto da zero
```

La compilazione produce la libreria statica **`libftprintf.a`**.

## Utilizzo

Includi l'header e linka la libreria al tuo progetto:

```c
#include "ft_printf.h"

int	main(void)
{
	ft_printf("Ciao %s, il tuo numero è %d\n", "mondo", 42);
	return (0);
}
```

```bash
cc main.c -L. -lftprintf -o test
```

## Funzioni esterne utilizzate

- `write`
- `va_start` / `va_arg` / `va_copy` / `va_end`

## Risorse Utili

- [Variadic Arguments in C (stdarg.h)](https://en.cppreference.com/w/c/variadic) — Documentazione di riferimento per le funzioni con numero variabile di argomenti.
- [Secrets of printf](https://www.academia.edu/24830349/Secrets_of_printf) — Approfondimento sul funzionamento e sul design interno della funzione printf.
- **Tester per la validazione**:
  - [Tripouille/printfTester](https://github.com/Tripouille/printfTester)
  - [paulo-santana/ft_printf_tester](https://github.com/paulo-santana/ft_printf_tester)

## Autore

**egarlasc** — [42 Roma](https://42roma.it)
