.class public Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;
.super Landroid/os/AsyncTask;
.source "ShizukuMaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/AndroidSketchwareMaster/ShizukuMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadFileAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fileUrl:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 760
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 761
    iput-object p1, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->context:Landroid/content/Context;

    .line 762
    iput-object p2, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->fileUrl:Ljava/lang/String;

    .line 763
    iput-object p3, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->filePath:Ljava/lang/String;

    .line 764
    iput-object p4, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->fileName:Ljava/lang/String;

    .line 765
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-direct {p2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9

    .line 772
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->fileUrl:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 774
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    .line 776
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->filePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 778
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 779
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create directory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 782
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    .line 783
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    const-wide/16 v3, 0x0

    .line 787
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 794
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 795
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 796
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "Success"

    return-object p1

    :cond_2
    const/4 v6, 0x0

    .line 788
    :try_start_1
    invoke-virtual {v2, v1, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v7, v5

    add-long/2addr v3, v7

    long-to-float v5, v3

    int-to-float v7, v0

    div-float/2addr v5, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v5, v5, v7

    float-to-int v5, v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Integer;

    .line 791
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v6

    invoke-virtual {p0, v7}, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 799
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "Failed"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const-string v0, "Success"

    .line 816
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 807
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 808
    iget-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
