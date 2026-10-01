.class Lrikka/shizuku/ShizukuServiceConnection;
.super Lmoe/shizuku/server/IShizukuServiceConnection$Stub;
.source "ShizukuServiceConnection.java"


# static fields
.field private static final MAIN_HANDLER:Landroid/os/Handler;


# instance fields
.field private final componentName:Landroid/content/ComponentName;

.field private final connections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private dead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lrikka/shizuku/ShizukuServiceConnection;->MAIN_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lrikka/shizuku/Shizuku$UserServiceArgs;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->connections:Ljava/util/Set;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->dead:Z

    .line 25
    iget-object v0, p1, Lrikka/shizuku/Shizuku$UserServiceArgs;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->componentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public addConnection(Landroid/content/ServiceConnection;)V
    .locals 1
    .param p1    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->connections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public connected(Landroid/os/IBinder;)V
    .locals 2

    .line 44
    sget-object v0, Lrikka/shizuku/ShizukuServiceConnection;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda1;-><init>(Lrikka/shizuku/ShizukuServiceConnection;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :try_start_0
    new-instance v0, Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda2;-><init>(Lrikka/shizuku/ShizukuServiceConnection;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public died()V
    .locals 2

    .line 59
    iget-boolean v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->dead:Z

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->dead:Z

    .line 62
    sget-object v0, Lrikka/shizuku/ShizukuServiceConnection;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda0;-><init>(Lrikka/shizuku/ShizukuServiceConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method synthetic lambda$connected$0$rikka-shizuku-ShizukuServiceConnection(Landroid/os/IBinder;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->connections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    .line 46
    iget-object v2, p0, Lrikka/shizuku/ShizukuServiceConnection;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v2, p1}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic lambda$died$1$rikka-shizuku-ShizukuServiceConnection()V
    .locals 3

    .line 63
    iget-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->connections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    .line 64
    iget-object v2, p0, Lrikka/shizuku/ShizukuServiceConnection;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeConnection(Landroid/content/ServiceConnection;)V
    .locals 1
    .param p1    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection;->connections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
