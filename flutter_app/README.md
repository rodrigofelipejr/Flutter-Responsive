# Fluter Responsivo

## Pixel lógico

Em 1 cm de tela deve existir 38 pixels lógicos (isso na teoria).

## DevicePixelRatio

Pixel Físico / Pixel Lógico

## Observações

No flutter nos sempre trabalhamos com pixes lógicos

## Responsividade básica

- MediaQuery (width ou height)
- Expanded
- Flexible
- Wrap
- Align
- Align
- Positioned
- Orientation builder ou MediaQuery (orientation)
- FittedBox
- ListView
- GridView

## Responsividade Avançados

- Constraints
  - Limite min/max

## Mecanismo de renderização do Flutter

### 3 etapas 

- Constraints go down (Constraints vão para o filho)
- Sizes go up (Tamanhos vão para o pai)
- Parent sets position (O pai escolhe a posição)

### 3 regras

- O widget não pode ter o tamanho que quiser (o parent que vai definir seus constraints).
- O widget não sabe e não decide a sua posição na tela. 
- Impossível saber o tamanho e posição de um widget sem olhar a árvore como um todo.

### Widgets e seus comportamentos

Alguns widgets possuem comportamento específicos, como o container, que quando não possui um filho, pode ocupar o tamanho máximo disponível, ou quando possui filho e não existir atributos que definam seu tamanho, pode assumir o mesmo tamanho do filho.

Por isso, é bom compreender a arvore de widgets e próprio widget atual para entender o seu possível comportamento.

### Outros Widgets

- ConstrainedBox
  - POssui atributos como minHeight, maxHeight, minWidth, maxWidth.

- UnconstrainedBox
  - Permite ignora o tamanho do parent.
    - Pode ocorrer o erro de overflow.

- OverflowBox
  - Ignora o tamanho do parent.
    - Não ocorre o erro de overflow.

- LimitedBox
  - Permite limita o tamanho do filho.

- FittedBox
  - Aumenta ou diminui seu filho, dependendo do espaço disponível.
  - Não consegue escalar widgets com tamanhos infinitos.

- Row
  - Comportamento similar a UnconstrainedBox, com relação ao tamanho dos filhos...
  - Ela não define tamanho máximo para os filhos
  - Interessante utilização com **Expanded** e **Flexible**

- Constraint ***Loose***
  - O filho é obrigado a ter um tamanho máximo.

```flutter
BoxConstraints.loose (Size size)
  : minWidth = 0.0,
  : maxWidth = size.width,
  : minHeight = 0.0,
  : maxHeight = size.height,
```

- Constraint ***Tight***
  - Quando um valor de constraint é definido.
  - A tela impõe um tipo de constraint tight.

```flutter
BoxConstraints.tight (Size size)
  : minWidth = size.width,
  : maxWidth = size.width,
  : minHeight =size.height,
  : maxHeight = size.height,
```

- SizedBox.expand
  - O tamanho do filho seja exatamente o tamanho do parent.