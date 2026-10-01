.class Lultima/pro/proxy/MainActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity;->_reCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lultima/pro/proxy/MainActivity;

.field private final val$_act:Landroid/app/Activity;

.field private final val$_bgvv:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;Landroid/app/Activity;Landroid/widget/VideoView;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$11;->this$0:Lultima/pro/proxy/MainActivity;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$11;->val$_act:Landroid/app/Activity;

    iput-object p3, p0, Lultima/pro/proxy/MainActivity$11;->val$_bgvv:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$11;->val$_act:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$11;->val$_bgvv:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$11;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$11;->val$_act:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$11;->val$_bgvv:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    invoke-static {}, Lultima/pro/proxy/NeonToast;->hide()V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$11;->val$_act:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$11;->val$_bgvv:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
