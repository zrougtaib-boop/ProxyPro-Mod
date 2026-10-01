.class Lultima/pro/proxy/MainActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lultima/pro/proxy/MainActivity;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    invoke-static {}, Lultima/pro/proxy/Guard;->clean()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/Guard;->okPackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, "Modified Detected \u2014 Please install the original APK"

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "float_open"

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$2(Lultima/pro/proxy/MainActivity;)Lcom/google/android/material/card/MaterialCardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, "You are already logged in - Enjoy your game!"

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, "Verifying server"

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonSound;->speak(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    const/4 v1, 0x1

    const-string v2, "Verifying Server..."

    invoke-virtual {v0, v1, v2}, Lultima/pro/proxy/MainActivity;->_Progress(ZLjava/lang/String;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$3(Lultima/pro/proxy/MainActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lultima/pro/proxy/MainActivity;->access$4(Lultima/pro/proxy/MainActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v1}, Lultima/pro/proxy/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lultima/pro/proxy/MainActivity;->access$5(Lultima/pro/proxy/MainActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$6(Lultima/pro/proxy/MainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, "Please Enter AuthKey"

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Lultima/pro/proxy/MainActivity;->_Progress(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lultima/pro/proxy/MainActivity;->access$7(Lultima/pro/proxy/MainActivity;Ljava/util/HashMap;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$8(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "keyAuth"

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v2}, Lultima/pro/proxy/MainActivity;->access$6(Lultima/pro/proxy/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$8(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "deviceID"

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v2}, Lultima/pro/proxy/MainActivity;->access$9(Lultima/pro/proxy/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lultima/pro/proxy/MainActivity;->access$10(Lultima/pro/proxy/MainActivity;Ljava/util/HashMap;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$11(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$12(Lultima/pro/proxy/MainActivity;)Lultima/pro/proxy/RequestNetwork;

    move-result-object v0

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$11(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lultima/pro/proxy/RequestNetwork;->setHeaders(Ljava/util/HashMap;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$12(Lultima/pro/proxy/MainActivity;)Lultima/pro/proxy/RequestNetwork;

    move-result-object v0

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$8(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lultima/pro/proxy/RequestNetwork;->setParams(Ljava/util/HashMap;I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$12(Lultima/pro/proxy/MainActivity;)Lultima/pro/proxy/RequestNetwork;

    move-result-object v0

    const-string v1, "POST"

    const-string v2, "https://jitustore.shop/jituproxy/login.php"

    const-string v3, "login"

    iget-object v4, p0, Lultima/pro/proxy/MainActivity$1;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v4}, Lultima/pro/proxy/MainActivity;->access$13(Lultima/pro/proxy/MainActivity;)Lultima/pro/proxy/RequestNetwork$RequestListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lultima/pro/proxy/RequestNetwork;->startRequestNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lultima/pro/proxy/RequestNetwork$RequestListener;)V

    goto/16 :goto_0
.end method
