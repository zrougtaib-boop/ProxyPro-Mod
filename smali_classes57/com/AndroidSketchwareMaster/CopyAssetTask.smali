.class public Lcom/AndroidSketchwareMaster/CopyAssetTask;
.super Landroid/os/AsyncTask;
.source "CopyAssetTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/AndroidSketchwareMaster/CopyAssetTask$OnCopyAssetListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAssetFileName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDestinationPath:Ljava/lang/String;

.field private mListener:Lcom/AndroidSketchwareMaster/CopyAssetTask$OnCopyAssetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/AndroidSketchwareMaster/CopyAssetTask$OnCopyAssetListener;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/AndroidSketchwareMaster/CopyAssetTask;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/AndroidSketchwareMaster/CopyAssetTask;->mAssetFileName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/AndroidSketchwareMaster/CopyAssetTask;->mDestinationPath:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/AndroidSketchwareMaster/CopyAssetTask;->mListener:Lcom/AndroidSketchwareMaster/CopyAssetTask$OnCopyAssetListener;

    return-void
.end method

.method private copyAssetFile()Z
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/AndroidSketchwareMaster/CopyAssetTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/AndroidSketchwareMaster/CopyAssetTask;->mAssetFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/AndroidSketchwareMaster/CopyAssetTask;->mDestinationPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/AndroidSketchwareMaster/CopyAssetTask;->mAssetFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 50
    invoke-direct {p0, v0, v2}, Lcom/AndroidSketchwareMaster/CopyAssetTask;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 52
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 53
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 64
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/AndroidSketchwareMaster/CopyAssetTask;->copyAssetFile()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/CopyAssetTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/AndroidSketchwareMaster/CopyAssetTask;->mListener:Lcom/AndroidSketchwareMaster/CopyAssetTask$OnCopyAssetListener;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/AndroidSketchwareMaster/CopyAssetTask$OnCopyAssetListener;->onCopyComplete(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/CopyAssetTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
