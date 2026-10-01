.class public Lrikka/shizuku/Shizuku;
.super Ljava/lang/Object;
.source "Shizuku.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/shizuku/Shizuku$OnBinderDeadListener;,
        Lrikka/shizuku/Shizuku$OnBinderReceivedListener;,
        Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;,
        Lrikka/shizuku/Shizuku$UserServiceArgs;
    }
.end annotation


# static fields
.field private static final DEAD_LISTENERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrikka/shizuku/Shizuku$OnBinderDeadListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEATH_RECIPIENT:Landroid/os/IBinder$DeathRecipient;

.field private static final MAIN_HANDLER:Landroid/os/Handler;

.field private static final PERMISSION_LISTENERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final RECEIVED_LISTENERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrikka/shizuku/Shizuku$OnBinderReceivedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHIZUKU_APPLICATION:Lmoe/shizuku/server/IShizukuApplication;

.field private static binder:Landroid/os/IBinder; = null

.field private static binderReady:Z = false

.field private static permissionGranted:Z = false

.field private static preV11:Z = false

.field private static serverApiVersion:I = -0x1

.field private static serverContext:Ljava/lang/String; = null

.field private static serverPatchVersion:I = -0x1

.field private static serverUid:I = -0x1

.field private static service:Lmoe/shizuku/server/IShizukuService;

.field private static shouldShowRequestPermissionRationale:Z


# direct methods
.method public static synthetic $r8$lambda$ggkQruX8uDONd-PYVo1tsdVQrL8()V
    .locals 0

    invoke-static {}, Lrikka/shizuku/Shizuku;->dispatchBinderReceivedListeners()V

    return-void
.end method

.method public static synthetic $r8$lambda$wTbLbCLzWJjVDjyMyGRtHXFqqaw()V
    .locals 0

    invoke-static {}, Lrikka/shizuku/Shizuku;->dispatchBinderDeadListeners()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lrikka/shizuku/Shizuku$1;

    invoke-direct {v0}, Lrikka/shizuku/Shizuku$1;-><init>()V

    sput-object v0, Lrikka/shizuku/Shizuku;->SHIZUKU_APPLICATION:Lmoe/shizuku/server/IShizukuApplication;

    .line 74
    new-instance v0, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lrikka/shizuku/Shizuku;->DEATH_RECIPIENT:Landroid/os/IBinder$DeathRecipient;

    .line 152
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lrikka/shizuku/Shizuku;->RECEIVED_LISTENERS:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lrikka/shizuku/Shizuku;->DEAD_LISTENERS:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lrikka/shizuku/Shizuku;->PERMISSION_LISTENERS:Ljava/util/List;

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lrikka/shizuku/Shizuku;->MAIN_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0

    .line 34
    sput p0, Lrikka/shizuku/Shizuku;->serverUid:I

    return p0
.end method

.method static synthetic access$102(I)I
    .locals 0

    .line 34
    sput p0, Lrikka/shizuku/Shizuku;->serverApiVersion:I

    return p0
.end method

.method static synthetic access$202(I)I
    .locals 0

    .line 34
    sput p0, Lrikka/shizuku/Shizuku;->serverPatchVersion:I

    return p0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    sput-object p0, Lrikka/shizuku/Shizuku;->serverContext:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 34
    sput-boolean p0, Lrikka/shizuku/Shizuku;->permissionGranted:Z

    return p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 34
    sput-boolean p0, Lrikka/shizuku/Shizuku;->shouldShowRequestPermissionRationale:Z

    return p0
.end method

.method static synthetic access$600()V
    .locals 0

    .line 34
    invoke-static {}, Lrikka/shizuku/Shizuku;->scheduleBinderReceivedListeners()V

    return-void
.end method

.method public static addBinderDeadListener(Lrikka/shizuku/Shizuku$OnBinderDeadListener;)V
    .locals 1
    .param p0    # Lrikka/shizuku/Shizuku$OnBinderDeadListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 235
    sget-object v0, Lrikka/shizuku/Shizuku;->DEAD_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addBinderReceivedListener(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)V
    .locals 1
    .param p0    # Lrikka/shizuku/Shizuku$OnBinderReceivedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    check-cast v0, Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lrikka/shizuku/Shizuku;->addBinderReceivedListener(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;Z)V

    return-void
.end method

