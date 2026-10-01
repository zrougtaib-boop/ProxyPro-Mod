.class public abstract Lmoe/shizuku/server/IShizukuService$Stub;
.super Landroid/os/Binder;
.source "IShizukuService.java"

# interfaces
.implements Lmoe/shizuku/server/IShizukuService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/shizuku/server/IShizukuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/shizuku/server/IShizukuService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "moe.shizuku.server.IShizukuService"

.field static final TRANSACTION_addUserService:I = 0xc

.field static final TRANSACTION_attachApplication:I = 0xe

.field static final TRANSACTION_attachUserService:I = 0x66

.field static final TRANSACTION_checkPermission:I = 0x5

.field static final TRANSACTION_checkSelfPermission:I = 0x10

.field static final TRANSACTION_dispatchPackageChanged:I = 0x67

.field static final TRANSACTION_dispatchPermissionConfirmationResult:I = 0x69

.field static final TRANSACTION_exit:I = 0x65

.field static final TRANSACTION_getFlagsForUid:I = 0x6a

.field static final TRANSACTION_getSELinuxContext:I = 0x9

.field static final TRANSACTION_getSystemProperty:I = 0xa

.field static final TRANSACTION_getUid:I = 0x4

.field static final TRANSACTION_getVersion:I = 0x3

.field static final TRANSACTION_isHidden:I = 0x68

.field static final TRANSACTION_newProcess:I = 0x8

.field static final TRANSACTION_removeUserService:I = 0xd

.field static final TRANSACTION_requestPermission:I = 0xf

.field static final TRANSACTION_setSystemProperty:I = 0xb

.field static final TRANSACTION_shouldShowRequestPermissionRationale:I = 0x11

.field static final TRANSACTION_updateFlagsForUid:I = 0x6b


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p0, p0, v0}, Lmoe/shizuku/server/IShizukuService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuService;
    .locals 2

    .line 102
    if-nez p0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 105
    :cond_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmoe/shizuku/server/IShizukuService;

    if-eqz v1, :cond_1

    .line 107
    check-cast v0, Lmoe/shizuku/server/IShizukuService;

    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;

    invoke-direct {v0, p0}, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static getDefaultImpl()Lmoe/shizuku/server/IShizukuService;
    .locals 1

    .line 849
    sget-object v0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuService;

    return-object v0
.end method

