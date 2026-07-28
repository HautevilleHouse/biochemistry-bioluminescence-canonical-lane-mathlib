import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  catalystEffect : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  activationEnergyClosed : R.activationEnergy
  temperatureDependenceClosed : R.temperatureDependence
  catalystEffectClosed : R.catalystEffect

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.activationEnergy ∧ R.temperatureDependence ∧ R.catalystEffect

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed (And.intro E.activationEnergyClosed (And.intro E.temperatureDependenceClosed E.catalystEffectClosed))

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse