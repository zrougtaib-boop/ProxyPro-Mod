.class Lultima/pro/proxy/NeonBadge$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lultima/pro/proxy/NeonBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lultima/pro/proxy/NeonBadge;->access$0()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lultima/pro/proxy/NeonBadge;->access$1()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lultima/pro/proxy/NeonBadge;->access$1()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/NeonBadge;->access$2(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lultima/pro/proxy/NeonBadge;->access$1()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lultima/pro/proxy/NeonBadge;->access$3(Landroid/content/Context;)V

    :goto_1
    invoke-static {}, Lultima/pro/proxy/NeonBadge;->access$1()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lultima/pro/proxy/NeonOverlay;->setGameVisible(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    invoke-static {}, Lultima/pro/proxy/NeonBadge;->access$5()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lultima/pro/proxy/NeonBadge;->access$4()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method