.method public static setDefaultImpl(Lmoe/shizuku/server/IShizukuService;)Z
    .locals 2

    .line 839
    sget-object v0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuService;

    if-nez v0, :cond_1

    .line 842
    if-eqz p0, :cond_0

    .line 843
    sput-object p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuService;

    .line 844
    const/4 v0, 0x1

    .line 846
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 840
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 113
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 117
    sparse-switch p1, :sswitch_data_0

    .line 358
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 122
    :sswitch_0
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 123
    goto :goto_0

    .line 345
    :sswitch_1
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 352
    invoke-virtual {p0, v0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->updateFlagsForUid(III)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 354
    goto :goto_0

    .line 333
    :sswitch_2
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 338
    invoke-virtual {p0, v0, v2}, Lmoe/shizuku/server/IShizukuService$Stub;->getFlagsForUid(II)I

    move-result v0

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 341
    goto :goto_0

    .line 314
    :sswitch_3
    const-string v2, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 323
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 328
    :cond_0
    invoke-virtual {p0, v2, v3, v4, v0}, Lmoe/shizuku/server/IShizukuService$Stub;->dispatchPermissionConfirmationResult(IIILandroid/os/Bundle;)V

    move v0, v1

    .line 329
    goto :goto_0

    .line 304
    :sswitch_4
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 307
    invoke-virtual {p0, v0}, Lmoe/shizuku/server/IShizukuService$Stub;->isHidden(I)Z

    move-result v0

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 310
    goto :goto_0

    .line 291
    :sswitch_5
    const-string v2, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 299
    :cond_1
    invoke-virtual {p0, v0}, Lmoe/shizuku/server/IShizukuService$Stub;->dispatchPackageChanged(Landroid/content/Intent;)V

    move v0, v1

    .line 300
    goto/16 :goto_0

    .line 275
    :sswitch_6
    const-string v2, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 285
    :cond_2
    invoke-virtual {p0, v2, v0}, Lmoe/shizuku/server/IShizukuService$Stub;->attachUserService(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 287
    goto/16 :goto_0

    .line 268
    :sswitch_7
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->exit()V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 271
    goto/16 :goto_0

    .line 260
    :sswitch_8
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->shouldShowRequestPermissionRationale()Z

    move-result v0

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 264
    goto/16 :goto_0

    .line 252
    :sswitch_9
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->checkSelfPermission()Z

    move-result v0

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 256
    goto/16 :goto_0

    .line 243
    :sswitch_a
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    invoke-virtual {p0, v0}, Lmoe/shizuku/server/IShizukuService$Stub;->requestPermission(I)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 248
    goto/16 :goto_0

    .line 232
    :sswitch_b
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmoe/shizuku/server/IShizukuApplication$Stub;->asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuApplication;

    move-result-object v0

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {p0, v0, v2}, Lmoe/shizuku/server/IShizukuService$Stub;->attachApplication(Lmoe/shizuku/server/IShizukuApplication;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 239
    goto/16 :goto_0

    .line 215
    :sswitch_c
    const-string v2, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuServiceConnection;

    move-result-object v2

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 220
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 225
    :cond_3
    invoke-virtual {p0, v2, v0}, Lmoe/shizuku/server/IShizukuService$Stub;->removeUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I

    move-result v0

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 228
    goto/16 :goto_0

    .line 198
    :sswitch_d
    const-string v2, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuServiceConnection;

    move-result-object v2

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 203
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 208
    :cond_4
    invoke-virtual {p0, v2, v0}, Lmoe/shizuku/server/IShizukuService$Stub;->addUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I

    move-result v0

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 211
    goto/16 :goto_0

    .line 187
    :sswitch_e
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {p0, v0, v2}, Lmoe/shizuku/server/IShizukuService$Stub;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 194
    goto/16 :goto_0

    .line 175
    :sswitch_f
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p0, v0, v2}, Lmoe/shizuku/server/IShizukuService$Stub;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 183
    goto/16 :goto_0

    .line 167
    :sswitch_10
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->getSELinuxContext()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 171
    goto/16 :goto_0

    .line 153
    :sswitch_11
    const-string v2, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {p0, v2, v3, v4}, Lmoe/shizuku/server/IShizukuService$Stub;->newProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lmoe/shizuku/server/IRemoteProcess;

    move-result-object v2

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lmoe/shizuku/server/IRemoteProcess;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 163
    goto/16 :goto_0

    .line 143
    :sswitch_12
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p0, v0}, Lmoe/shizuku/server/IShizukuService$Stub;->checkPermission(Ljava/lang/String;)I

    move-result v0

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 149
    goto/16 :goto_0

    .line 135
    :sswitch_13
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->getUid()I

    move-result v0

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 139
    goto/16 :goto_0

    .line 127
    :sswitch_14
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->getVersion()I

    move-result v0

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 131
    goto/16 :goto_0

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_14
        0x4 -> :sswitch_13
        0x5 -> :sswitch_12
        0x8 -> :sswitch_11
        0x9 -> :sswitch_10
        0xa -> :sswitch_f
        0xb -> :sswitch_e
        0xc -> :sswitch_d
        0xd -> :sswitch_c
        0xe -> :sswitch_b
        0xf -> :sswitch_a
        0x10 -> :sswitch_9
        0x11 -> :sswitch_8
        0x65 -> :sswitch_7
        0x66 -> :sswitch_6
        0x67 -> :sswitch_5
        0x68 -> :sswitch_4
        0x69 -> :sswitch_3
        0x6a -> :sswitch_2
        0x6b -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
