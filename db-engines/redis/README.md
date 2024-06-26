## [Data types](https://redis.io/docs/latest/develop/data-types/)

### Strings

String 类型能存储的数据类型包括字符串、整数或者浮点数。String 类型是二进制安全的，也就是说，一个 Redis 的 String 可以包含任何数据，例如 jpg 图片或者序列化的对象。

它可以应用于多种场景，包括：

1. **缓存**：由于 Redis 的高性能特性，String 常常被用作缓存，存储网页内容、会话（session）、图片等。
2. **计数器**：Redis 的 String 类型可以将字符串解析为整数，并提供了自增 (`INCR`, `INCRBY`) 和自减 (`DECR`, `DECRBY`) 操作，非常适合实现计数器功能，如网页访问计数、下载计数等。
3. **分布式锁**：`SET key value EX seconds NX` 命令可以设置一个带有过期时间的键，如果键已经存在则不进行任何操作。这个原子性的操作可以用来实现分布式锁。
4. **数据过期处理**：通过 `SETEX` 命令，可以设置键值对的同时设置过期时间，适用于一些需要自动过期的场景，如验证码、临时登录凭证等。
5. **唯一序列号**：利用 `INCR` 命令，可以生成全局唯一的序列号。

使用 Redis 的 Strings 功能时，需要注意以下几点：

1. **数据类型**：String 可以存储字符串、整数或者浮点数，但是在 Redis 中，它们都被视为字符串处理。
2. **二进制安全**：Redis 的 String 是二进制安全的，可以存储任何数据，包括二进制数据。
3. **原子操作**：Redis 提供了一些原子操作命令，如 `INCR`, `DECR`, `APPEND` 等，可以保证在并发环境下的数据一致性。
4. **过期时间**：可以为 String 设置过期时间，过期后 Redis 会自动删除它。但需要注意的是，如果在过期时间到达之前对 String 进行了操作，过期时间可能会被清除。

### Hashes

Hash 是一个字符串字段和字符串值之间的映射表，它的添加、删除操作都是 O(1)（常数时间复杂度）。Hash 特别适合用于存储对象。

Hashes 数据类型非常适合用于存储对象，因此在以下场景中常常被使用：

1. **对象存储**：Hashes 可以存储对象的各个字段和字段的值，例如，存储用户对象，包括用户的 ID、用户名、密码、邮箱等。
2. **数据缓存**：Hashes 可以作为缓存来使用，存储需要快速查询的大量数据。例如，可以将数据库中的一部分数据缓存在 Redis 中，提高数据查询的速度。
3. **计数器**：Hashes 的 `HINCRBY` 命令可以对指定字段的值进行增加，非常适合实现计数器功能。例如，可以用来记录网站的页面访问次数或者用户的积分等。
4. **数据分析**：Hashes 可以用来存储多个相关的数据，进行数据分析。例如，可以用来存储用户的行为数据，进行用户行为分析。

### Lists

Lists 是简单的字符串列表，按照插入顺序排序。可以添加一个元素到列表的头部（左边）或者尾部（右边）。

Lists 数据类型可以应用于多种场景，包括：

1. **消息队列**：可以使用 `LPUSH` 命令将任务添加到队列，然后工作线程可以使用 `RPOP` 命令来获取任务并执行。如果需要阻塞队列，也可以使用 `BRPOP` 或 `BLPOP` 命令。
2. **活动记录**：可以使用 `LPUSH` 命令和 `LTRIM` 命令来记录最新的活动。例如，可以记录用户的最近 10 次登录时间。
3. **栈**：通过 `LPUSH` 和 `LPOP` 命令，可以实现后进先出（LIFO）的栈结构。
4. **发布/订阅**：可以利用 Lists 实现简单的发布/订阅模式。发布者 `LPUSH` 消息到列表，订阅者 `RPOP` 消息。
5. **实现历史记录**：通过 Lists，可以方便地实现历史记录功能，如用户的浏览历史、搜索历史等。

### Sets

Sets 是字符串的无序集合。和 Lists 类型不同，Sets 类型中的元素是唯一的，不会出现重复的元素。

Sets 数据类型可以应用于多种场景，包括：

1. **社交网络**：可以使用 Sets 来存储用户的关注者或者粉丝。例如，`SADD user:1:followers "user2"` 表示用户 2 关注了用户 1。然后可以使用 `SCARD` 来获取用户的关注者数量，使用 `SMEMBERS` 来获取用户的所有关注者，使用 `SISMEMBER` 来检查用户是否关注了另一个用户。

