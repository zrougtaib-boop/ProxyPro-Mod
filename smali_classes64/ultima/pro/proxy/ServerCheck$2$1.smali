.class Lultima/pro/proxy/ServerCheck$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/ServerCheck$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lultima/pro/proxy/ServerCheck$2;

.field private final val$act:Landroid/app/Activity;

.field private final val$cb:Lultima/pro/proxy/ServerCheck$Result;

.field private final val$expected:Ljava/lang/String;

.field private final val$got:Ljava/lang/String;


# direct methods
.method constructor <init>(Lultima/pro/proxy/ServerCheck$2;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lultima/pro/proxy/ServerCheck$Result;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/ServerCheck$2$1;->this$1:Lultima/pro/proxy/ServerCheck$2;

    iput-object p2, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$got:Ljava/lang/String;

    iput-object p3, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$act:Landroid/app/Activity;

    iput-object p4, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$expected:Ljava/lang/String;

    iput-object p5, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$cb:Lultima/pro/proxy/ServerCheck$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0xbb8

    const/4 v2, 0x1

    iget-object v0, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$got:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$act:Landroid/app/Activity;

    invoke-static {v0}, Lultima/pro/proxy/ServerCheck;->access$2(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$act:Landroid/app/Activity;

    const-string v1, "Please turn on your network / internet"

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lultima/pro/proxy/ServerCheck;->access$1()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lultima/pro/proxy/ServerCheck$2$1$1;

    iget-object v2, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$act:Landroid/app/Activity;

    iget-object v3, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$cb:Lultima/pro/proxy/ServerCheck$Result;

    invoke-direct {v1, p0, v2, v3}, Lultima/pro/proxy/ServerCheck$2$1$1;-><init>(Lultima/pro/proxy/ServerCheck$2$1;Landroid/app/Activity;Lultima/pro/proxy/ServerCheck$Result;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$act:Landroid/app/Activity;

    const-string v1, "Server not reachable, retrying..."

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lultima/pro/proxy/ServerCheck;->access$1()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lultima/pro/proxy/ServerCheck$2$1$2;

    iget-object v2, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$act:Landroid/app/Activity;

    iget-object v3, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$cb:Lultima/pro/proxy/ServerCheck$Result;

    invoke-direct {v1, p0, v2, v3}, Lultima/pro/proxy/ServerCheck$2$1$2;-><init>(Lultima/pro/proxy/ServerCheck$2$1;Landroid/app/Activity;Lultima/pro/proxy/ServerCheck$Result;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$got:Ljava/lang/String;

    iget-object v1, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$expected:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lultima/pro/proxy/ServerCheck;->access$3(Z)V

    iget-object v0, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$cb:Lultima/pro/proxy/ServerCheck$Result;

    invoke-interface {v0, v2}, Lultima/pro/proxy/ServerCheck$Result;->onDone(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lultima/pro/proxy/ServerCheck$2$1;->val$cb:Lultima/pro/proxy/ServerCheck$Result;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lultima/pro/proxy/ServerCheck$Result;->onDone(Z)V

    goto :goto_0
.end method
