use "crypto"

actor Main
  let datedow: String = "hello"
  let h: String

  new create(env: Env) =>
    h = ToHexString.apply(MD5.apply(datedow))
    let la = "0." + h.trim(0, 16)
    let lo = "0." + h.trim(16, 32)
    env.out.print(h)
    env.out.print(la)
    env.out.print(lo)
    env.out.print(la.f32().string())
    env.out.print(lo.f32().string())
