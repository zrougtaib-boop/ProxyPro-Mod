.class Lultima/pro/proxy/MainActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lultima/pro/proxy/RequestNetwork$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lultima/pro/proxy/MainActivity;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$2;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2;->this$0:Lultima/pro/proxy/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2;->this$0:Lultima/pro/proxy/MainActivity;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lultima/pro/proxy/MainActivity;->_Progress(ZLjava/lang/String;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, "Connection Error!"

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2;->this$0:Lultima/pro/proxy/MainActivity;

    new-instance v1, Lultima/pro/proxy/MainActivity$2$1;

    invoke-direct {v1, p0, p2}, Lultima/pro/proxy/MainActivity$2$1;-><init>(Lultima/pro/proxy/MainActivity$2;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lultima/pro/proxy/MainActivity;->access$17(Lultima/pro/proxy/MainActivity;Ljava/util/TimerTask;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$18(Lultima/pro/proxy/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$2;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$19(Lultima/pro/proxy/MainActivity;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
