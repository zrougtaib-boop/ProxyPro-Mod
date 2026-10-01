.class public abstract Lmoe/shizuku/server/IRemoteProcess$Stub;
.super Landroid/os/Binder;
.source "IRemoteProcess.java"

# interfaces
.implements Lmoe/shizuku/server/IRemoteProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/shizuku/server/IRemoteProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/shizuku/server/IRemoteProcess$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "moe.shizuku.server.IRemoteProcess"

.field static final TRANSACTION_alive:I = 0x7

.field static final TRANSACTION_destroy:I = 0x6

.field static final TRANSACTION_exitValue:I = 0x5

.field static final TRANSACTION_getErrorStream:I = 0x3

.field static final TRANSACTION_getInputStream:I = 0x2

.field static final TRANSACTION_getOutputStream:I = 0x1

.field static final TRANSACTION_waitFor:I = 0x4

.field static final TRANSACTION_waitForTimeout:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "moe.shizuku.server.IRemoteProcess"

    invoke-virtual {p0, p0, v0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IRemoteProcess;
    .locals 2

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const-string v0, "moe.shizuku.server.IRemoteProcess"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmoe/shizuku/server/IRemoteProcess;

    if-eqz v1, :cond_1

    .line 66
    check-cast v0, Lmoe/shizuku/server/IRemoteProcess;

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Lmoe/shizuku/server/IRemoteProcess$Stub$Proxy;

    invoke-direct {v0, p0}, Lmoe/shizuku/server/IRemoteProcess$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static getDefaultImpl()Lmoe/shizuku/server/IRemoteProcess;
    .locals 1

    .line 389
    sget-object v0, Lmoe/shizuku/server/IRemoteProcess$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IRemoteProcess;

    return-object v0
.end method

.method public static setDefaultImpl(Lmoe/shizuku/server/IRemoteProcess;)Z
    .locals 2

    .line 379
    sget-object v0, Lmoe/shizuku/server/IRemoteProcess$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IRemoteProcess;

    if-nez v0, :cond_1

    .line 382
    if-eqz p0, :cond_0

    .line 383
    sput-object p0, Lmoe/shizuku/server/IRemoteProcess$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IRemoteProcess;

    .line 384
    const/4 v0, 0x1

    .line 386
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 72
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 76
    sparse-switch p1, :sswitch_data_0

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 81
    :sswitch_0
    const-string v1, "moe.shizuku.server.IRemoteProcess"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :sswitch_1
    const-string v1, "moe.shizuku.server.IRemoteProcess"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {p0, v2, v3, v1}, Lmoe/shizuku/server/IRemoteProcess$Stub;->waitForTimeout(JLjava/lang/String;)Z

    move-result v1

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 151
    :sswitch_2
    const-string v1, "moe.shizuku.server.IRemoteProcess"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->alive()Z

    move-result v1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 144
    :sswitch_3
    const-string v1, "moe.shizuku.server.IRemoteProcess"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->destroy()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 136
    :sswitch_4
    const-string v1, "moe.shizuku.server.IRemoteProcess"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->exitValue()I

    move-result v1

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 128
    :sswitch_5
    const-string v1, "moe.shizuku.server.IRemoteProcess"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->waitFor()I

    move-result v1

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 114
    :sswitch_6
    const-string v1, "moe.shizuku.server.IRemoteProcess"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->getErrorStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v1, p3, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    :sswitch_7
    const-string v1, "moe.shizuku.server.IRemoteProcess"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->getInputStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v1, p3, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 108
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 86
    :sswitch_8
    const-string v1, "moe.shizuku.server.IRemoteProcess"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->getOutputStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {v1, p3, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 94
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
