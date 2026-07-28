import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure LuciferaseKineticsPackage where
  substrateBindingRate : Prop
  catalyticRate : Prop
  lightEmissionEfficiency : Prop
  quantumYield : Prop
  atpHydrolysisCoupling : Prop

structure LuciferaseKineticsEvidence (P : LuciferaseKineticsPackage) where
  substrateBindingRateClosed : P.substrateBindingRate
  catalyticRateClosed : P.catalyticRate
  lightEmissionEfficiencyClosed : P.lightEmissionEfficiency
  quantumYieldClosed : P.quantumYield
  atpHydrolysisCouplingClosed : P.atpHydrolysisCoupling

def LuciferaseKineticsClosed (P : LuciferaseKineticsPackage) : Prop :=
  P.substrateBindingRate ∧ P.catalyticRate ∧ P.lightEmissionEfficiency ∧ P.quantumYield ∧ P.atpHydrolysisCoupling

theorem luciferase_kinetics_closed_from_evidence
    (P : LuciferaseKineticsPackage) (E : LuciferaseKineticsEvidence P) :
    LuciferaseKineticsClosed P := by
  exact And.intro E.substrateBindingRateClosed
    (And.intro E.catalyticRateClosed
      (And.intro E.lightEmissionEfficiencyClosed
        (And.intro E.quantumYieldClosed E.atpHydrolysisCouplingClosed)))

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse