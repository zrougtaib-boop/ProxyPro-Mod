.class Lultima/pro/proxy/MainActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lultima/pro/proxy/RequestNetwork$RequestListener;


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

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lultima/pro/proxy/MainActivity$3;)Lultima/pro/proxy/MainActivity;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lultima/pro/proxy/MainActivity;->_Progress(ZLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Lultima/pro/proxy/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, "Please turn on your network / internet"

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, "Please turn on your network"

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonSound;->speak(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lultima/pro/proxy/MainActivity$3$4;

    invoke-direct {v1, p0}, Lultima/pro/proxy/MainActivity$3$4;-><init>(Lultima/pro/proxy/MainActivity$3;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, "Server not reachable, retrying..."

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lultima/pro/proxy/MainActivity;->_Progress(ZLjava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lultima/pro/proxy/MainActivity$3$1;

    invoke-direct {v2, p0}, Lultima/pro/proxy/MainActivity$3$1;-><init>(Lultima/pro/proxy/MainActivity$3;)V

    invoke-virtual {v2}, Lultima/pro/proxy/MainActivity$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1, v0}, Lultima/pro/proxy/MainActivity;->access$20(Lultima/pro/proxy/MainActivity;Ljava/util/HashMap;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$21(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "maintenance"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$21(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lultima/pro/proxy/MainActivity;->access$22(Lultima/pro/proxy/MainActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$21(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lultima/pro/proxy/MainActivity;->access$23(Lultima/pro/proxy/MainActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$21(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lultima/pro/proxy/MainActivity;->access$24(Lultima/pro/proxy/MainActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->VersionAndroidSketchwareMaster()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v1}, Lultima/pro/proxy/MainActivity;->access$25(Lultima/pro/proxy/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v0, 0x7f080118

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0800f8

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0800f9

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080289

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080287

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08026c

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080073

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v8, 0x7f080072

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v8, -0xfc2b00

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v0, -0xfc2b00

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/djgamingvip_bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/djgamingvip_normal.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/sansation_regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/djgamingvip_normal.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/djgamingvip_normal.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v0, Lultima/pro/proxy/MainActivity$3$2;

    invoke-direct {v0, p0}, Lultima/pro/proxy/MainActivity$3$2;-><init>(Lultima/pro/proxy/MainActivity$3;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lultima/pro/proxy/MainActivity$3$3;

    invoke-direct {v0, p0}, Lultima/pro/proxy/MainActivity$3$3;-><init>(Lultima/pro/proxy/MainActivity$3;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$3;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-virtual {v0}, Lultima/pro/proxy/MainActivity;->finishAffinity()V

    goto :goto_0
.end method
