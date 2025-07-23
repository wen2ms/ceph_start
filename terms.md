| 名词                                                     | 简要解释                               |
| ------------------------------------------------------ | ---------------------------------- |
| **OSD（Object Storage Daemon）**                         | Ceph 数据的真正存储者，负责存储对象数据和数据复制        |
| **MON（Monitor）**                                       | 集群状态监控组件，维护集群的健康、成员状态              |
| **MDS（Metadata Server）**                               | 文件系统（CephFS）中处理元数据的组件              |
| **RADOS（Reliable Autonomic Distributed Object Store）** | Ceph 的底层对象存储层，所有数据最终都落在 RADOS 上    |
| **CRUSH**                                              | 分布式数据分布算法，无需中心元数据，自动决定对象应该存在哪个 OSD |
| **MGR (Manager)**               | 提供监控、可视化、扩展插件等管理能力              |
| **RGW (RADOS GateWay)** |Ceph 提供的对象存储接口，兼容主流云存储协议|
| **PG（Placement Group）** | Ceph 把数据映射到 OSD 的中间层机制，是数据在 Ceph 中的组织单位。|
| **RBD (RADOS block device)** | Ceph对外提供的块设备服务 |