const String subscriptionAllUsers = """
subscription {
  llcl_users(order_by: {name: asc}) {
    id
    name
  }
}
""";