2. **标签系统**：可以使用 Sets 来实现标签系统。例如，每个标签对应一个集合，集合中存储了所有添加了该标签的项目。然后可以使用 `SINTER` 来获取多个标签的交集，即同时具有多个标签的项目。

3. **数据分析**：可以使用 Sets 来进行数据分析。例如，可以使用 `SADD` 来记录每天访问网站的用户，然后使用 `SUNION` 来获取一段时间内访问网站的所有用户，使用 `SDIFF` 来获取只在某一天访问网站的用户。

4. **去重功能**：由于 Sets 中的元素是唯一的，所以可以使用 Sets 来进行去重。例如，可以使用 `SADD` 来添加元素，如果添加的元素已经存在，那么 `SADD` 命令不会有任何效果。

### Sorted Sets

Sorted Sets 是字符串的集合，与 Sets 不同的是，每个元素都会关联一个 double 类型的分数。Redis 通过分数来为集合中的成员进行从小到大的排序。Sorted Sets 成员是唯一的，但分数(score)可以重复。

Redis 的 Sorted Sets 数据类型可以应用于多种场景，包括：

1. **排行榜应用**：可以用来实现各种排行榜。例如，可以使用 `ZADD` 命令来为每个用户添加分数，然后使用 `ZRANGE` 或 `ZREVRANGE` 命令来获取排名。

2. **时间线应用**：可以用来实现时间线功能。例如，可以使用时间戳作为分数，用户 ID 作为成员，来记录用户的行为。

3. **延时队列**：可以用来实现延时队列。例如，可以使用预期执行时间作为分数，任务 ID 作为成员，然后使用 `ZRANGE` 命令配合时间戳来获取需要执行的任务。

4. **数据统计**：可以用来进行数据统计。例如，可以使用 `ZCOUNT` 命令来统计在某个分数范围内的成员数量。

使用 Redis 的 Sorted Sets 功能时，需要注意以下几点：

1. **分数值**：Sorted Sets 中的每个元素都需要一个分数值，用于排序。这个分数可以是整数或浮点数，但必须是数字。
2. **元素唯一性**：在 Sorted Sets 中，元素必须是唯一的，但分数可以重复。如果添加一个已经存在的元素，Redis 会更新该元素的分数。
3. **排序规则**：Sorted Sets 中的元素默认按照分数的升序排序。如果分数相同，元素则按照字典序进行排序。
4. **操作复杂度**：大部分 Sorted Sets 的操作复杂度都是 O(log(N))，但如果操作的元素数量非常大，可能会影响 Redis 的性能。
5. **范围查询**：Sorted Sets 提供了范围查询的功能，可以根据分数或者排名来获取元素。但如果查询的范围过大，可能会影响查询的效率。

### Streams

Redis 的 Streams 是一个新的数据类型，从 Redis 5.0 版本开始引入，主要用于实现消息队列的功能，类似于 Apache Kafka。

Streams 数据类型的主要特点包括：

1. **持久化**：Streams 数据类型的数据可以持久化到磁盘，即使在系统崩溃后也可以恢复。
2. **消费者组**：Streams 支持消费者组的概念，可以实现消息的广播和分区。
3. **消息确认**：Streams 支持消息确认机制，可以确保消息被正确处理。
4. **历史记录**：Streams 可以保留所有的历史消息，可以用于数据分析或者故障排查。

使用 Redis 的 Streams 功能时，需要注意以下几点：

1. **数据持久化**：Streams 是 Redis 的一种数据类型，如果需要保证数据的持久性，需要开启 Redis 的持久化功能，如 RDB 或 AOF。

2. **消费者组**：在使用 Streams 进行消息队列处理时，可以使用消费者组来实现消息的分发和处理。需要注意的是，消费者组一旦创建，不能修改其 ID 或删除。

3. **消息确认**：在消费者组中，消费者需要对读取的消息进行确认，否则 Redis 会认为这些消息未被处理，可能会再次将其分发给消费者。

4. **内存管理**：Streams 使用一种特殊的数据结构来存储数据，这种数据结构在存储大量小消息时非常高效。但是，如果消息的大小非常大，或者消息的数量非常多，可能会消耗大量的内存。

