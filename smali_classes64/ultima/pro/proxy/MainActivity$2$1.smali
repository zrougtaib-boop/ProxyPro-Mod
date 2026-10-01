.class Lultima/pro/proxy/MainActivity$2$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity$2;->onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lultima/pro/proxy/MainActivity$2;

.field private final val$_response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$2$1;->this$1:Lultima/pro/proxy/MainActivity$2;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$2$1;->val$_response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1;->this$1:Lultima/pro/proxy/MainActivity$2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1;->this$1:Lultima/pro/proxy/MainActivity$2;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    new-instance v1, Lultima/pro/proxy/MainActivity$2$1$1;

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$2$1;->val$_response:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lultima/pro/proxy/MainActivity$2$1$1;-><init>(Lultima/pro/proxy/MainActivity$2$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lultima/pro/proxy/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
