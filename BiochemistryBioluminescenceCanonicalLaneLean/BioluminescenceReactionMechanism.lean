import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure BioluminescenceReactionMechanismPackage where
  lightEmissionStep : Prop
  substrateBinding : Prop
  oxygenParticipation : Prop
  productRelease : Prop

structure BioluminescenceReactionMechanismEvidence (B : BioluminescenceReactionMechanismPackage) where
  lightEmissionStepClosed : B.lightEmissionStep
  substrateBindingClosed : B.substrateBinding
  oxygenParticipationClosed : B.oxygenParticipation
  productReleaseClosed : B.productRelease

def BioluminescenceReactionMechanismClosed (B : BioluminescenceReactionMechanismPackage) : Prop :=
  B.lightEmissionStep ∧ B.substrateBinding ∧ B.oxygenParticipation ∧ B.productRelease

theorem bioluminescence_reaction_mechanism_closed_from_evidence (B : BioluminescenceReactionMechanismPackage) (E : BioluminescenceReactionMechanismEvidence B) : BioluminescenceReactionMechanismClosed B := by
  exact And.intro E.lightEmissionStepClosed (And.intro E.substrateBindingClosed (And.intro E.oxygenParticipationClosed E.productReleaseClosed))

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse