.class public final Lokio/internal/DefaultSocket$SocketSink;
.super Ljava/lang/Object;
.source "DefaultSocket.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/internal/DefaultSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SocketSink"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSink\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,162:1\n85#2:163\n171#3,11:164\n171#3,11:175\n171#3,11:186\n*S KotlinDebug\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSink\n*L\n59#1:163\n60#1:164,11\n76#1:175,11\n82#1:186,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016J\u0008\u0010\r\u001a\u00020\u0007H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lokio/internal/DefaultSocket$SocketSink;",
        "Lokio/Sink;",
        "<init>",
        "(Lokio/internal/DefaultSocket;)V",
        "timeout",
        "Lokio/internal/SocketAsyncTimeout;",
        "write",
        "",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
        "flush",
        "close",
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
        "SMAP\nDefaultSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSink\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,162:1\n85#2:163\n171#3,11:164\n171#3,11:175\n171#3,11:186\n*S KotlinDebug\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSink\n*L\n59#1:163\n60#1:164,11\n76#1:175,11\n82#1:186,11\n*E\n"
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

    .line 50
    iput-object p1, p0, Lokio/internal/DefaultSocket$SocketSink;->this$0:Lokio/internal/DefaultSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lokio/internal/SocketAsyncTimeout;

    invoke-virtual {p1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/internal/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    iput-object v0, p0, Lokio/internal/DefaultSocket$SocketSink;->timeout:Lokio/internal/SocketAsyncTimeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 82
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSink;->timeout:Lokio/internal/SocketAsyncTimeout;

    check-cast v0, Lokio/AsyncTimeout;

    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSink;->this$0:Lokio/internal/DefaultSocket;

    .line 187
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 83
    :try_start_0
    invoke-static {v1}, Lokio/internal/DefaultSocket;->access$getCloseBits$p(Lokio/internal/DefaultSocket;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokio/internal/_AtomicKt;->setBitsOrZero(Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 92
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 94
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 195
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    .line 88
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 97
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 196
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 195
    :cond_4
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    .line 193
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

    .line 195
    :goto_4
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    .line 196
    throw v1
.end method

.method public flush()V
    .locals 3

    .line 76
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSink;->timeout:Lokio/internal/SocketAsyncTimeout;

    check-cast v0, Lokio/AsyncTimeout;

    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSink;->this$0:Lokio/internal/DefaultSocket;

    .line 176
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 77
    :try_start_0
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 78
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 182
    :try_start_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    check-cast v1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_0

    :goto_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :goto_2
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    .line 185
    throw v1
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lokio/internal/DefaultSocket$SocketSink;->timeout()Lokio/internal/SocketAsyncTimeout;

    move-result-object v0

    check-cast v0, Lokio/Timeout;

    return-object v0
.end method

.method public timeout()Lokio/internal/SocketAsyncTimeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 100
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSink;->timeout:Lokio/internal/SocketAsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSink;->this$0:Lokio/internal/DefaultSocket;

    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 7
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_3

    .line 57
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSink;->timeout:Lokio/internal/SocketAsyncTimeout;

    invoke-virtual {v0}, Lokio/internal/SocketAsyncTimeout;->throwIfReached()V

    .line 58
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 163
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 60
    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSink;->timeout:Lokio/internal/SocketAsyncTimeout;

    check-cast v1, Lokio/AsyncTimeout;

    iget-object v3, p0, Lokio/internal/DefaultSocket$SocketSink;->this$0:Lokio/internal/DefaultSocket;

    .line 165
    invoke-virtual {v1}, Lokio/AsyncTimeout;->enter()V

    .line 61
    :try_start_0
    invoke-virtual {v3}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iget-object v4, v0, Lokio/Segment;->data:[B

    iget v5, v0, Lokio/Segment;->pos:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 62
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {v1}, Lokio/AsyncTimeout;->exit()Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/Segment;->pos:I

    int-to-long v1, v2

    sub-long/2addr p2, v1

    .line 66
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 68
    iget v1, v0, Lokio/Segment;->pos:I

    iget v2, v0, Lokio/Segment;->limit:I

    if-ne v1, v2, :cond_0

    .line 69
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 70
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 174
    invoke-virtual {v1, p1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 171
    :try_start_1
    invoke-virtual {v1}, Lokio/AsyncTimeout;->exit()Z

    move-result p2

    if-nez p2, :cond_2

    :goto_1
    check-cast p1, Ljava/lang/Throwable;

    goto :goto_2

    :cond_2
    invoke-virtual {v1, p1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_1

    :goto_2
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :goto_3
    invoke-virtual {v1}, Lokio/AsyncTimeout;->exit()Z

    .line 174
    throw p1

    :cond_3
    return-void
.end method