5. **避免阻塞**：在使用 `XREAD` 或 `XREADGROUP` 命令时，如果没有新的消息，这些命令可能会阻塞。为了避免这种情况，可以设置阻塞时间或使用非阻塞模式。

6. **消息顺序**：Streams 保证消息的插入顺序，但是在消费者组中，不同的消费者可能会以不同的顺序处理消息。如果需要严格的消息顺序，需要使用单个消费者来处理消息。

### Geospatial indexes

Geospatial indexes 是一种特殊的数据类型，主要用于处理地理位置相关的数据。它基于 ==Sorted Sets== 数据类型，但提供了一些额外的命令来处理地理位置信息。

Geospatial indexes 的主要特点包括：

1. **存储地理位置**：可以存储经度和纬度表示的地理位置信息。

2. **计算距离**：可以计算两个地理位置之间的距离。

3. **范围查询**：可以查询指定范围内的地理位置。

使用 Redis 的 GEO 功能时，需要注意以下几点：

1. **数据规模**：如果数据量过大（例如超过亿级别），可能需要对数据进行拆分，按照地理区域（如国家、省份、城市等）进行拆分，以降低单个 zset 集合的大小。

2. **集群环境**：在 Redis 集群环境中，如果单个 key 的数据过大，可能会对集群的迁移工作造成较大的影响。在集群环境中，单个 key 对应的数据量不宜超过 1M，否则可能导致集群迁移出现卡顿现象，影响线上服务的正常运行。

3. **独立部署**：对于 Geo 数据，建议使用单独的 Redis 实例进行部署，而不是使用集群环境。

4. **精度问题**：Redis 的 GEO 功能使用的是 geohash 算法，这种算法有一定的误差，因此在计算距离或者位置时可能会有一定的误差。

5. **存储成本**：虽然 Redis 的 GEO 功能非常强大，但是它的存储成本也相对较高，因此在使用时需要考虑到这一点。

6. **查询效率**：虽然 Redis 的 GEO 功能可以快速查询附近的元素，但是如果查询的范围过大，可能会影响查询效率。

### Bitmaps

Bitmaps 不是一种独立的数据类型，而是字符串（String）数据类型的一种特殊使用方式。在 Bitmaps 中，字符串的每个字节被视为 8 个位，然后每个位可以独立地设置或者清除。

Bitmaps 的主要特点包括：

1. **空间效率**：Bitmaps 可以非常空间效地存储大量的布尔值。

2. **位操作**：Redis 提供了一系列的位操作命令，如 `SETBIT`、`GETBIT`、`BITOP` 和 `BITCOUNT`。

在使用 Redis 的 Bitmaps 时，有几点需要注意：

1. **内存使用**：虽然 Bitmaps 是一种非常高效的数据结构，但是它们在内存中的位置是基于位偏移量的，所以如果设置了一个非常高的位偏移量，Redis 将会为此分配相应的内存。例如，如果执行 `SETBIT key 4294967295 1`，Redis 将会为这个位分配 512MB 的内存，即使 Bitmaps 只有一个位被设置为 1。

2. **位偏移量**：在 Redis 中，位偏移量是从 0 开始的，而且是从左到右的。这与一些编程语言中的位操作可能不同，所以在使用 `SETBIT`、`GETBIT` 等命令时需要注意。

3. **整数表示**：在使用 `BITFIELD` 命令时，可以选择使用有符号或无符号整数，以及选择位数。这为位字段操作提供了很大的灵活性，但也需要注意整数的表示范围和溢出问题。

4. **线程安全**：Redis 的命令通常是原子的，这意味着可以在多个客户端之间安全地使用 Bitmaps。但是，如果需要执行多个命令的序列，可能需要使用事务（`MULTI`、`EXEC`）或 Lua 脚本来确保原子性。

5. **命令返回值**：一些 Bitmaps 命令（如 `SETBIT`）的返回值是位被设置之前的值，而不是操作后的值。

### Bitfields

Redis 的 Bitfields 是 Redis 3.2 版本引入的一种新的操作方式，它允许我们在一个字符串中操作任意大小的位字段。这是一种在 Bitmaps 基础上的更高级的操作方式。

Bitfields 的主要特点包括：

1. **灵活性**：Bitfields 允许我们在一个字符串中操作任意大小和任意偏移量的位字段。

2. **原子性**：Bitfields 的操作是原子的，即使在并发环境下也可以保证数据的一致性。

