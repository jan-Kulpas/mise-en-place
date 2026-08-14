// #import "@local/mise-en-place:0.1.0": recipe
#import "lib.typ": *

#let recipe-step-by-step(..args) = {
  for idx in range(args.len()) {
    recipe(..args.pos().slice(0, idx + 1))
  }
}

#recipe-step-by-step(
  ingredient[1 cup boiling water],
  ingredient[2.5 tsp baking soda],
  step(combine: 2)[mix],
  step[let cool],
  ingredient[1/2 tsp salt],
  ingredient[300g flour],
  step(combine: 2)[cream],
  ingredient[2 eggs],
  step[beat],
  step(combine: 2)[cream],
  ingredient[1/2 cup butter],
  ingredient[100g sugar],
  ingredient[150 All-Bran cereal],
  ingredient[100g Bran Flakes cereal],
  step(combine: 6)[mix, alternating],
  ingredient[1 pint buttermilk],
  step(combine: 2)[mix],
  step[refrigerate overnight],
  step[bake as \~24 muffins at 400#{ sym.degree }F for 25 min.],
)
