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