### HyperLogLog

Redis 的 HyperLogLog 是一种用于处理基数估计的数据结构。基数估计是一种统计学上的概念，用于估计一个集合中不同元素的数量。

HyperLogLog 的主要特点包括：

1. **空间效率**：HyperLogLog 可以使用非常小的空间（每个 HyperLogLog 只需要 12 KB 的内存）来估计大量元素的基数。

2. **误差可控**：HyperLogLog 的误差率是可控的，标准误差为 0.81%。

使用 HyperLogLog 时，需要注意以下几点：

1. **不支持元素的删除**：一旦元素被添加到 HyperLogLog，就不能从中删除。如果需要删除元素，可能需要考虑使用其他数据结构。

2. **合并操作**：可以使用 `PFMERGE` 命令将多个 HyperLogLog 合并为一个。但是，这个操作是不可逆的，一旦合并，就不能再将它们分开。

3. **元素的唯一性**：HyperLogLog 只关心元素的唯一性，而不关心元素的频率。如果需要跟踪元素的频率，可能需要使用其他数据结构。

## 部署架构

Redis 支持以下几种部署模式：

1. **单实例模式**：这是最简单的部署模式，只有一个 Redis 服务器实例运行。

2. **主从复制模式**：这种模式下，有一个 Redis 服务器作为主服务器，其他的服务器作为从服务器。所有的写操作都在主服务器上进行，读操作可以在任何一个从服务器上进行。

3. **哨兵模式**：这种模式在主从复制的基础上增加了高可用性。当主服务器出现故障时，哨兵可以自动将一个从服务器提升为新的主服务器。

4. **集群模式**：这种模式可以将数据分布在多个 Redis 服务器上，每个服务器只存储一部分数据。这种模式提供了高可用性和可扩展性。

### [哨兵模式](https://redis.io/docs/latest/operate/oss_and_stack/management/sentinel/)

Redis Sentinel 是 Redis 的高可用性解决方案，用于监控和管理 Redis 实例的状态，实现故障自动切换和提供发现功能。下面是 Redis Sentinel 的主要特点和实现细节：

1. **监控（Monitoring）**：Redis Sentinel 可以监控 Redis 节点的状态。它定期检查 Redis 实例的可用性，并收集相关的状态信息，包括主从节点的健康状态、延迟、连接数等。
2. **通知（Notification）**：Redis Sentinel 可以通过 API 进行集群状态的通知。当发现 Redis 集群中的主节点出现故障或切换时，Sentinel 可以通知应用程序或客户端新的主节点的地址，以便更新连接信息。
3. **自动故障转移（Automatic failover）**：Redis Sentinel 实现了故障自动切换。当主节点不可用时，Sentinel 会自动选择一个从节点作为新的主节点，并将其他从节点重新配置为复制新的主节点。这样可以确保 Redis 集群在主节点故障时仍然可用。
4. **配置提供者（Configuration provider）**：Redis Sentinel 提供了发现主节点的功能，使客户端能够找到当前的主节点。当发生故障切换时，Sentinel 会通知客户端新的主节点的地址，以便客户端能够更新连接信息。

