.class Lmoe/shizuku/server/IShizukuService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IShizukuService.java"

# interfaces
.implements Lmoe/shizuku/server/IShizukuService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/shizuku/server/IShizukuService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lmoe/shizuku/server/IShizukuService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 368
    return-void
.end method


# virtual methods
.method public addUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 529
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 530
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmoe/shizuku/server/IShizukuServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 531
    if-eqz p2, :cond_1

    .line 532
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 538
    :goto_1
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 539
    if-nez v0, :cond_2

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 540
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmoe/shizuku/server/IShizukuService;->addUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 546
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 548
    :goto_2
    return v0

    .line 530
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 536
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 546
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 548
    throw v0

    .line 542
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 543
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 546
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 371
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public attachApplication(Lmoe/shizuku/server/IShizukuApplication;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 584
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 585
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmoe/shizuku/server/IShizukuApplication;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 586
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 588
    if-nez v0, :cond_1

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 589
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmoe/shizuku/server/IShizukuService;->attachApplication(Lmoe/shizuku/server/IShizukuApplication;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    :goto_1
    return-void

    .line 585
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 592
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 595
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    throw v0
.end method

.method public attachUserService(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 681
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 683
    if-eqz p2, :cond_0

    .line 684
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 690
    :goto_0
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 691
    if-nez v0, :cond_1

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 692
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmoe/shizuku/server/IShizukuService;->attachUserService(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 700
    :goto_1
    return-void

    .line 688
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 698
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 700
    throw v0

    .line 695
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 698
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1
.end method

.method public checkPermission(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 423
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 426
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1}, Lmoe/shizuku/server/IShizukuService;->checkPermission(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 433
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    :goto_0
    return v0

    .line 429
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 430
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 433
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    throw v0
.end method

.method public checkSelfPermission()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 624
    :try_start_0
    const-string v3, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 625
    iget-object v3, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 626
    if-nez v3, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 627
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->checkSelfPermission()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 633
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 635
    :goto_0
    return v0

    .line 629
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 630
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 633
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 635
    throw v0
.end method

.method public dispatchPackageChanged(Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 706
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 707
    if-eqz p1, :cond_0

    .line 708
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 714
    :goto_0
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x67

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 715
    if-nez v0, :cond_1

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 716
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1}, Lmoe/shizuku/server/IShizukuService;->dispatchPackageChanged(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 722
    :goto_1
    return-void

    .line 712
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 721
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 722
    throw v0

    .line 721
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1
.end method

.method public dispatchPermissionConfirmationResult(IIILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 749
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    if-eqz p4, :cond_0

    .line 754
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    const/4 v0, 0x0

    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 760
    :goto_0
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x69

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 761
    if-nez v0, :cond_1

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 762
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lmoe/shizuku/server/IShizukuService;->dispatchPermissionConfirmationResult(IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 768
    :goto_1
    return-void

    .line 758
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 767
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 768
    throw v0

    .line 767
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1
.end method

.method public exit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 663
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 665
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->exit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 674
    :goto_0
    return-void

    .line 669
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 672
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 674
    throw v0
.end method

.method public getFlagsForUid(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 776
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 780
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 781
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmoe/shizuku/server/IShizukuService;->getFlagsForUid(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 787
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    :goto_0
    return v0

    .line 783
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 784
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 787
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 787
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 375
    const-string v0, "moe.shizuku.server.IShizukuService"

    return-object v0
.end method

.method public getSELinuxContext()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 467
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 469
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->getSELinuxContext()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 476
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    :goto_0
    return-object v0

    .line 472
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 473
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 476
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 476
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    throw v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 487
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 491
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmoe/shizuku/server/IShizukuService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 498
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    :goto_0
    return-object v0

    .line 494
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 495
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 498
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    throw v0
.end method

.method public getUid()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 403
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 405
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->getUid()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 412
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    :goto_0
    return v0

    .line 408
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 409
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 412
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    throw v0
.end method

.method public getVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 383
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 385
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->getVersion()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 392
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    :goto_0
    return v0

    .line 388
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 389
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 392
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    throw v0
.end method

.method public isHidden(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 730
    :try_start_0
    const-string v3, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget-object v3, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 733
    if-nez v3, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 734
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1}, Lmoe/shizuku/server/IShizukuService;->isHidden(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 740
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 742
    :goto_0
    return v0

    .line 736
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 737
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 740
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 740
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 742
    throw v0
.end method

.method public newProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lmoe/shizuku/server/IRemoteProcess;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 444
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 446
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 449
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lmoe/shizuku/server/IShizukuService;->newProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lmoe/shizuku/server/IRemoteProcess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 456
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 458
    :goto_0
    return-object v0

    .line 452
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 453
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IRemoteProcess;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 456
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 458
    throw v0
.end method

.method public removeUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 557
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 558
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmoe/shizuku/server/IShizukuServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 559
    if-eqz p2, :cond_1

    .line 560
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 566
    :goto_1
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 567
    if-nez v0, :cond_2

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 568
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmoe/shizuku/server/IShizukuService;->removeUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 574
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    :goto_2
    return v0

    .line 558
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 564
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 574
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    throw v0

    .line 570
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 571
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 574
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2
.end method

.method public requestPermission(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 604
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 607
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1}, Lmoe/shizuku/server/IShizukuService;->requestPermission(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 616
    :goto_0
    return-void

    .line 611
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 616
    throw v0
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 508
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 512
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmoe/shizuku/server/IShizukuService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 521
    :goto_0
    return-void

    .line 516
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 519
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 521
    throw v0
.end method

.method public shouldShowRequestPermissionRationale()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 644
    :try_start_0
    const-string v3, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    iget-object v3, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 646
    if-nez v3, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 647
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->shouldShowRequestPermissionRationale()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 653
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 655
    :goto_0
    return v0

    .line 649
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 650
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 653
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 655
    throw v0
.end method

.method public updateFlagsForUid(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 797
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 802
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    invoke-static {}, Lmoe/shizuku/server/IShizukuService$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lmoe/shizuku/server/IShizukuService;->updateFlagsForUid(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    :goto_0
    return-void

    .line 806
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 809
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    throw v0
.end method
