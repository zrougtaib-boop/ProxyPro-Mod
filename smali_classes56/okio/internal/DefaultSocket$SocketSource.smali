.class public final Lokio/internal/DefaultSocket$SocketSource;
.super Ljava/lang/Object;
.source "DefaultSocket.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/internal/DefaultSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SocketSource"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n+ 4 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,162:1\n1#2:163\n85#3:164\n171#4,11:165\n171#4,11:176\n*S KotlinDebug\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSource\n*L\n113#1:164\n115#1:165,11\n136#1:176,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lokio/internal/DefaultSocket$SocketSource;",
        "Lokio/Source;",
        "<init>",
        "(Lokio/internal/DefaultSocket;)V",
        "timeout",
        "Lokio/internal/SocketAsyncTimeout;",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "close",
        "",
        "toString",
        "",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDefaultSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n+ 4 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,162:1\n1#2:163\n85#3:164\n171#4,11:165\n171#4,11:176\n*S KotlinDebug\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSource\n*L\n113#1:164\n115#1:165,11\n136#1:176,11\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lokio/internal/DefaultSocket;

.field private final timeout:Lokio/internal/SocketAsyncTimeout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokio/internal/DefaultSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lokio/internal/DefaultSocket$SocketSource;->this$0:Lokio/internal/DefaultSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lokio/internal/SocketAsyncTimeout;

    invoke-virtual {p1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/internal/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    iput-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 136
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    check-cast v0, Lokio/AsyncTimeout;

    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSource;->this$0:Lokio/internal/DefaultSocket;

    .line 177
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 137
    :try_start_0
    invoke-static {v1}, Lokio/internal/DefaultSocket;->access$getCloseBits$p(Lokio/internal/DefaultSocket;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lokio/internal/_AtomicKt;->setBitsOrZero(Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 146
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 185
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    .line 142
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 150
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 185
    :cond_4
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    .line 183
    :try_start_2
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_2
    check-cast v1, Ljava/lang/Throwable;

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_2

    :goto_3
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :goto_4
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    .line 186
    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 4
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    if-ltz v2, :cond_6

    .line 111
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    invoke-virtual {v0}, Lokio/internal/SocketAsyncTimeout;->throwIfReached()V

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p1, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v0

    .line 113
    iget v1, v0, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    .line 164
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 115
    :try_start_0
    iget-object p2, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    check-cast p2, Lokio/AsyncTimeout;

    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSource;->this$0:Lokio/internal/DefaultSocket;

    .line 166
    invoke-virtual {p2}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :try_start_1
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-virtual {v1, v2, v3, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :try_start_2
    invoke-virtual {p2}, Lokio/AsyncTimeout;->exit()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v1, :cond_3

    const/4 p2, -0x1

    if-ne p3, p2, :cond_2

    .line 123
    iget p2, v0, Lokio/Segment;->pos:I

    iget p3, v0, Lokio/Segment;->limit:I

    if-ne p2, p3, :cond_1

    .line 125
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p2

    iput-object p2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 126
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_1
    const-wide/16 p1, -0x1

    return-wide p1

    .line 130
    :cond_2
    iget p2, v0, Lokio/Segment;->limit:I

    add-int/2addr p2, p3

    iput p2, v0, Lokio/Segment;->limit:I

    .line 131
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    int-to-long p2, p3

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->setSize$okio(J)V

    return-wide p2

    :cond_3
    const/4 p1, 0x0

    .line 175
    :try_start_3
    invoke-virtual {p2, p1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 172
    :try_start_4
    invoke-virtual {p2}, Lokio/AsyncTimeout;->exit()Z

    move-result p3

    if-nez p3, :cond_4

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_4
    invoke-virtual {p2, p1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_0

    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    :goto_2
    :try_start_5
    invoke-virtual {p2}, Lokio/AsyncTimeout;->exit()Z

    .line 175
    throw p1
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p1

    .line 119
    invoke-static {p1}, Lokio/internal/_JavaIoKt;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/io/IOException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 120
    :cond_5
    throw p1

    .line 110
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "byteCount < 0: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lokio/internal/DefaultSocket$SocketSource;->timeout()Lokio/internal/SocketAsyncTimeout;

    move-result-object v0

    check-cast v0, Lokio/Timeout;

    return-object v0
.end method

.method public timeout()Lokio/internal/SocketAsyncTimeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 153
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSource;->this$0:Lokio/internal/DefaultSocket;

    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
