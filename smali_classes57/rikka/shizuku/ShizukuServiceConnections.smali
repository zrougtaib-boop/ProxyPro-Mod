.class Lrikka/shizuku/ShizukuServiceConnections;
.super Ljava/lang/Object;
.source "ShizukuServiceConnections.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lrikka/shizuku/ShizukuServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lrikka/shizuku/ShizukuServiceConnections;->CACHE:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Lrikka/shizuku/Shizuku$UserServiceArgs;)Lrikka/shizuku/ShizukuServiceConnection;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    .line 17
    :goto_0
    sget-object v1, Lrikka/shizuku/ShizukuServiceConnections;->CACHE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrikka/shizuku/ShizukuServiceConnection;

    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getOrCreate(Lrikka/shizuku/Shizuku$UserServiceArgs;)Lrikka/shizuku/ShizukuServiceConnection;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 22
    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    move-object v1, v0

    .line 23
    :goto_0
    sget-object v2, Lrikka/shizuku/ShizukuServiceConnections;->CACHE:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrikka/shizuku/ShizukuServiceConnection;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lrikka/shizuku/ShizukuServiceConnection;

    invoke-direct {v0, p0}, Lrikka/shizuku/ShizukuServiceConnection;-><init>(Lrikka/shizuku/Shizuku$UserServiceArgs;)V

    .line 27
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 22
    :cond_1
    iget-object v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method