![redis-sentinel](https://image.linux88.com/2024/04/29/c6d511d44a33329e02b4e57de4d4bce1.svg)

一些实现细节：

- Sentinel 的选举使用 Raft 算法，它确保在 Sentinel 集群中选择并维护一个主 Sentinel，并协调故障切换过程。
- Sentinel 是独立运行的程序，它可以与 Redis 服务器分开部署。可以使用类似以下的命令来启动 Sentinel：`redis-server /path/to/sentinel.conf --sentinel`。
- Sentinel 可以配置多个实例以提高可靠性和容错性。

通过使用 Redis Sentinel，可以实现 Redis 高可用性和自动故障转移，确保 Redis 集群的稳定性和可用性。学习链接可以提供更详细的内容和操作指南。

| 架构模式 |                 硬件成本                  | 架构复杂度 |      双主      |               故障处理能力               |
| :------: | :---------------------------------------: | :--------: | :------------: | :--------------------------------------: |
|  双节点  |                2 台服务器                 |     低     | 是，Majority=1 | 只能支持 Master 节点故障，其它故障不支持 |
|  三节点  |                3 台服务器                 |     中     |  是，网络分区  | 支持 Master 节点故障，Sentinel 节点故障  |
| 节点分离 | 多台服务器，Sentinel 可以和业务服务器共用 |     高     |  是，网络分区  | 支持 Master 节点故障，Sentinel 节点故障  |

### [集群模式](https://redis.io/docs/latest/operate/oss_and_stack/reference/cluster-spec/)

Redis Cluster 是 Redis 的一种分布式部署架构，它具有以下基本架构特点：

1. **分片架构**：Redis Cluster 将数据分成多个分片（shard），每个分片存储部分数据。不同的分片负责存储和处理不同的数据集。分片架构允许数据被均匀地分布在不同的节点上，从而实现数据的横向扩展和负载均衡。
2. **主备复制**：在每个分片内部，通过主备复制来实现高可用性。每个分片中的一个节点被选为主节点（master），负责处理读写请求和数据修改。同时，每个主节点都有一个或多个备节点（slave）进行数据复制，以提供数据的冗余和故障恢复能力。
3. **主节点选举**：Redis Cluster 内部实现了主节点选举机制，不依赖于外部的 Sentinel。当主节点失效或不可用时，Redis Cluster 会自动触发选举过程，选择一个备节点作为新的主节点。这种自动选举机制确保了集群的高可用性和容错能力。
4. **客户端连接**：为了连接 Redis Cluster，客户端需要使用特定的实现，例如 jedisCluster。这是因为 Redis Cluster 使用了特有的 Redis 命令和通信协议，用于处理分片和故障转移等操作。客户端需要了解和支持这些特定的命令和协议，以正确地与 Redis Cluster 进行交互。

![redis-cluster](https://image.linux88.com/2024/04/29/fdb57e1854daed22d147debec2ae218f.svg)

Redis 数据分布和路由的基本原理如下：

1. **数据分槽**：Redis 使用一致性哈希算法将所有的 key 分布到 16384 个槽位中。这意味着每个槽位可以负责存储一个或多个 key。数据分槽的目的是将数据均匀地分布在不同的节点上，实现负载均衡和扩展性。
2. **分片分配**：Redis Cluster 将这些槽位分配给不同的分片（节点）。每个分片负责管理一部分槽位的数据。分片之间共同负责整个数据集。分片可以动态地进行扩容和缩容，从而实现数据的水平扩展和灵活性。
3. **集群信息交换**：节点之间通过 gossip 机制进行信息交换，以维护集群的状态和拓扑信息。节点会定期广播自己的状态和其他节点的信息，并通过这种方式了解整个集群的状态变化。当节点加入或离开集群时，其他节点会自动更新集群信息。
4. **路由查询**：每个节点都存储有关整个集群的数据分布信息。当客户端连接到任意节点时，该节点将负责处理客户端的请求，并根据数据分布信息将请求路由到正确的节点。节点使用 MOVE 命令告知客户端实际存储数据的位置，从而实现透明的数据路由。

Redis Cluster 虽然能提供分布式的解决方案，但它也有自己的问题和挑战，以下是一些主要的挑战：

1. **数据迁移**： 由于 Redis Cluster 是一个分片的系统，当需要添加或删除节点时，数据需要被重新分配。这个过程可能会引发性能问题。
2. **跨槽查询**： Redis Cluster 默认不支持多键操作和跨槽（跨节点）查询，这在一些应用场景中可能会造成麻烦。如果要进行这样的操作，需要一次执行对单个槽的所有相关操作。
3. **节点故障恢复**： 尽管 Redis Cluster 具有自动故障转移的特性，但在高负载情况下，一个节点的故障可能导致整个系统的性能下降。另外，有时候可能会出现误判，误以为一个节点故障了，实际上是网络暂时出现了问题，这种情况下的自动故障转移可能会引发不必要的数据迁移。
4. **一致性**： Redis Cluster 采用的是最终一致性模型，而不是强一致性模型，这意味着在一些情况下，客户端可能会读到过时的数据。
5. **"脑裂"问题**： 在分布式系统中，"脑裂"是指网络分区后，集群被分成了两部分，每部分都认为自己是可用的，这在 Redis Cluster 中也可能出现。虽然有一些策略可以减少这种问题的出现，但并不能完全避免。
6. **持久化问题**： 在一些场景下，比如系统突然宕机，可能会丢失一部分数据。即使 Redis 提供了 RDB 和 AOF 两种持久化机制，但是在分布式环境下，持久化和恢复是个挑战。