.method private static addBinderReceivedListener(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;Z)V
    .locals 2
    .param p0    # Lrikka/shizuku/Shizuku$OnBinderReceivedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 187
    sget-boolean v0, Lrikka/shizuku/Shizuku;->binderReady:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 189
    invoke-interface {p0}, Lrikka/shizuku/Shizuku$OnBinderReceivedListener;->onBinderReceived()V

    .line 194
    :cond_0
    :goto_0
    sget-object v0, Lrikka/shizuku/Shizuku;->RECEIVED_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 191
    :cond_1
    sget-object v0, Lrikka/shizuku/Shizuku;->MAIN_HANDLER:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda3;-><init>(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static addBinderReceivedListenerSticky(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)V
    .locals 1
    .param p0    # Lrikka/shizuku/Shizuku$OnBinderReceivedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    check-cast v0, Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lrikka/shizuku/Shizuku;->addBinderReceivedListener(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;Z)V

    return-void
.end method

.method public static addRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)V
    .locals 1
    .param p0    # Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 273
    sget-object v0, Lrikka/shizuku/Shizuku;->PERMISSION_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static attachUserService(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 735
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmoe/shizuku/server/IShizukuService;->attachUserService(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 737
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static bindUserService(Lrikka/shizuku/Shizuku$UserServiceArgs;Landroid/content/ServiceConnection;)V
    .locals 3
    .param p0    # Lrikka/shizuku/Shizuku$UserServiceArgs;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 599
    invoke-static {p0}, Lrikka/shizuku/ShizukuServiceConnections;->getOrCreate(Lrikka/shizuku/Shizuku$UserServiceArgs;)Lrikka/shizuku/ShizukuServiceConnection;

    move-result-object v0

    .line 600
    invoke-virtual {v0, p1}, Lrikka/shizuku/ShizukuServiceConnection;->addConnection(Landroid/content/ServiceConnection;)V

    .line 602
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v1

    invoke-static {p0}, Lrikka/shizuku/Shizuku$UserServiceArgs;->access$700(Lrikka/shizuku/Shizuku$UserServiceArgs;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lmoe/shizuku/server/IShizukuService;->addUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 604
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static checkRemotePermission(Ljava/lang/String;)I
    .locals 1

    .line 660
    sget v0, Lrikka/shizuku/Shizuku;->serverUid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 662
    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p0}, Lmoe/shizuku/server/IShizukuService;->checkPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 664
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static checkSelfPermission()I
    .locals 2

    const/4 v0, 0x0

    .line 696
    sget-boolean v1, Lrikka/shizuku/Shizuku;->permissionGranted:Z

    if-eqz v1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v1

    invoke-interface {v1}, Lmoe/shizuku/server/IShizukuService;->checkSelfPermission()Z

    move-result v1

    sput-boolean v1, Lrikka/shizuku/Shizuku;->permissionGranted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 700
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static dispatchBinderDeadListeners()V
    .locals 2

    .line 257
    sget-object v0, Lrikka/shizuku/Shizuku;->DEAD_LISTENERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrikka/shizuku/Shizuku$OnBinderDeadListener;

    .line 258
    invoke-interface {v0}, Lrikka/shizuku/Shizuku$OnBinderDeadListener;->onBinderDead()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static dispatchBinderReceivedListeners()V
    .locals 2

    .line 217
    sget-object v0, Lrikka/shizuku/Shizuku;->RECEIVED_LISTENERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    .line 218
    invoke-interface {v0}, Lrikka/shizuku/Shizuku$OnBinderReceivedListener;->onBinderReceived()V

    goto :goto_0

    .line 221
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lrikka/shizuku/Shizuku;->binderReady:Z

    return-void
.end method

.method public static dispatchPermissionConfirmationResult(IIILandroid/os/Bundle;)V
    .locals 1
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 744
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lmoe/shizuku/server/IShizukuService;->dispatchPermissionConfirmationResult(IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 746
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static dispatchRequestPermissionResultListener(II)V
    .locals 2

    .line 295
    sget-object v0, Lrikka/shizuku/Shizuku;->PERMISSION_LISTENERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;

    .line 296
    invoke-interface {v0, p0, p1}, Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;->onRequestPermissionResult(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static exit()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 726
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->exit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 728
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getBinder()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 315
    sget-object v0, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public static getFlagsForUid(II)I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 753
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmoe/shizuku/server/IShizukuService;->getFlagsForUid(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 755
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getLatestServiceVersion()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public static getSELinuxContext()Ljava/lang/String;
    .locals 1

    .line 439
    sget-object v0, Lrikka/shizuku/Shizuku;->serverContext:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->getSELinuxContext()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrikka/shizuku/Shizuku;->serverContext:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 443
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 441
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServerPatchVersion()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 770
    sget v0, Lrikka/shizuku/Shizuku;->serverPatchVersion:I

    return v0
.end method

.method public static getUid()I
    .locals 2

    const/4 v1, -0x1

    .line 378
    sget v0, Lrikka/shizuku/Shizuku;->serverUid:I

    if-eq v0, v1, :cond_0

    .line 380
    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->getUid()I

    move-result v0

    sput v0, Lrikka/shizuku/Shizuku;->serverUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 382
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 380
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static getVersion()I
    .locals 2

    const/4 v1, -0x1

    .line 396
    sget v0, Lrikka/shizuku/Shizuku;->serverApiVersion:I

    if-eq v0, v1, :cond_0

    .line 398
    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->getVersion()I

    move-result v0

    sput v0, Lrikka/shizuku/Shizuku;->serverApiVersion:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 400
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 398
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static isPreV11()Z
    .locals 1

    .line 414
    sget-boolean v0, Lrikka/shizuku/Shizuku;->preV11:Z

    return v0
.end method

.method static synthetic lambda$scheduleRequestPermissionResultListener$1(II)V
    .locals 0

    .line 290
    invoke-static {p0, p1}, Lrikka/shizuku/Shizuku;->dispatchRequestPermissionResultListener(II)V

    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 2

    const/4 v1, 0x0

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lrikka/shizuku/Shizuku;->binderReady:Z

    .line 76
    invoke-static {v1, v1}, Lrikka/shizuku/Shizuku;->onBinderReceived(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static newProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lrikka/shizuku/ShizukuRemoteProcess;
    .locals 2
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 365
    :try_start_0
    new-instance v0, Lrikka/shizuku/ShizukuRemoteProcess;

    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lmoe/shizuku/server/IShizukuService;->newProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lmoe/shizuku/server/IRemoteProcess;

    move-result-object v1

    invoke-direct {v0, v1}, Lrikka/shizuku/ShizukuRemoteProcess;-><init>(Lmoe/shizuku/server/IRemoteProcess;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 367
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static onBinderReceived(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .param p0    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 81
    sget-object v2, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    if-ne v2, p0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    if-nez p0, :cond_2

    .line 84
    sput-object v3, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    .line 85
    sput-object v3, Lrikka/shizuku/Shizuku;->service:Lmoe/shizuku/server/IShizukuService;

    .line 86
    sput v4, Lrikka/shizuku/Shizuku;->serverUid:I

    .line 87
    sput v4, Lrikka/shizuku/Shizuku;->serverApiVersion:I

    .line 88
    sput-object v3, Lrikka/shizuku/Shizuku;->serverContext:Ljava/lang/String;

    .line 90
    invoke-static {}, Lrikka/shizuku/Shizuku;->scheduleBinderDeadListeners()V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 93
    sget-object v3, Lrikka/shizuku/Shizuku;->DEATH_RECIPIENT:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 95
    :cond_3
    sput-object p0, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    .line 96
    invoke-static {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuService;

    move-result-object v2

    sput-object v2, Lrikka/shizuku/Shizuku;->service:Lmoe/shizuku/server/IShizukuService;

    .line 99
    :try_start_0
    sget-object v2, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    sget-object v3, Lrikka/shizuku/Shizuku;->DEATH_RECIPIENT:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 110
    :try_start_2
    const-string v4, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    sget-object v4, Lrikka/shizuku/Shizuku;->SHIZUKU_APPLICATION:Lmoe/shizuku/server/IShizukuApplication;

    invoke-interface {v4}, Lmoe/shizuku/server/IShizukuApplication;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 112
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    sget-object v4, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v1

    :cond_4
    sput-boolean v0, Lrikka/shizuku/Shizuku;->preV11:Z

    .line 114
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    :try_start_3
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 120
    const-string v0, "ShizukuApplication"

    const-string v2, "attachApplication"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 125
    :goto_2
    sget-boolean v0, Lrikka/shizuku/Shizuku;->preV11:Z

    if-eqz v0, :cond_0

    .line 126
    sput-boolean v1, Lrikka/shizuku/Shizuku;->binderReady:Z

    .line 127
    invoke-static {}, Lrikka/shizuku/Shizuku;->scheduleBinderReceivedListeners()V

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v2

    const-string v2, "ShizukuApplication"

    const-string v3, "attachApplication"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 120
    :catchall_1
    move-exception v0

    .line 116
    :try_start_4
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 118
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 122
    const-string v2, "ShizukuApplication"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static peekUserService(Lrikka/shizuku/Shizuku$UserServiceArgs;Landroid/content/ServiceConnection;)Z
    .locals 5
    .param p0    # Lrikka/shizuku/Shizuku$UserServiceArgs;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 617
    invoke-static {p0}, Lrikka/shizuku/ShizukuServiceConnections;->getOrCreate(Lrikka/shizuku/Shizuku$UserServiceArgs;)Lrikka/shizuku/ShizukuServiceConnection;

    move-result-object v1

    .line 618
    invoke-virtual {v1, p1}, Lrikka/shizuku/ShizukuServiceConnection;->addConnection(Landroid/content/ServiceConnection;)V

    .line 621
    :try_start_0
    invoke-static {p0}, Lrikka/shizuku/Shizuku$UserServiceArgs;->access$700(Lrikka/shizuku/Shizuku$UserServiceArgs;)Landroid/os/Bundle;

    move-result-object v2

    .line 622
    const-string v3, "shizuku:user-service-arg-no-create"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 623
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lmoe/shizuku/server/IShizukuService;->addUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 625
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static pingBinder()Z
    .locals 1

    .line 328
    sget-object v0, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeBinderDeadListener(Lrikka/shizuku/Shizuku$OnBinderDeadListener;)Z
    .locals 1
    .param p0    # Lrikka/shizuku/Shizuku$OnBinderDeadListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 245
    sget-object v0, Lrikka/shizuku/Shizuku;->DEAD_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeBinderReceivedListener(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)Z
    .locals 1
    .param p0    # Lrikka/shizuku/Shizuku$OnBinderReceivedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 205
    sget-object v0, Lrikka/shizuku/Shizuku;->RECEIVED_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)Z
    .locals 1
    .param p0    # Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 283
    sget-object v0, Lrikka/shizuku/Shizuku;->PERMISSION_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static requestPermission(I)V
    .locals 1

    .line 682
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p0}, Lmoe/shizuku/server/IShizukuService;->requestPermission(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 684
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected static requireService()Lmoe/shizuku/server/IShizukuService;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 302
    sget-object v0, Lrikka/shizuku/Shizuku;->service:Lmoe/shizuku/server/IShizukuService;

    if-eqz v0, :cond_0

    return-object v0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "binder haven\'t been received"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;
    .locals 1

    .line 332
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static scheduleBinderDeadListeners()V
    .locals 2

    .line 249
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 250
    invoke-static {}, Lrikka/shizuku/Shizuku;->dispatchBinderDeadListeners()V

    .line 252
    :goto_0
    return-void

    :cond_0
    sget-object v0, Lrikka/shizuku/Shizuku;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static scheduleBinderReceivedListeners()V
    .locals 2

    .line 209
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 210
    invoke-static {}, Lrikka/shizuku/Shizuku;->dispatchBinderReceivedListeners()V

    .line 212
    :goto_0
    return-void

    :cond_0
    sget-object v0, Lrikka/shizuku/Shizuku;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static scheduleRequestPermissionResultListener(II)V
    .locals 2

    .line 287
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 288
    invoke-static {p0, p1}, Lrikka/shizuku/Shizuku;->dispatchRequestPermissionResultListener(II)V

    .line 290
    :goto_0
    return-void

    :cond_0
    sget-object v0, Lrikka/shizuku/Shizuku;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static shouldShowRequestPermissionRationale()Z
    .locals 1

    .line 711
    sget-boolean v0, Lrikka/shizuku/Shizuku;->permissionGranted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 714
    :goto_0
    return v0

    .line 712
    :cond_0
    sget-boolean v0, Lrikka/shizuku/Shizuku;->shouldShowRequestPermissionRationale:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 714
    :cond_1
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->shouldShowRequestPermissionRationale()Z

    move-result v0

    sput-boolean v0, Lrikka/shizuku/Shizuku;->shouldShowRequestPermissionRationale:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 716
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static transactRemote(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 2
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 343
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 345
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static unbindUserService(Lrikka/shizuku/Shizuku$UserServiceArgs;Landroid/content/ServiceConnection;Z)V
    .locals 3
    .param p0    # Lrikka/shizuku/Shizuku$UserServiceArgs;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 640
    invoke-static {p0}, Lrikka/shizuku/ShizukuServiceConnections;->get(Lrikka/shizuku/Shizuku$UserServiceArgs;)Lrikka/shizuku/ShizukuServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0, p1}, Lrikka/shizuku/ShizukuServiceConnection;->removeConnection(Landroid/content/ServiceConnection;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 646
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0}, Lrikka/shizuku/Shizuku$UserServiceArgs;->access$800(Lrikka/shizuku/Shizuku$UserServiceArgs;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmoe/shizuku/server/IShizukuService;->removeUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :cond_1
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 648
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static updateFlagsForUid(III)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 762
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lmoe/shizuku/server/IShizukuService;->updateFlagsForUid(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 764
    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
