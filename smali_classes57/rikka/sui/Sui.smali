.class public Lrikka/sui/Sui;
.super Ljava/lang/Object;
.source "Sui.java"


# static fields
.field private static final BRIDGE_ACTION_GET_BINDER:I = 0x2

.field private static final BRIDGE_SERVICE_DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field private static final BRIDGE_SERVICE_NAME:Ljava/lang/String; = "activity"

.field private static final BRIDGE_TRANSACTION_CODE:I = 0x5f535549

.field private static isSui:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-static {}, Lrikka/sui/Sui;->requestBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    invoke-static {v2, p0}, Lrikka/shizuku/Shizuku;->onBinderReceived(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 56
    sput-boolean v0, Lrikka/sui/Sui;->isSui:Z

    .line 60
    :goto_0
    return v0

    .line 59
    :cond_0
    sput-boolean v1, Lrikka/sui/Sui;->isSui:Z

    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public static isSui()Z
    .locals 1

    .line 43
    sget-boolean v0, Lrikka/sui/Sui;->isSui:Z

    return v0
.end method

.method private static requestBinder()Landroid/os/IBinder;
    .locals 6

    const/4 v0, 0x0

    .line 17
    const-string v1, "activity"

    invoke-static {v1}, Lrikka/shizuku/SystemServiceHelper;->getSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 36
    :goto_0
    return-object v0

    .line 20
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 21
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 23
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 24
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    const v4, 0x5f535549

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 27
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 35
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 29
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 35
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 34
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 35
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 36
    throw v0
.end method
