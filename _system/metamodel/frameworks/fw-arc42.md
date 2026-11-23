---
type: metamodel
construct: framework
name: arc42
aliases: [fw-arc42]
area: architecture
blocks:
  - {id: A1, title: "Solution Strategy", types: [solution-strategy], scope: in}
  - {id: A2, title: "Building Block View", types: [building-block], scope: in}
  - {id: A3, title: "Deployment View", types: [deployment-node], projections: [deployment-diagram], scope: in}
  - {id: A4, title: "Runtime View", types: [runtime-scenario], scope: in}
  - {id: A5, title: "Crosscutting Concepts", types: [crosscutting-concept], scope: in}
---

# Framework: arc42

The architecture cabinet: A1 [[type-solution-strategy]], A2 [[type-building-block]],
A3 [[type-deployment-node]], A4 [[type-runtime-scenario]], A5
[[type-crosscutting-concept]]. Section 9 (decisions) lives in commons C7.
