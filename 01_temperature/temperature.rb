def ftoc(f)
  ((f.to_f - 32) / 1.8).round(1)
end

def ctof(c)
  ((c.to_f * 1.8) + 32).round(1)
end
