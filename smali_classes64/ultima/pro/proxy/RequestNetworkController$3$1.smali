.class Lultima/pro/proxy/RequestNetworkController$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/RequestNetworkController$3;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lultima/pro/proxy/RequestNetworkController$3;

.field private final val$e:Ljava/io/IOException;

.field private final val$requestListener:Lultima/pro/proxy/RequestNetwork$RequestListener;

.field private final val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lultima/pro/proxy/RequestNetworkController$3;Lultima/pro/proxy/RequestNetwork$RequestListener;Ljava/lang/String;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/RequestNetworkController$3$1;->this$1:Lultima/pro/proxy/RequestNetworkController$3;

    iput-object p2, p0, Lultima/pro/proxy/RequestNetworkController$3$1;->val$requestListener:Lultima/pro/proxy/RequestNetwork$RequestListener;

    iput-object p3, p0, Lultima/pro/proxy/RequestNetworkController$3$1;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lultima/pro/proxy/RequestNetworkController$3$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lultima/pro/proxy/RequestNetworkController$3$1;->val$requestListener:Lultima/pro/proxy/RequestNetwork$RequestListener;

    iget-object v1, p0, Lultima/pro/proxy/RequestNetworkController$3$1;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lultima/pro/proxy/RequestNetworkController$3$1;->val$e:Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lultima/pro/proxy/RequestNetwork$RequestListener;->onErrorResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
