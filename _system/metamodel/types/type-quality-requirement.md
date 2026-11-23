---
type: metamodel
construct: type
name: quality-requirement
aliases: [type-quality-requirement, QR]
prefix: QR
folder: wiki/quality-requirements
template: _templates/quality-requirement.md
label: Quality requirement
label_de: Qualitätsanforderung
block: C1
lifecycle: content
stereotypes: []
naming: "quality goal"
fields:
  - {name: attribute, kind: enum, values: [performance, reliability, security, usability, maintainability, portability, compatibility, functional-suitability], doc: "ISO 25010"}
  - {name: priority, kind: enum, values: [must, should, could, wont], doc: "MoSCoW"}
  - {name: testable, kind: bool, doc: "true once the measure is verifiable; false ⇒ inspect raises an Issue"}
anchors: [MoSCoW, req42]
projections: []
---

# Type: quality requirement

req42 block 06: ISO 25010 attribute plus an ATAM-style scenario (stimulus,
response, measure). Shared with arc42 (commons block C1).
