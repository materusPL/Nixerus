{
  description = "Empty flake intended to be overriden with '--override-input' for non public modules";
  outputs = { self }: {
    homeModule = { };
    systemModule = { };
  };
}
