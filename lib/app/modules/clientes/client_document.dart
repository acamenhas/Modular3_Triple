const String subscriptionAllClients = """
subscription {
  llcl_clients(order_by: {name: asc}) {
    id
    name
  }
}
""";
