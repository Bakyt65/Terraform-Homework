resource "aws_iam_user" "singer1" {
  name = "jenny"
}

resource "aws_iam_user" "singer2" {
  name = "rose"
}

resource "aws_iam_user" "singer3" {
  name = "lisa"
}

resource "aws_iam_user" "singer4" {
  name = "jisoo"
}



 resource "aws_iam_group" "blackpink1" {
  name = "blackpink"
}



resource "aws_iam_group_membership" "k-pop1" {
  name = "tf-testing-group-membership1"

  users = [
    aws_iam_user.singer1.name,
    aws_iam_user.singer2.name,
    aws_iam_user.singer3.name,
    aws_iam_user.singer4.name,

  ]

  group = aws_iam_group.blackpink1.name

}





resource "aws_iam_user" "singer5" {
  name = "jihyo"
}

resource "aws_iam_user" "singer6" {
  name = "sana"
}

resource "aws_iam_user" "singer7" {
  name = "momo"
}

resource "aws_iam_user" "singer8" {
  name = "dahyun"
}



 resource "aws_iam_group" "twice1" {
  name = "twice"
}



resource "aws_iam_group_membership" "k-pop2" {
  name = "tf-testing-group-membership2"

  users = [
    aws_iam_user.singer5.name,
    aws_iam_user.singer6.name,
    aws_iam_user.singer7.name,
    aws_iam_user.singer8.name,

  ]

  group = aws_iam_group.twice1.name

}