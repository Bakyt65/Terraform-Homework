resource "aws_iam_user" "members" {
  for_each = toset(["jihyo", "sana", "momo", "dahyun"])
  name     = each.value
}

resource "aws_iam_group" "groupname" {
  name = "twice"
}

resource "aws_iam_group_membership" "group_members" {
  name = "kpop"

  users = [
    for i in aws_iam_user.members : i.name
  ]

  group = aws_iam_group.groupname.name
}
