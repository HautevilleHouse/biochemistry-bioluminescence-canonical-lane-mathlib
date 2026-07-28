import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  forwardReactionRate : Prop
  reverseReactionRate : Prop
  equilibriumPosition : Prop
  leChatelierPrinciple : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  forwardReactionRateClosed : C.forwardReactionRate
  reverseReactionRateClosed : C.reverseReactionRate
  equilibriumPositionClosed : C.equilibriumPosition
  leChatelierPrincipleClosed : C.leChatelierPrinciple

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.forwardReactionRate ∧ C.reverseReactionRate ∧ C.equilibriumPosition ∧ C.leChatelierPrinciple

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) : ChemicalEquilibriumClosed C := by
  exact And.intro E.forwardReactionRateClosed (And.intro E.reverseReactionRateClosed (And.intro E.equilibriumPositionClosed E.leChatelierPrincipleClosed))

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse