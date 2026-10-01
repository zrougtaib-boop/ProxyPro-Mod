.class public Lcom/AndroidSketchwareMaster/ShizukuShell;
.super Ljava/lang/Object;
.source "ShizukuShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/AndroidSketchwareMaster/ShizukuShell$OnProcessCompleteListener;
    }
.end annotation


# instance fields
.field private mCommand:Ljava/lang/String;

.field private mDir:Ljava/lang/String;

.field private mListener:Lcom/AndroidSketchwareMaster/ShizukuShell$OnProcessCompleteListener;

.field private mOutput:Ljava/lang/String;

.field private mProcess:Lrikka/shizuku/ShizukuRemoteProcess;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/AndroidSketchwareMaster/ShizukuShell$OnProcessCompleteListener;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 61
    iput-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mOutput:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mProcess:Lrikka/shizuku/ShizukuRemoteProcess;

    const-string v0, "/"

    .line 64
    iput-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mDir:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mCommand:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mListener:Lcom/AndroidSketchwareMaster/ShizukuShell$OnProcessCompleteListener;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mProcess:Lrikka/shizuku/ShizukuRemoteProcess;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lrikka/shizuku/ShizukuRemoteProcess;->destroy()V

    :cond_0
    return-void
.end method

.method public exec()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "sh"

    aput-object v2, v0, v1

    const-string v2, "-c"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    .line 74
    iget-object v4, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mCommand:Ljava/lang/String;

    aput-object v4, v0, v2

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mDir:Ljava/lang/String;

    invoke-static {v0, v2, v4}, Lrikka/shizuku/Shizuku;->newProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lrikka/shizuku/ShizukuRemoteProcess;

    move-result-object v0

    iput-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mProcess:Lrikka/shizuku/ShizukuRemoteProcess;

    .line 75
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mProcess:Lrikka/shizuku/ShizukuRemoteProcess;

    invoke-virtual {v4}, Lrikka/shizuku/ShizukuRemoteProcess;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mOutput:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mProcess:Lrikka/shizuku/ShizukuRemoteProcess;

    invoke-virtual {v0}, Lrikka/shizuku/ShizukuRemoteProcess;->waitFor()I

    .line 83
    iget-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mListener:Lcom/AndroidSketchwareMaster/ShizukuShell$OnProcessCompleteListener;

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0, v3}, Lcom/AndroidSketchwareMaster/ShizukuShell$OnProcessCompleteListener;->onProcessComplete(Z)V

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 87
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuShell;->mListener:Lcom/AndroidSketchwareMaster/ShizukuShell$OnProcessCompleteListener;

    if-eqz v0, :cond_1

    .line 88
    invoke-interface {v0, v1}, Lcom/AndroidSketchwareMaster/ShizukuShell$OnProcessCompleteListener;->onProcessComplete(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/AndroidSketchwareMaster/ShizukuShell;->destroy()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/AndroidSketchwareMaster/ShizukuShell;->destroy()V

    .line 92
    throw v0
.end method
