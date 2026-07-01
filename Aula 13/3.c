// Array Original: 5 4 3 2 1

// 1° Execução do Laço Externo (i = 0)

  // 1° Execução do Laço Interno (i = 0, j = 0)
    // array[j] > array[j + 1]
    // array[0] > array[1]
    // 5 > 4 -> Troca
    // Resultado: 4 5 3 2 1

  // 2° Execução do Laço Interno (i = 0, j = 1)
    // array[j] > array[j + 1]
    // array[1] > array[2]
    // 5 > 3 -> Troca
    // Resultado: 4 3 5 2 1

  // 3° Execução do Laço Interno (i = 0, j = 2)
    // array[j] > array[j + 1]
    // array[2] > array[3]
    // 5 > 2 -> Troca
    // Resultado: 4 3 2 5 1

  // 4° Execução do Laço Interno (i = 0, j = 3)
    // array[j] > array[j + 1]
    // array[3] > array[4]
    // 5 > 1 -> Troca
    // Resultado: 4 3 2 1 5
  
  // Condição do Laço Interno (4 < 4)

// Array Atual: 4 3 2 1 5

// 2° Execução do Laço Externo (i = 1)

  // 1° Execução do Laço Interno (i = 1, j = 0)
    // array[j] > array[j + 1]
    // array[0] > array[1]
    // 4 > 3 -> Troca
    // Resultado: 3 4 2 1 5

  // 2° Execução do Laço Interno (i = 1, j = 1)
    // array[j] > array[j + 1]
    // array[1] > array[2]
    // 4 > 2 -> Troca
    // Resultado: 3 2 4 1 5

  // 3° Execução do Laço Interno (i = 1, j = 2)
    // array[j] > array[j + 1]
    // array[2] > array[3]
    // 4 > 1 -> Troca
    // Resultado: 3 2 1 4 5

  // 4° Execução do Laço Interno (i = 1, j = 3)
    // array[j] > array[j + 1]
    // array[3] > array[4]
    // 4 > 5 -> Não Troca
    // Resultado: 3 2 1 4 5

// Array Atual: 3 2 1 4 5

// 3° Execução do Laço Externo (i = 2)

// 1° Execução do Laço Interno (i = 2, j = 0)
    // array[j] > array[j + 1]
    // array[0] > array[1]
    // 3 > 2 -> Troca
    // Resultado: 2 3 1 4 5

  // 2° Execução do Laço Interno (i = 2, j = 1)
    // array[j] > array[j + 1]
    // array[1] > array[2]
    // 3 > 1 -> Troca
    // Resultado: 2 1 3 4 5

  // 3° Execução do Laço Interno (i = 2, j = 2)
    // array[j] > array[j + 1]
    // array[2] > array[3]
    // 3 > 4 -> Não Troca
    // Resultado: 2 1 3 4 5

  // 4° Execução do Laço Interno (i = 2, j = 3)
    // array[j] > array[j + 1]
    // array[3] > array[4]
    // 4 > 5 -> Não Troca
    // Resultado: 2 1 3 4 5

// Array Atual: 2 1 3 4 5

// 4° Execução do Laço Externo (i = 3)

// 1° Execução do Laço Interno (i = 3, j = 0)
    // array[j] > array[j + 1]
    // array[0] > array[1]
    // 2 > 1 -> Troca
    // Resultado: 1 2 3 4 5

  // 2° Execução do Laço Interno (i = 3, j = 1)
    // array[j] > array[j + 1]
    // array[1] > array[2]
    // 2 > 3 -> Não Troca
    // Resultado: 1 2 3 4 5

  // 3° Execução do Laço Interno (i = 3, j = 2)
    // array[j] > array[j + 1]
    // array[2] > array[3]
    // 3 > 4 -> Não Troca
    // Resultado: 1 2 3 4 5

  // 4° Execução do Laço Interno (i = 3, j = 3)
    // array[j] > array[j + 1]
    // array[3] > array[4]
    // 4 > 5 -> Não Troca
    // Resultado: 1 2 3 4 5
  

// Resultado Final: 1 2 3 4 5
