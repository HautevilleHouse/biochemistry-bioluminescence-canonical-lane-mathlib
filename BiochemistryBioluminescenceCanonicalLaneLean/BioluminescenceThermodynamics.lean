import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure BioluminescenceThermodynamicsPackage where
  reactionGibbsFreeEnergy : Prop
  activationEnergy : Prop
  equilibriumConstant : Prop
  entropicContribution : Prop
  temperatureDependence : Prop

structure BioluminescenceThermodynamicsEvidence (T : BioluminescenceThermodynamicsPackage) where
  reactionGibbsFreeEnergyClosed : T.reactionGibbsFreeEnergy
  activationEnergyClosed : T.activationEnergy
  equilibriumConstantClosed : T.equilibriumConstant
  entropicContributionClosed : T.entropicContribution
  temperatureDependenceClosed : T.temperatureDependence

def BioluminescenceThermodynamicsClosed (T : BioluminescenceThermodynamicsPackage) : Prop :=
  T.reactionGibbsFreeEnergy ∧ T.activationEnergy ∧ T.equilibriumConstant ∧ T.entropicContribution ∧ T.temperatureDependence

theorem bioluminescence_thermodynamics_closed_from_evidence
    (T : BioluminescenceThermodynamicsPackage) (E : BioluminescenceThermodynamicsEvidence T) :
    BioluminescenceThermodynamicsClosed T := by
  exact And.intro E.reactionGibbsFreeEnergyClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.equilibriumConstantClosed
        (And.intro E.entropicContributionClosed E.temperatureDependenceClosed)))

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse