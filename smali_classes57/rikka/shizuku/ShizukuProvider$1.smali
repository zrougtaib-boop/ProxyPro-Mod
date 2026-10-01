.class Lrikka/shizuku/ShizukuProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "ShizukuProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrikka/shizuku/ShizukuProvider;->requestBinderForNonProviderProcess(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 124
    const-string v0, "moe.shizuku.privileged.api.intent.extra.BINDER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmoe/shizuku/api/BinderContainer;

    .line 125
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmoe/shizuku/api/BinderContainer;->binder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "ShizukuProvider"

    const-string v2, "binder received from broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, v0, Lmoe/shizuku/api/BinderContainer;->binder:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lrikka/shizuku/Shizuku;->onBinderReceived(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method
