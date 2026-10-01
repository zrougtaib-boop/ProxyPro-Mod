.class public Lrikka/shizuku/ShizukuProvider;
.super Landroid/content/ContentProvider;
.source "ShizukuProvider.java"


# static fields
.field public static final ACTION_BINDER_RECEIVED:Ljava/lang/String; = "moe.shizuku.api.action.BINDER_RECEIVED"

.field private static final EXTRA_BINDER:Ljava/lang/String; = "moe.shizuku.privileged.api.intent.extra.BINDER"

.field public static final MANAGER_APPLICATION_ID:Ljava/lang/String; = "moe.shizuku.privileged.api"

.field public static final METHOD_GET_BINDER:Ljava/lang/String; = "getBinder"

.field public static final METHOD_SEND_BINDER:Ljava/lang/String; = "sendBinder"

.field public static final PERMISSION:Ljava/lang/String; = "moe.shizuku.manager.permission.API_V23"

.field private static final TAG:Ljava/lang/String; = "ShizukuProvider"

.field private static enableMultiProcess:Z

.field private static enableSuiInitialization:Z

.field private static isProviderProcess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    sput-boolean v0, Lrikka/shizuku/ShizukuProvider;->enableMultiProcess:Z

    .line 82
    sput-boolean v0, Lrikka/shizuku/ShizukuProvider;->isProviderProcess:Z

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lrikka/shizuku/ShizukuProvider;->enableSuiInitialization:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static disableAutomaticSuiInitialization()V
    .locals 1

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lrikka/shizuku/ShizukuProvider;->enableSuiInitialization:Z

    .line 107
    return-void
.end method

.method public static enableMultiProcessSupport(Z)V
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable built-in multi-process support (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string v0, "provider process"

    :goto_0
    const-string v2, "ShizukuProvider"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sput-boolean p0, Lrikka/shizuku/ShizukuProvider;->isProviderProcess:Z

    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Lrikka/shizuku/ShizukuProvider;->enableMultiProcess:Z

    .line 100
    return-void

    .line 96
    :cond_0
    const-string v0, "non-provider process"

    goto :goto_0
.end method

.method private handleGetBinder(Landroid/os/Bundle;)Z
    .locals 3

    .line 228
    invoke-static {}, Lrikka/shizuku/Shizuku;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    :cond_0
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    .line 232
    :cond_1
    const-string v1, "moe.shizuku.privileged.api.intent.extra.BINDER"

    new-instance v2, Lmoe/shizuku/api/BinderContainer;

    invoke-direct {v2, v0}, Lmoe/shizuku/api/BinderContainer;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 233
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleSendBinder(Landroid/os/Bundle;)V
    .locals 3

    .line 204
    invoke-static {}, Lrikka/shizuku/Shizuku;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    const-string v0, "ShizukuProvider"

    const-string v1, "sendBinder is called when already a living binder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v0, "moe.shizuku.privileged.api.intent.extra.BINDER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmoe/shizuku/api/BinderContainer;

    .line 210
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmoe/shizuku/api/BinderContainer;->binder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 211
    const-string v1, "ShizukuProvider"

    const-string v2, "binder received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, v0, Lmoe/shizuku/api/BinderContainer;->binder:Landroid/os/IBinder;

    invoke-virtual {p0}, Lrikka/shizuku/ShizukuProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lrikka/shizuku/Shizuku;->onBinderReceived(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 215
    sget-boolean v1, Lrikka/shizuku/ShizukuProvider;->enableMultiProcess:Z

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "ShizukuProvider"

    const-string v2, "broadcast binder"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-string v2, "moe.shizuku.api.action.BINDER_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    const-string v2, "moe.shizuku.privileged.api.intent.extra.BINDER"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lrikka/shizuku/ShizukuProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lrikka/shizuku/ShizukuProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static requestBinderForNonProviderProcess(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    .line 115
    sget-boolean v1, Lrikka/shizuku/ShizukuProvider;->isProviderProcess:Z

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v1, "ShizukuProvider"

    const-string v2, "request binder in non-provider process"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v1, Lrikka/shizuku/ShizukuProvider$1;

    invoke-direct {v1}, Lrikka/shizuku/ShizukuProvider$1;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "moe.shizuku.api.action.BINDER_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".shizuku"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "getBinder"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 140
    :goto_1
    if-eqz v0, :cond_0

    .line 141
    const-class v1, Lmoe/shizuku/api/BinderContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 143
    const-string v1, "moe.shizuku.privileged.api.intent.extra.BINDER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmoe/shizuku/api/BinderContainer;

    .line 144
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmoe/shizuku/api/BinderContainer;->binder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "ShizukuProvider"

    const-string v2, "Binder received from other process"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, v0, Lmoe/shizuku/api/BinderContainer;->binder:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lrikka/shizuku/Shizuku;->onBinderReceived(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    goto :goto_1
.end method

.method public static setIsProviderProcess(Z)V
    .locals 0

    .line 87
    sput-boolean p0, Lrikka/shizuku/ShizukuProvider;->isProviderProcess:Z

    .line 88
    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .line 153
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 155
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v0, :cond_1

    .line 158
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    sput-boolean v0, Lrikka/shizuku/ShizukuProvider;->isProviderProcess:Z

    .line 162
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "android:exported must be true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "android:multiprocess must be false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    .line 176
    invoke-static {}, Lrikka/sui/Sui;->isSui()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const-string v0, "ShizukuProvider"

    const-string v1, "Provider called when Sui is available. Are you using Shizuku and Sui at the same time?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 181
    :cond_1
    if-eqz p3, :cond_0

    .line 185
    const-class v1, Lmoe/shizuku/api/BinderContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 187
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_2
    move-object v0, v1

    .line 191
    goto :goto_0

    .line 188
    :sswitch_0
    const-string v2, "getBinder"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "sendBinder"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    .line 194
    :pswitch_0
    invoke-direct {p0, v1}, Lrikka/shizuku/ShizukuProvider;->handleGetBinder(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-direct {p0, p3}, Lrikka/shizuku/ShizukuProvider;->handleSendBinder(Landroid/os/Bundle;)V

    goto :goto_2

    .line 188
    :sswitch_data_0
    .sparse-switch
        -0xb6f4ae -> :sswitch_1
        0x124d38a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 4

    .line 166
    sget-boolean v0, Lrikka/shizuku/ShizukuProvider;->enableSuiInitialization:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lrikka/sui/Sui;->isSui()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lrikka/shizuku/ShizukuProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrikka/sui/Sui;->init(Ljava/lang/String;)Z

    move-result v0

    .line 168
    const-string v1, "ShizukuProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialize Sui: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 262
    const/4 v0, 0x0

    return v0
.end method
