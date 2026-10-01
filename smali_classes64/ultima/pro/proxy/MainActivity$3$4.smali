.class Lultima/pro/proxy/MainActivity$3$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity$3;->onErrorResponse(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lultima/pro/proxy/MainActivity$3;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity$3;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$3$4;->this$1:Lultima/pro/proxy/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3$4;->this$1:Lultima/pro/proxy/MainActivity$3;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$3;->access$0(Lultima/pro/proxy/MainActivity$3;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$28(Lultima/pro/proxy/MainActivity;)Lultima/pro/proxy/RequestNetwork;

    move-result-object v0

    const-string v1, "GET"

    const-string v2, "https://jitustore.shop/jituproxy/maintenance.php"

    const-string v3, "djgamingvip"

    iget-object v4, p0, Lultima/pro/proxy/MainActivity$3$4;->this$1:Lultima/pro/proxy/MainActivity$3;

    invoke-static {v4}, Lultima/pro/proxy/MainActivity$3;->access$0(Lultima/pro/proxy/MainActivity$3;)Lultima/pro/proxy/MainActivity;

    move-result-object v4

    invoke-static {v4}, Lultima/pro/proxy/MainActivity;->access$29(Lultima/pro/proxy/MainActivity;)Lultima/pro/proxy/RequestNetwork$RequestListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lultima/pro/proxy/RequestNetwork;->startRequestNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lultima/pro/proxy/RequestNetwork$RequestListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
