.class public Lultima/pro/proxy/ServerCheck;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lultima/pro/proxy/ServerCheck$Result;
    }
.end annotation


# static fields
.field private static final H:Landroid/os/Handler;

.field private static final SECRET:Ljava/lang/String;

.field private static final VERIFY_URL:Ljava/lang/String;

.field private static passed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GGKJDJTVC5FMEDCB5GTJ"

    sput-object v0, Lultima/pro/proxy/ServerCheck;->SECRET:Ljava/lang/String;

    const-string v0, "https://jitustore.shop/jituproxy/verify.php"

    sput-object v0, Lultima/pro/proxy/ServerCheck;->VERIFY_URL:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lultima/pro/proxy/ServerCheck;->passed:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lultima/pro/proxy/ServerCheck;->H:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/app/Activity;Lultima/pro/proxy/ServerCheck$Result;)V
    .locals 0

    invoke-static {p0, p1}, Lultima/pro/proxy/ServerCheck;->check(Landroid/app/Activity;Lultima/pro/proxy/ServerCheck$Result;)V

    return-void
.end method

.method static synthetic access$1()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lultima/pro/proxy/ServerCheck;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lultima/pro/proxy/ServerCheck;->hasNet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Z)V
    .locals 0

    sput-boolean p0, Lultima/pro/proxy/ServerCheck;->passed:Z

    return-void
.end method

.method private static check(Landroid/app/Activity;Lultima/pro/proxy/ServerCheck$Result;)V
    .locals 6

    invoke-static {p0}, Lultima/pro/proxy/ServerCheck;->hasNet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Please turn on your network / internet"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "Please turn on your network"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonSound;->speak(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lultima/pro/proxy/ServerCheck;->H:Landroid/os/Handler;

    new-instance v1, Lultima/pro/proxy/ServerCheck$1;

    invoke-direct {v1, p0, p1}, Lultima/pro/proxy/ServerCheck$1;-><init>(Landroid/app/Activity;Lultima/pro/proxy/ServerCheck$Result;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lultima/pro/proxy/ServerCheck$2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lultima/pro/proxy/ServerCheck;->SECRET:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lultima/pro/proxy/ServerCheck;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, p0, v3, p1}, Lultima/pro/proxy/ServerCheck$2;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lultima/pro/proxy/ServerCheck$Result;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static hasNet(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x1

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static isPassed()Z
    .locals 1

    sget-boolean v0, Lultima/pro/proxy/ServerCheck;->passed:Z

    return v0
.end method

.method public static run(Landroid/app/Activity;Lultima/pro/proxy/ServerCheck$Result;)V
    .locals 1

    sget-boolean v0, Lultima/pro/proxy/ServerCheck;->passed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lultima/pro/proxy/ServerCheck$Result;->onDone(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lultima/pro/proxy/ServerCheck;->check(Landroid/app/Activity;Lultima/pro/proxy/ServerCheck$Result;)V

    goto :goto_0
.end method

.method private static sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    :goto_0
    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v1, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1
.end method
