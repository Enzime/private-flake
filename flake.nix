{
  inputs.secret.url = "path:./secret";
  inputs.secret.flake = false;

  inputs.base.url = "github:Enzime/base-flake";
  inputs.base.inputs.secrets.follows = "secret";

  outputs = { self, base, ... }: {
    base-with-secret = base.outputs.secret;
  };
}
