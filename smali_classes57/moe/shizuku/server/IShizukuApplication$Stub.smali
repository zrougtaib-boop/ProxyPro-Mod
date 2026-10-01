.class public abstract Lmoe/shizuku/server/IShizukuApplication$Stub;
.super Landroid/os/Binder;
.source "IShizukuApplication.java"

# interfaces
.implements Lmoe/shizuku/server/IShizukuApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/shizuku/server/IShizukuApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "moe.shizuku.server.IShizukuApplication"

.field static final TRANSACTION_bindApplication:I = 0x2

.field static final TRANSACTION_dispatchRequestPermissionResult:I = 0x3

.field static final TRANSACTION_showPermissionConfirmation:I = 0x2711


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "moe.shizuku.server.IShizukuApplication"

    invoke-virtual {p0, p0, v0}, Lmoe/shizuku/server/IShizukuApplication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuApplication;
    .locals 2

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const-string v0, "moe.shizuku.server.IShizukuApplication"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmoe/shizuku/server/IShizukuApplication;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Lmoe/shizuku/server/IShizukuApplication;

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;

    invoke-direct {v0, p0}, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static getDefaultImpl()Lmoe/shizuku/server/IShizukuApplication;
    .locals 1

    .line 216
    sget-object v0, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuApplication;

    return-object v0
.end method

.method public static setDefaultImpl(Lmoe/shizuku/server/IShizukuApplication;)Z
    .locals 2

    .line 206
    sget-object v0, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuApplication;

    if-nez v0, :cond_1

    .line 209
    if-eqz p0, :cond_0

    .line 210
    sput-object p0, Lmoe/shizuku/server/IShizukuApplication$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuApplication;

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    sparse-switch p1, :sswitch_data_0

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 61
    :sswitch_0
    const-string v0, "moe.shizuku.server.IShizukuApplication"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 62
    goto :goto_0

    .line 94
    :sswitch_1
    const-string v0, "moe.shizuku.server.IShizukuApplication"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 103
    invoke-virtual {p0, v0, v2, v3, v4}, Lmoe/shizuku/server/IShizukuApplication$Stub;->showPermissionConfirmation(IILjava/lang/String;I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 105
    goto :goto_0

    .line 79
    :sswitch_2
    const-string v2, "moe.shizuku.server.IShizukuApplication"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 89
    :cond_0
    invoke-virtual {p0, v2, v0}, Lmoe/shizuku/server/IShizukuApplication$Stub;->dispatchRequestPermissionResult(ILandroid/os/Bundle;)V

    move v0, v1

    .line 90
    goto :goto_0

    .line 66
    :sswitch_3
    const-string v2, "moe.shizuku.server.IShizukuApplication"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 74
    :cond_1
    invoke-virtual {p0, v0}, Lmoe/shizuku/server/IShizukuApplication$Stub;->bindApplication(Landroid/os/Bundle;)V

    move v0, v1

    .line 75
    goto :goto_0

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x2711 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
