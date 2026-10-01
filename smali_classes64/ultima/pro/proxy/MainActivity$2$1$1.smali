.class Lultima/pro/proxy/MainActivity$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$2:Lultima/pro/proxy/MainActivity$2$1;

.field private final val$_response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity$2$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$2$1$1;->val$_response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lultima/pro/proxy/MainActivity;->_Progress(ZLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$2$1$1;->val$_response:Ljava/lang/String;

    new-instance v3, Lultima/pro/proxy/MainActivity$2$1$1$1;

    invoke-direct {v3, p0}, Lultima/pro/proxy/MainActivity$2$1$1$1;-><init>(Lultima/pro/proxy/MainActivity$2$1$1;)V

    invoke-virtual {v3}, Lultima/pro/proxy/MainActivity$2$1$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1, v0}, Lultima/pro/proxy/MainActivity;->access$14(Lultima/pro/proxy/MainActivity;Ljava/util/HashMap;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$15(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$15(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$15(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "keyAuth"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v1

    invoke-static {v1}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$16(Lultima/pro/proxy/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "AuthKey"

    const-string v3, "keyAuth"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v1, "status"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v1

    invoke-static {v1}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$16(Lultima/pro/proxy/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "status"

    const-string v3, "status"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    const-string v1, "validUntil"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v1

    invoke-static {v1}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$16(Lultima/pro/proxy/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "validity"

    const-string v3, "validUntil"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    const-string v1, "registered_date"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v1

    invoke-static {v1}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$16(Lultima/pro/proxy/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "rgtime"

    const-string v3, "registered_date"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    const-string v1, "Login Successful - Welcome!"

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/VideoView;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/widget/VideoView;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v2}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v2

    invoke-static {v2}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lultima/pro/proxy/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "after_login.mp4"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v2}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v2

    invoke-static {v2}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "after_login.mp4"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x1000

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_6

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    :try_start_2
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->_floating()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-void

    :cond_6
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_7
    :try_start_4
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    const-string v1, "Login failed!"

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v2}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v2

    invoke-static {v2}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lultima/pro/proxy/MainActivity;->getApplicationContext()Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Lultima/pro/proxy/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v2, "clipboard"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_2

    :cond_8
    :try_start_5
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$2$1$1;->this$2:Lultima/pro/proxy/MainActivity$2$1;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity$2$1;->access$0(Lultima/pro/proxy/MainActivity$2$1;)Lultima/pro/proxy/MainActivity$2;

    move-result-object v1

    invoke-static {v1}, Lultima/pro/proxy/MainActivity$2;->access$0(Lultima/pro/proxy/MainActivity$2;)Lultima/pro/proxy/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$15(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2
.end method
