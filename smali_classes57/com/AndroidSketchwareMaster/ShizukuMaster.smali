.class public Lcom/AndroidSketchwareMaster/ShizukuMaster;
.super Ljava/lang/Object;
.source "ShizukuMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;
    }
.end annotation


# instance fields
.field private final REQUEST_PERMISSION_RESULT_LISTENER:Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;

.field private bool:Z

.field private context:Landroid/content/Context;

.field private isCommandExecuted:Z

.field private shizuku:Lrikka/shizuku/Shizuku;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster;->isCommandExecuted:Z

    .line 283
    iput-boolean v0, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster;->bool:Z

    .line 287
    new-instance v0, Lcom/AndroidSketchwareMaster/ShizukuMaster$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/AndroidSketchwareMaster/ShizukuMaster$$ExternalSyntheticLambda0;-><init>(Lcom/AndroidSketchwareMaster/ShizukuMaster;)V

    iput-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster;->REQUEST_PERMISSION_RESULT_LISTENER:Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;

    return-void
.end method

.method static synthetic access$0(Lcom/AndroidSketchwareMaster/ShizukuMaster;Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster;->bool:Z

    return-void
.end method

.method static synthetic access$1(Lcom/AndroidSketchwareMaster/ShizukuMaster;Z)V
    .locals 0

    .line 282
    iput-boolean p1, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster;->isCommandExecuted:Z

    return-void
.end method


# virtual methods
.method public MasterDDX(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cp -r /data/data/com.AndroidSketchwareMaster/assets/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 502
    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->ShizukuShellCmd(Ljava/lang/String;)V

    return-void
.end method

.method public ShizukuRunCheck()Z
    .locals 1

    .line 526
    invoke-static {}, Lrikka/shizuku/Shizuku;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ShizukuShellCmd(Ljava/lang/String;)V
    .locals 2

    .line 348
    new-instance v0, Lcom/AndroidSketchwareMaster/ShizukuShell;

    new-instance v1, Lcom/AndroidSketchwareMaster/ShizukuMaster$1;

    invoke-direct {v1, p0}, Lcom/AndroidSketchwareMaster/ShizukuMaster$1;-><init>(Lcom/AndroidSketchwareMaster/ShizukuMaster;)V

    invoke-direct {v0, p1, v1}, Lcom/AndroidSketchwareMaster/ShizukuShell;-><init>(Ljava/lang/String;Lcom/AndroidSketchwareMaster/ShizukuShell$OnProcessCompleteListener;)V

    .line 365
    invoke-virtual {v0}, Lcom/AndroidSketchwareMaster/ShizukuShell;->exec()V

    return-void
.end method

.method public aeuv()Z
    .locals 1

    .line 730
    invoke-static {}, Lrikka/shizuku/Shizuku;->isPreV11()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public awer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "/storage/emulated/0/"

    const/4 v1, 0x0

    .line 604
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 605
    new-instance p2, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 607
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_1

    .line 610
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 611
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 612
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 613
    invoke-virtual {v0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->copypathathShizuku(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->checkCommandExecution()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 617
    invoke-virtual {v0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/AndroidSketchwareMaster/FileUtil;->isExistFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 618
    invoke-virtual {v0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/AndroidSketchwareMaster/FileUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_1

    .line 629
    :cond_0
    invoke-virtual {v0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/AndroidSketchwareMaster/FileUtil;->isExistFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 630
    invoke-virtual {v0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/AndroidSketchwareMaster/FileUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_1

    .line 608
    :cond_1
    invoke-virtual {p2, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    iput-boolean v1, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster;->isCommandExecuted:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public checkCommandExecution()Z
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster;->isCommandExecuted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkInstall(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 507
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "moe.shizuku.privileged.api"

    .line 508
    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    return v0
.end method

.method public copypathathShizuku(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cp -rf "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 430
    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->ShizukuShellCmd(Ljava/lang/String;)V

    return-void
.end method

.method public dddgj()Z
    .locals 1

    .line 547
    iget-boolean v0, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster;->bool:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteShizuku(Ljava/lang/String;)V
    .locals 2

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rm -rf "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 417
    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->ShizukuShellCmd(Ljava/lang/String;)V

    return-void
.end method

.method public destroyShizuku()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster;->REQUEST_PERMISSION_RESULT_LISTENER:Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->removeRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)Z

    return-void
.end method

.method public downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 744
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "Downloading..."

    .line 745
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 746
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/16 v1, 0x64

    .line 747
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 748
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 750
    new-instance v0, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster$DownloadFileAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public loveforall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wget -O"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 456
    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->ShizukuShellCmd(Ljava/lang/String;)V

    return-void
.end method

.method public mafpathathShizuku(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mv "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->ShizukuShellCmd(Ljava/lang/String;)V

    return-void
.end method

.method public masterOpt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "/storage/emulated/0/"

    const/4 v1, 0x0

    .line 688
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 689
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 691
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_1

    .line 694
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 695
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 696
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 698
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->masterpse(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->checkCommandExecution()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 700
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/AndroidSketchwareMaster/FileUtil;->isExistFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 701
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/AndroidSketchwareMaster/FileUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_1

    .line 711
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/AndroidSketchwareMaster/FileUtil;->isExistFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 712
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/AndroidSketchwareMaster/FileUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_1

    .line 692
    :cond_1
    invoke-virtual {v2, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    :catch_0
    iput-boolean v1, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster;->isCommandExecuted:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public masterpse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unzip -o "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -d "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 462
    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->ShizukuShellCmd(Ljava/lang/String;)V

    return-void
.end method

.method public mkdir(Ljava/lang/String;)V
    .locals 2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mkdir "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 443
    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->ShizukuShellCmd(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(II)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/16 p1, 0x45

    .line 399
    invoke-static {p1}, Lrikka/shizuku/Shizuku;->requestPermission(I)V

    :cond_1
    return-void
.end method

.method public oncreatShizuku(Landroid/content/Context;)Z
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/AndroidSketchwareMaster/ShizukuMaster;->REQUEST_PERMISSION_RESULT_LISTENER:Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->addRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)V

    .line 319
    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->checkInstall(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->ShizukuRunCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x45

    .line 324
    invoke-static {p1}, Lrikka/shizuku/Shizuku;->requestPermission(I)V

    goto :goto_0

    :cond_0
    const-string v0, "Shizuku is not Running"

    .line 327
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public renameShizuku(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mv "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->ShizukuShellCmd(Ljava/lang/String;)V

    return-void
.end method

.method public touch(Ljava/lang/String;)V
    .locals 2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "touch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->ShizukuShellCmd(Ljava/lang/String;)V

    return-void
.end method

.method public unzippathShizuku(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unzip"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -d "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 423
    invoke-virtual {p0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->ShizukuShellCmd(Ljava/lang/String;)V

    return-void
.end method
