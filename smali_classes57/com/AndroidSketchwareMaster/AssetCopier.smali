.class public Lcom/AndroidSketchwareMaster/AssetCopier;
.super Ljava/lang/Object;
.source "AssetCopier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetCopier"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyAssetToStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 29
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 32
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 40
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 45
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 46
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x1

    return p0

    .line 41
    :cond_1
    invoke-virtual {p2, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method
