data "template_file" "iam-policy" {
  template = "${file("iam-policy.json")}"

  vars {
    key-name = "${var.key-name}"
  }
}

resource "aws_iam_policy" "snapshot-policy" {
  name        = "snapshot-policy"
  path        = "/"
  description = "Allows snapshots with a CanDelete tag to be deleted"

  policy = "${data.template_file.iam-policy.rendered}"
}
