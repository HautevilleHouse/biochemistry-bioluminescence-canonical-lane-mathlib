import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryBioluminescenceCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure BioluminescenceSystem where
  substrate : Type u
  enzyme : Type v
  complex : Type w
  rateConstantForward : ℝ
  rateConstantReverse : ℝ
  bindingAffinity : ℝ
  catalyticRate : ℝ
  bindingAffinityPositive : bindingAffinity > 0
  catalyticRatePositive : catalyticRate > 0
  conclusion : bindingAffinityPositive ∧ catalyticRatePositive

structure KineticsPackage (S : BioluminescenceSystem) where
  substrateConcentration : ℝ
  enzymeConcentration : ℝ
  complexConcentration : ℝ
  productConcentration : ℝ
  time : ℝ
  reactionRate : ℝ
  michaelisConstant : ℝ
  rateEquationSatisfied : reactionRate = S.catalyticRate * enzymeConcentration * substrateConcentration / (michaelisConstant + substrateConcentration)
  massConservation : enzymeConcentration + complexConcentration = S.enzymeConcentration

structure KineticsEvidence {S : BioluminescenceSystem} (K : KineticsPackage S) where
  rateEquationClosed : K.rateEquationSatisfied
  massConservationClosed : K.massConservation

def KineticsClosed {S : BioluminescenceSystem} (K : KineticsPackage S) : Prop :=
  K.rateEquationSatisfied ∧ K.massConservation

theorem kinetics_closed_from_evidence {S : BioluminescenceSystem} (K : KineticsPackage S)
    (E : KineticsEvidence K) : KineticsClosed K := by
  exact And.intro E.rateEquationClosed E.massConservationClosed

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse