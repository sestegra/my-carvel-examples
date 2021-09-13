load("@ytt:data", "data")
load("@ytt:assert", "assert")

params = [ 'username', 'password']
for param in params:
  data.values[param] or assert.fail("Missing {}".format(param))
end
