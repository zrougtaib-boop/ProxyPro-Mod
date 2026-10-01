.class Lultima/pro/proxy/RequestNetworkController$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/RequestNetworkController;->getClient()Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lultima/pro/proxy/RequestNetworkController;


# direct methods
.method constructor <init>(Lultima/pro/proxy/RequestNetworkController;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/RequestNetworkController$2;->this$0:Lultima/pro/proxy/RequestNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
