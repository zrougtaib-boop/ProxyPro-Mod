.class public Lrikka/shizuku/Shizuku$UserServiceArgs;
.super Ljava/lang/Object;
.source "Shizuku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/shizuku/Shizuku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserServiceArgs"
.end annotation


# instance fields
.field final componentName:Landroid/content/ComponentName;

.field daemon:Z

.field debuggable:Z

.field processName:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field use32BitAppProcess:Z

.field versionCode:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput v1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->versionCode:I

    .line 457
    iput-boolean v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->debuggable:Z

    .line 458
    iput-boolean v1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->daemon:Z

    .line 459
    iput-boolean v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->use32BitAppProcess:Z

    .line 462
    iput-object p1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic access$700(Lrikka/shizuku/Shizuku$UserServiceArgs;)Landroid/os/Bundle;
    .locals 1

    .line 451
    invoke-direct {p0}, Lrikka/shizuku/Shizuku$UserServiceArgs;->forAdd()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lrikka/shizuku/Shizuku$UserServiceArgs;)Landroid/os/Bundle;
    .locals 1

    .line 451
    invoke-direct {p0}, Lrikka/shizuku/Shizuku$UserServiceArgs;->forRemove()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private forAdd()Landroid/os/Bundle;
    .locals 3

    .line 539
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 540
    const-string v0, "shizuku:user-service-arg-component"

    iget-object v2, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 541
    const-string v0, "shizuku:user-service-arg-debuggable"

    iget-boolean v2, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->debuggable:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 542
    const-string v0, "shizuku:user-service-arg-version-code"

    iget v2, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->versionCode:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 543
    const-string v0, "shizuku:user-service-arg-daemon"

    iget-boolean v2, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->daemon:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 544
    const-string v0, "shizuku:user-service-arg-use-32-bit-app-process"

    iget-boolean v2, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->use32BitAppProcess:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 545
    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->processName:Ljava/lang/String;

    .line 546
    const-string v2, "process name suffix must not be null"

    invoke-static {v0, v2}, Lrikka/shizuku/Shizuku$UserServiceArgs$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 545
    const-string v2, "shizuku:user-service-arg-process-name"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 548
    const-string v2, "shizuku:user-service-arg-tag"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private forRemove()Landroid/os/Bundle;
    .locals 3

    .line 554
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 555
    const-string v1, "shizuku:user-service-arg-component"

    iget-object v2, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 556
    iget-object v1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 557
    const-string v2, "shizuku:user-service-arg-tag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private use32BitAppProcess(Z)Lrikka/shizuku/Shizuku$UserServiceArgs;
    .locals 0

    .line 534
    iput-boolean p1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->use32BitAppProcess:Z

    return-object p0
.end method


# virtual methods
.method public daemon(Z)Lrikka/shizuku/Shizuku$UserServiceArgs;
    .locals 0

    .line 474
    iput-boolean p1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->daemon:Z

    return-object p0
.end method

.method public debuggable(Z)Lrikka/shizuku/Shizuku$UserServiceArgs;
    .locals 0

    .line 508
    iput-boolean p1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->debuggable:Z

    return-object p0
.end method

.method public processNameSuffix(Ljava/lang/String;)Lrikka/shizuku/Shizuku$UserServiceArgs;
    .locals 0

    .line 519
    iput-object p1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lrikka/shizuku/Shizuku$UserServiceArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 486
    iput-object p1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public version(I)Lrikka/shizuku/Shizuku$UserServiceArgs;
    .locals 0

    .line 498
    iput p1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->versionCode:I

    return-object p0
.end method
