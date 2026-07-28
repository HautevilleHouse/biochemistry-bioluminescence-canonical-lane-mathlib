import HautevilleHouse.BiochemistryBioluminescenceCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure QuantumYieldPackage (A : AdmissibleClass) where
  radiativeRate : Prop
  nonradiativeRate : Prop
  quantumYieldCalculated : Prop
  yieldClosure : Prop

structure QuantumYieldEvidence {A : AdmissibleClass}
    (Q : QuantumYieldPackage A) where
  radiativeRateClosed : Q.radiativeRate
  nonradiativeRateClosed : Q.nonradiativeRate
  quantumYieldCalculatedClosed : Q.quantumYieldCalculated
  yieldClosureClosed : Q.yieldClosure

def QuantumYieldClosed {A : AdmissibleClass}
    (Q : QuantumYieldPackage A) : Prop :=
  Q.radiativeRate ∧ Q.nonradiativeRate ∧ Q.quantumYieldCalculated ∧ Q.yieldClosure

theorem quantum_yield_closed_from_evidence
    {A : AdmissibleClass} (Q : QuantumYieldPackage A)
    (E : QuantumYieldEvidence Q) :
    QuantumYieldClosed Q := by
  exact And.intro E.radiativeRateClosed
    (And.intro E.nonradiativeRateClosed
      (And.intro E.quantumYieldCalculatedClosed E.yieldClosureClosed))

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse