<<<<<<< HEAD
resource "alicloud_vpc" "HWvpc" {
  vpc_name   = "HWvpc"
  cidr_block = "10.0.0.0/8"
}

data "alicloud_zones" "availability_zones" {
  available_resource_creation = "VSwitch"
}

resource "alicloud_vswitch" "public" {
  vswitch_name = "public"
  cidr_block   = "10.0.1.0/24"
  vpc_id       = alicloud_vpc.HWvpc.id
  zone_id      = data.alicloud_zones.availability_zones.zones.0.id
}


resource "alicloud_vswitch" "private" {
  vswitch_name = "private"
  cidr_block   = "10.0.2.0/24"
  vpc_id       = alicloud_vpc.HWvpc.id
  zone_id      = data.alicloud_zones.availability_zones.zones.0.id
}


=======
resource "alicloud_vpc" "HWvpc" {
  vpc_name   = "HWvpc"
  cidr_block = "10.0.0.0/8"
}

data "alicloud_zones" "availability_zones" {
  available_resource_creation = "VSwitch"
}

resource "alicloud_vswitch" "public" {
  vswitch_name = "public"
  cidr_block   = "10.0.1.0/24"
  vpc_id       = alicloud_vpc.HWvpc.id
  zone_id      = data.alicloud_zones.availability_zones.zones.0.id
}


resource "alicloud_vswitch" "private" {
  vswitch_name = "private"
  cidr_block   = "10.0.2.0/24"
  vpc_id       = alicloud_vpc.HWvpc.id
  zone_id      = data.alicloud_zones.availability_zones.zones.0.id
}


>>>>>>> fe66b443b2af0bcc08ac8acd3d69c57b91576a9d
