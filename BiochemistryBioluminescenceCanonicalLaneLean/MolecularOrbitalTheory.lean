import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  homoLumoGap : Prop
  electronTransition : Prop
  orbitalSymmetry : Prop
  spinConservation : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  homoLumoGapClosed : M.homoLumoGap
  electronTransitionClosed : M.electronTransition
  orbitalSymmetryClosed : M.orbitalSymmetry
  spinConservationClosed : M.spinConservation

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.homoLumoGap ∧ M.electronTransition ∧ M.orbitalSymmetry ∧ M.spinConservation

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) : MolecularOrbitalTheoryClosed M := by
  exact And.intro E.homoLumoGapClosed (And.intro E.electronTransitionClosed (And.intro E.orbitalSymmetryClosed E.spinConservationClosed))

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse