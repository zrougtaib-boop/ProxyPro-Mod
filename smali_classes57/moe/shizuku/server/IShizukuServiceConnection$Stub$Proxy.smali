.class Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IShizukuServiceConnection.java"

# interfaces
.implements Lmoe/shizuku/server/IShizukuServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/shizuku/server/IShizukuServiceConnection$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lmoe/shizuku/server/IShizukuServiceConnection;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 85
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 88
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public connected(Landroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 98
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuServiceConnection"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 100
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 101
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lmoe/shizuku/server/IShizukuServiceConnection;->connected(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 108
    throw v0
.end method

.method public died()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 114
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuServiceConnection"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 116
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuServiceConnection;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuServiceConnection;->died()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "moe.shizuku.server.IShizukuServiceConnection"

    return-object v0
.end method
