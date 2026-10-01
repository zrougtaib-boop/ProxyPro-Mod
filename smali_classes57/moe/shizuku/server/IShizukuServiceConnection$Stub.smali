.class public abstract Lmoe/shizuku/server/IShizukuServiceConnection$Stub;
.super Landroid/os/Binder;
.source "IShizukuServiceConnection.java"

# interfaces
.implements Lmoe/shizuku/server/IShizukuServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/shizuku/server/IShizukuServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "moe.shizuku.server.IShizukuServiceConnection"

.field static final TRANSACTION_connected:I = 0x1

.field static final TRANSACTION_died:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "moe.shizuku.server.IShizukuServiceConnection"

    invoke-virtual {p0, p0, v0}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuServiceConnection;
    .locals 2

    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v0, "moe.shizuku.server.IShizukuServiceConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmoe/shizuku/server/IShizukuServiceConnection;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lmoe/shizuku/server/IShizukuServiceConnection;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;

    invoke-direct {v0, p0}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static getDefaultImpl()Lmoe/shizuku/server/IShizukuServiceConnection;
    .locals 1

    .line 143
    sget-object v0, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuServiceConnection;

    return-object v0
.end method

.method public static setDefaultImpl(Lmoe/shizuku/server/IShizukuServiceConnection;)Z
    .locals 2

    .line 133
    sget-object v0, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuServiceConnection;

    if-nez v0, :cond_1

    .line 136
    if-eqz p0, :cond_0

    .line 137
    sput-object p0, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuServiceConnection;

    .line 138
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 56
    :sswitch_0
    const-string v1, "moe.shizuku.server.IShizukuServiceConnection"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :sswitch_1
    const-string v1, "moe.shizuku.server.IShizukuServiceConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->died()V

    goto :goto_0

    .line 61
    :sswitch_2
    const-string v1, "moe.shizuku.server.IShizukuServiceConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 64
    invoke-virtual {p0, v1}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->connected(Landroid/os/IBinder;)V

    goto :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
