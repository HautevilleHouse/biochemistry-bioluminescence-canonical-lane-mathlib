import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure ThermodynamicsBioluminescencePackage where
  enthalpyChange : Prop
  entropyChange : Prop
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop

structure ThermodynamicsBioluminescenceEvidence (T : ThermodynamicsBioluminescencePackage) where
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant

def ThermodynamicsBioluminescenceClosed (T : ThermodynamicsBioluminescencePackage) : Prop :=
  T.enthalpyChange ∧ T.entropyChange ∧ T.gibbsFreeEnergy ∧ T.equilibriumConstant

theorem thermodynamics_bioluminescence_closed_from_evidence (T : ThermodynamicsBioluminescencePackage) (E : ThermodynamicsBioluminescenceEvidence T) : ThermodynamicsBioluminescenceClosed T := by
  exact And.intro E.enthalpyChangeClosed (And.intro E.entropyChangeClosed (And.intro E.gibbsFreeEnergyClosed E.equilibriumConstantClosed))

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse