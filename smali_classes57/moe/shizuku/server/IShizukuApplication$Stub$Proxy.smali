.class Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;
.super Ljava/lang/Object;
.source "IShizukuApplication.java"

# interfaces
.implements Lmoe/shizuku/server/IShizukuApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/shizuku/server/IShizukuApplication$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lmoe/shizuku/server/IShizukuApplication;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 119
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 122
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bindApplication(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 132
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuApplication"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    :goto_0
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 141
    if-nez v0, :cond_1

    invoke-static {}, Lmoe/shizuku/server/IShizukuApplication$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuApplication;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    invoke-static {}, Lmoe/shizuku/server/IShizukuApplication$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuApplication;

    move-result-object v0

    invoke-interface {v0, p1}, Lmoe/shizuku/server/IShizukuApplication;->bindApplication(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    :goto_1
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    throw v0

    .line 147
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1
.end method

.method public dispatchRequestPermissionResult(ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 154
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuApplication"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    if-eqz p2, :cond_0

    .line 157
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 163
    :goto_0
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 164
    if-nez v0, :cond_1

    invoke-static {}, Lmoe/shizuku/server/IShizukuApplication$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuApplication;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {}, Lmoe/shizuku/server/IShizukuApplication$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuApplication;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmoe/shizuku/server/IShizukuApplication;->dispatchRequestPermissionResult(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    :goto_1
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    throw v0

    .line 170
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "moe.shizuku.server.IShizukuApplication"

    return-object v0
.end method

.method public showPermissionConfirmation(IILjava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 180
    :try_start_0
    const-string v0, "moe.shizuku.server.IShizukuApplication"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v0, p0, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2711

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 186
    if-nez v0, :cond_0

    invoke-static {}, Lmoe/shizuku/server/IShizukuApplication$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lmoe/shizuku/server/IShizukuApplication$Stub;->getDefaultImpl()Lmoe/shizuku/server/IShizukuApplication;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lmoe/shizuku/server/IShizukuApplication;->showPermissionConfirmation(IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    throw v0
.end method
