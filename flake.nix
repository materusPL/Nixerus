{
  description = "Empty flake for intended to be overriden for non public modules";
  outputs = { self }: {
    homeModule = { };
    systemModule = { };
  };
}
