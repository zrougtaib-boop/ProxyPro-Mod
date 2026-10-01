.class public Lultima/pro/proxy/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;
    }
.end annotation


# instance fields
.field private KEY:Landroid/content/SharedPreferences;

.field private _http_request_listener:Lultima/pro/proxy/RequestNetwork$RequestListener;

.field private _timer:Ljava/util/Timer;

.field private _update_request_listener:Lultima/pro/proxy/RequestNetwork$RequestListener;

.field private app_version:Ljava/lang/String;

.field private body:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private btnAuthorize:Landroid/widget/Button;

.field private cardContainer:Lcom/google/android/material/card/MaterialCardView;

.field private deviceID:Ljava/lang/String;

.field private dialog:Landroid/app/AlertDialog$Builder;

.field private displayView:Landroid/view/View;

.field private etAuthKey:Landroid/widget/EditText;

.field private headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private http:Lultima/pro/proxy/RequestNetwork;

.field private intent:Landroid/content/Intent;

.field private key:Ljava/lang/String;

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private linear10:Landroid/widget/LinearLayout;

.field private linear6:Landroid/widget/LinearLayout;

.field private linear7:Landroid/widget/LinearLayout;

.field private linear8:Landroid/widget/LinearLayout;

.field private linear9:Landroid/widget/LinearLayout;

.field private link:Ljava/lang/String;

.field private loadingDialog:Landroid/app/Dialog;

.field private loadingText:Landroid/widget/TextView;

.field private message:Ljava/lang/String;

.field private response:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private textview1:Landroid/widget/TextView;

.field private timer:Ljava/util/TimerTask;

.field private tts:Landroid/speech/tts/TextToSpeech;

.field private tvAuthLabel:Landroid/widget/TextView;

.field private tvBrandTitle:Landroid/widget/TextView;

.field private tvPremiumTag:Landroid/widget/TextView;

.field private tvSecureAccess:Landroid/widget/TextView;

.field private tvTeamName:Landroid/widget/TextView;

.field private tvVersion:Landroid/widget/TextView;

.field private update:Lultima/pro/proxy/RequestNetwork;

.field private userMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->_timer:Ljava/util/Timer;

    const-string v0, ""

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->key:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->deviceID:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->headers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->body:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->result:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->userMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->response:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->message:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->app_version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->link:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->intent:Landroid/content/Intent;

    return-void
.end method

.method private _reCall()V
    .locals 15

    const/4 v11, -0x1

    const/4 v5, 0x1

    const/4 v10, 0x0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_5

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Please allow All Files Access permission"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_6

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "moe.shizuku.privileged.api"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Lcom/AndroidSketchwareMaster/ShizukuMaster;

    invoke-direct {v0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;-><init>()V

    invoke-static {}, Lrikka/shizuku/Shizuku;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v0, "Shizuku Not Running - Please start Shizuku app"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_2
    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->etAuthKey:Landroid/widget/EditText;

    iget-object v1, p0, Lultima/pro/proxy/MainActivity;->KEY:Landroid/content/SharedPreferences;

    const-string v2, "AuthKey"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->update:Lultima/pro/proxy/RequestNetwork;

    const-string v1, "GET"

    const-string v2, "https://jitustore.shop/jituproxy/maintenance.php"

    const-string v3, "djgamingvip"

    iget-object v4, p0, Lultima/pro/proxy/MainActivity;->_update_request_listener:Lultima/pro/proxy/RequestNetwork$RequestListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lultima/pro/proxy/RequestNetwork;->startRequestNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lultima/pro/proxy/RequestNetwork$RequestListener;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->etAuthKey:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v14, v10}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    const v0, 0x7f080118

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08019f

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const v1, 0x7f08023f

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v1, 0x7f080074

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v1, 0x7f080241

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f080240

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v4, "Security Check"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "System Checking For You Subscribed Or not"

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "Checking..."

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v4, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v8, 0x2bc

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    invoke-virtual {v1, v11}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    const-string v1, "#44FF44"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v4, "#FF111111"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 v4, 0xa

    const-string v7, "#FF212121"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v0, "#FF212121"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v0, 0x5

    const-string v1, "#FF333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setAlpha(F)V

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lultima/pro/proxy/MainActivity$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lultima/pro/proxy/MainActivity$6;-><init>(Lultima/pro/proxy/MainActivity;Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/util/Timer;Landroid/widget/TextView;Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;)V

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x3c

    move-object v8, v4

    move-object v9, v0

    invoke-virtual/range {v8 .. v13}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    new-instance v0, Lultima/pro/proxy/MainActivity$7;

    invoke-direct {v0, p0, v14}, Lultima/pro/proxy/MainActivity$7;-><init>(Lultima/pro/proxy/MainActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1020002

    :try_start_2
    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    const/high16 v0, -0x1000000

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v0, 0x1

    new-array v3, v0, [Z

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/media/MediaPlayer;

    new-instance v5, Lultima/pro/proxy/MainActivity$8;

    invoke-direct {v5, p0, p0}, Lultima/pro/proxy/MainActivity$8;-><init>(Lultima/pro/proxy/MainActivity;Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v6, -0x1

    invoke-direct {v0, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    invoke-virtual {v4, v5, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\ud83d\udd0a"

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v7, -0x34000000    # -3.3554432E7f

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    const v8, -0xff0100

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v6, 0x41f00000    # 30.0f

    mul-float/2addr v6, v0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setElevation(F)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v7, 0x42380000    # 46.0f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    const/high16 v8, 0x42380000    # 46.0f

    mul-float/2addr v8, v0

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v7, 0x800035

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v7, 0x0

    const/high16 v8, 0x41600000    # 14.0f

    mul-float/2addr v8, v0

    float-to-int v8, v8

    const/high16 v9, 0x41600000    # 14.0f

    mul-float/2addr v0, v9

    float-to-int v0, v0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v0, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lultima/pro/proxy/MainActivity$9;

    invoke-direct {v0, p0, v3, v2, v1}, Lultima/pro/proxy/MainActivity$9;-><init>(Lultima/pro/proxy/MainActivity;[Z[Landroid/media/MediaPlayer;Landroid/widget/TextView;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v6, "login_background.mp4"

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v6, "login_background.mp4"

    invoke-virtual {v1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x1000

    new-array v7, v7, [B

    :goto_3
    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-gtz v8, :cond_c

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    new-instance v0, Lultima/pro/proxy/MainActivity$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lultima/pro/proxy/MainActivity$10;-><init>(Lultima/pro/proxy/MainActivity;[Landroid/media/MediaPlayer;[ZLandroid/widget/FrameLayout;Landroid/widget/VideoView;)V

    invoke-virtual {v5, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v5}, Landroid/widget/VideoView;->start()V

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lultima/pro/proxy/MainActivity$11;

    invoke-direct {v1, p0, p0, v5}, Lultima/pro/proxy/MainActivity$11;-><init>(Lultima/pro/proxy/MainActivity;Landroid/app/Activity;Landroid/widget/VideoView;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_4
    :try_start_3
    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v0, "Get Key"

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    const v0, -0xff0100

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lultima/pro/proxy/MainActivity;->btnAuthorize:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTextSize()F

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->btnAuthorize:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const v4, -0xff0100

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    const v4, 0x5500ff00

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v4, v0, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->btnAuthorize:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_d

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->btnAuthorize:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    move-object v0, v1

    :goto_5
    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lultima/pro/proxy/MainActivity;->linear6:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lultima/pro/proxy/MainActivity;->linear6:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lultima/pro/proxy/MainActivity;->btnAuthorize:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const v0, -0xff0100

    const/high16 v1, -0x40800000    # -1.0f

    const-wide/16 v4, 0xbb8

    invoke-static {v3, v0, v1, v4, v5}, Lultima/pro/proxy/NeonUi;->runBorder(Landroid/view/View;IFJ)V

    new-instance v0, Lultima/pro/proxy/MainActivity$12;

    invoke-direct {v0, p0}, Lultima/pro/proxy/MainActivity$12;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_6
    :try_start_4
    new-instance v0, Lultima/pro/proxy/NeonCardEffect;

    invoke-direct {v0, p0}, Lultima/pro/proxy/NeonCardEffect;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lultima/pro/proxy/MainActivity;->cardContainer:Lcom/google/android/material/card/MaterialCardView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/material/card/MaterialCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lultima/pro/proxy/MainActivity;->linear6:Landroid/widget/LinearLayout;

    new-instance v3, Lultima/pro/proxy/MainActivity$13;

    invoke-direct {v3, p0, v1, v0}, Lultima/pro/proxy/MainActivity$13;-><init>(Lultima/pro/proxy/MainActivity;Landroid/widget/FrameLayout$LayoutParams;Lultima/pro/proxy/NeonCardEffect;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :goto_7
    :try_start_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v1, p0, Lultima/pro/proxy/MainActivity;->linear10:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :goto_8
    :try_start_6
    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->tvPremiumTag:Landroid/widget/TextView;

    const v1, -0xff0100

    const/high16 v2, -0x40800000    # -1.0f

    const-wide/16 v4, 0xaf0

    invoke-static {v0, v1, v2, v4, v5}, Lultima/pro/proxy/NeonUi;->runBorder(Landroid/view/View;IFJ)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->btnAuthorize:Landroid/widget/Button;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const-wide/16 v4, 0xc80

    invoke-static {v0, v1, v2, v4, v5}, Lultima/pro/proxy/NeonUi;->runBorder(Landroid/view/View;IFJ)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->etAuthKey:Landroid/widget/EditText;

    const v1, -0xc400bd

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonUi;->passwordEye(Landroid/widget/EditText;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :goto_9
    return-void

    :cond_5
    :try_start_7
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Please allow Storage permission"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v10

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v5

    invoke-static {p0, v0, v5}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->oncreatShizuku(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->ShizukuRunCheck()Z
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    move-result v0

    if-eqz v0, :cond_a

    :try_start_9
    invoke-static {}, Lrikka/shizuku/Shizuku;->checkSelfPermission()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Shizuku Connected - Permission Granted"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :goto_a
    new-instance v0, Lultima/pro/proxy/MainActivity$5;

    invoke-direct {v0, p0}, Lultima/pro/proxy/MainActivity$5;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->addRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_a
    const-string v0, "Shizuku Running"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string v0, "Shizuku Not Installed - Please install Shizuku"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    :try_start_b
    const-string v0, "Please allow Shizuku permission"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_a

    :cond_a
    :try_start_c
    const-string v0, "Shizuku Not Running - Please start Shizuku app"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string v0, "Shizuku Permission Denied - Please allow permission"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_2

    :cond_c
    const/4 v9, 0x0

    :try_start_d
    invoke-virtual {v6, v7, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_4

    :cond_d
    :try_start_e
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v4, 0x42500000    # 52.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_6

    :catch_5
    move-exception v0

    goto/16 :goto_7

    :catch_6
    move-exception v0

    goto/16 :goto_8

    :catch_7
    move-exception v0

    goto/16 :goto_9
.end method

.method static synthetic access$0(Lultima/pro/proxy/MainActivity;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1(Lultima/pro/proxy/MainActivity;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$10(Lultima/pro/proxy/MainActivity;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity;->headers:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$11(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$12(Lultima/pro/proxy/MainActivity;)Lultima/pro/proxy/RequestNetwork;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->http:Lultima/pro/proxy/RequestNetwork;

    return-object v0
.end method

.method static synthetic access$13(Lultima/pro/proxy/MainActivity;)Lultima/pro/proxy/RequestNetwork$RequestListener;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->_http_request_listener:Lultima/pro/proxy/RequestNetwork$RequestListener;

    return-object v0
.end method

.method static synthetic access$14(Lultima/pro/proxy/MainActivity;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity;->result:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$15(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->result:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$16(Lultima/pro/proxy/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->KEY:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$17(Lultima/pro/proxy/MainActivity;Ljava/util/TimerTask;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity;->timer:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic access$18(Lultima/pro/proxy/MainActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->_timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$19(Lultima/pro/proxy/MainActivity;)Ljava/util/TimerTask;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->timer:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$2(Lultima/pro/proxy/MainActivity;)Lcom/google/android/material/card/MaterialCardView;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->cardContainer:Lcom/google/android/material/card/MaterialCardView;

    return-object v0
.end method

.method static synthetic access$20(Lultima/pro/proxy/MainActivity;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity;->response:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$21(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->response:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$22(Lultima/pro/proxy/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity;->message:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$23(Lultima/pro/proxy/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity;->app_version:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$24(Lultima/pro/proxy/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity;->link:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$25(Lultima/pro/proxy/MainActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->app_version:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lultima/pro/proxy/MainActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$27(Lultima/pro/proxy/MainActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->link:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lultima/pro/proxy/MainActivity;)Lultima/pro/proxy/RequestNetwork;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->update:Lultima/pro/proxy/RequestNetwork;

    return-object v0
.end method

.method static synthetic access$29(Lultima/pro/proxy/MainActivity;)Lultima/pro/proxy/RequestNetwork$RequestListener;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->_update_request_listener:Lultima/pro/proxy/RequestNetwork$RequestListener;

    return-object v0
.end method

.method static synthetic access$3(Lultima/pro/proxy/MainActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->etAuthKey:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lultima/pro/proxy/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity;->key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lultima/pro/proxy/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity;->deviceID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lultima/pro/proxy/MainActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lultima/pro/proxy/MainActivity;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity;->body:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$8(Lultima/pro/proxy/MainActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->body:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$9(Lultima/pro/proxy/MainActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->cardContainer:Lcom/google/android/material/card/MaterialCardView;

    const v0, 0x7f08012e

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->linear6:Landroid/widget/LinearLayout;

    const v0, 0x7f08012f

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->linear7:Landroid/widget/LinearLayout;

    const v0, 0x7f080130

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->linear8:Landroid/widget/LinearLayout;

    const v0, 0x7f080248

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->textview1:Landroid/widget/TextView;

    const v0, 0x7f080131

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->linear9:Landroid/widget/LinearLayout;

    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->btnAuthorize:Landroid/widget/Button;

    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->linear10:Landroid/widget/LinearLayout;

    const v0, 0x7f080283

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->tvBrandTitle:Landroid/widget/TextView;

    const v0, 0x7f080284

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->tvPremiumTag:Landroid/widget/TextView;

    const v0, 0x7f080285

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->tvSecureAccess:Landroid/widget/TextView;

    const v0, 0x7f080282

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->tvAuthLabel:Landroid/widget/TextView;

    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->etAuthKey:Landroid/widget/EditText;

    const v0, 0x7f080288

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->tvTeamName:Landroid/widget/TextView;

    const v0, 0x7f08028a

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->tvVersion:Landroid/widget/TextView;

    new-instance v0, Lultima/pro/proxy/RequestNetwork;

    invoke-direct {v0, p0}, Lultima/pro/proxy/RequestNetwork;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->http:Lultima/pro/proxy/RequestNetwork;

    const-string v0, "KEY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lultima/pro/proxy/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->KEY:Landroid/content/SharedPreferences;

    new-instance v0, Lultima/pro/proxy/RequestNetwork;

    invoke-direct {v0, p0}, Lultima/pro/proxy/RequestNetwork;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->update:Lultima/pro/proxy/RequestNetwork;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->tts:Landroid/speech/tts/TextToSpeech;

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->btnAuthorize:Landroid/widget/Button;

    new-instance v1, Lultima/pro/proxy/MainActivity$1;

    invoke-direct {v1, p0}, Lultima/pro/proxy/MainActivity$1;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lultima/pro/proxy/MainActivity$2;

    invoke-direct {v0, p0}, Lultima/pro/proxy/MainActivity$2;-><init>(Lultima/pro/proxy/MainActivity;)V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->_http_request_listener:Lultima/pro/proxy/RequestNetwork$RequestListener;

    new-instance v0, Lultima/pro/proxy/MainActivity$3;

    invoke-direct {v0, p0}, Lultima/pro/proxy/MainActivity$3;-><init>(Lultima/pro/proxy/MainActivity;)V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->_update_request_listener:Lultima/pro/proxy/RequestNetwork$RequestListener;

    return-void
.end method

.method private initializeLogic()V
    .locals 6

    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Lultima/pro/proxy/Guard;->allOk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Modified Detected \u2014 Please install the original APK"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Lultima/pro/proxy/MainActivity$4;

    invoke-direct {v0, p0}, Lultima/pro/proxy/MainActivity$4;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-static {p0, v0}, Lultima/pro/proxy/ServerCheck;->run(Landroid/app/Activity;Lultima/pro/proxy/ServerCheck$Result;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->tvBrandTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/ttoctosquaresxboldit.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->tvSecureAccess:Landroid/widget/TextView;

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/djgamingvip_bold.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->tvPremiumTag:Landroid/widget/TextView;

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/djgamingvip_normal.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->tvTeamName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/djgamingvip_normal.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->tvVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/djgamingvip_bold.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->tvAuthLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/djgamingvip_normal.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->btnAuthorize:Landroid/widget/Button;

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/djgamingvip_bold.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string v0, "Fetching Server..."

    invoke-virtual {p0, v4, v0}, Lultima/pro/proxy/MainActivity;->_Progress(ZLjava/lang/String;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->windowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_1
    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lultima/pro/proxy/MainActivity;->_reCall()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1
.end method

.method private showFloatingWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->displayView:Landroid/view/View;

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->displayView:Landroid/view/View;

    new-instance v1, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;

    invoke-direct {v1, p0, v2}, Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;-><init>(Lultima/pro/proxy/MainActivity;Lultima/pro/proxy/MainActivity$FloatingOnTouchListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->displayView:Landroid/view/View;

    const v1, 0x7f0800f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lultima/pro/proxy/MainActivity;->displayView:Landroid/view/View;

    iget-object v2, p0, Lultima/pro/proxy/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public GlowingTriangleView(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1}, Lultima/pro/proxy/GlowingTriangleParticles;->addToLayout(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public UnzipFromAssets(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/BufferedOutputStream;

    array-length v5, v1

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_3
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_4

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public VersionAndroidSketchwareMaster()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->showMessage(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public _CopyFromAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/AndroidSketchwareMaster/ShizukuMaster;

    invoke-direct {v0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;-><init>()V

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->awer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->checkCommandExecution()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "success"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "failed!"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "failed!"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lultima/pro/proxy/MainActivity;->copyAssetFileToPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "success"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "failed!"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public _DeleteFilePath(Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/AndroidSketchwareMaster/ShizukuMaster;

    invoke-direct {v0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;-><init>()V

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->deleteShizuku(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->checkCommandExecution()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "success"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "failed"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "failed"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lultima/pro/proxy/MainActivity;->deletePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "success"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "failed"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public _Progress(ZLjava/lang/String;)V
    .locals 10

    const/16 v6, 0x11

    const/4 v9, -0x2

    const/high16 v5, 0x42680000    # 58.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_2

    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingDialog:Landroid/app/Dialog;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v1, 0x3c

    const/16 v2, 0x32

    const/16 v3, 0x3c

    const/16 v4, 0x28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v2, "#CC000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x3

    const-string v3, "#00FF00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Lultima/pro/proxy/NeonLoader$Spinner;

    invoke-direct {v2, p0}, Lultima/pro/proxy/NeonLoader$Spinner;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v4, v5, v1

    float-to-int v4, v4

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Lultima/pro/proxy/NeonLoader$Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lultima/pro/proxy/MainActivity;->loadingText:Landroid/widget/TextView;

    iget-object v3, p0, Lultima/pro/proxy/MainActivity;->loadingText:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lultima/pro/proxy/MainActivity;->loadingText:Landroid/widget/TextView;

    const-string v4, "#24FF22"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lultima/pro/proxy/MainActivity;->loadingText:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lultima/pro/proxy/MainActivity;->loadingText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lultima/pro/proxy/MainActivity;->loadingText:Landroid/widget/TextView;

    const/16 v4, 0x16

    const/16 v5, 0x16

    invoke-virtual {v3, v7, v4, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lultima/pro/proxy/MainActivity;->loadingText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v3, p0, Lultima/pro/proxy/MainActivity;->loadingText:Landroid/widget/TextView;

    const v4, 0x3e3851ec    # 0.18f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLetterSpacing(F)V

    new-instance v3, Lultima/pro/proxy/NeonLoader$DotsBar;

    invoke-direct {v3, p0}, Lultima/pro/proxy/NeonLoader$DotsBar;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42dc0000    # 110.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    const/high16 v6, 0x41d00000    # 26.0f

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-direct {v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4}, Lultima/pro/proxy/NeonLoader$DotsBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lultima/pro/proxy/MainActivity;->loadingText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lultima/pro/proxy/MainActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingText:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1
.end method

.method public _ZipFileUnzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/AndroidSketchwareMaster/ShizukuMaster;

    invoke-direct {v0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->masterOpt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/AndroidSketchwareMaster/ShizukuMaster;->checkCommandExecution()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "success"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "failed"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lultima/pro/proxy/MainActivity;->UnzipFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "success"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "failed"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public _extra()V
    .locals 0

    return-void
.end method

.method public _floating()V
    .locals 44

    const-string v4, "float_open"

    move-object/from16 v0, p0

    iget-object v5, v0, Lultima/pro/proxy/MainActivity;->cardContainer:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v5}, Lcom/google/android/material/card/MaterialCardView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x1

    new-array v0, v4, [Z

    move-object/from16 v41, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v41, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_3

    const/16 v7, 0x7f6

    :goto_1
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v8, 0x20

    const/4 v9, -0x3

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual/range {p0 .. p0}, Lultima/pro/proxy/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0b0030

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v42

    const/16 v5, 0x28

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v5, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lultima/pro/proxy/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/view/WindowManager;

    const-string v5, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lultima/pro/proxy/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v5, 0x7f0800f2

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Landroid/widget/LinearLayout;

    const v5, 0x7f08008b

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f080064

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v7, 0x7f080152

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Landroid/widget/ImageView;

    const v7, 0x7f080136

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v8, 0x7f080118

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v20, v8

    check-cast v20, Landroid/widget/LinearLayout;

    const v8, 0x7f08005f

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const v8, 0x7f080060

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const v8, 0x7f080061

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    const v8, 0x7f080062

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    const v8, 0x7f080063

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    const v8, 0x7f080291

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v21, v8

    check-cast v21, Landroid/widget/TextView;

    const v8, 0x7f08000e

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v22, v8

    check-cast v22, Landroid/widget/TextView;

    const v8, 0x7f080056

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v23, v8

    check-cast v23, Landroid/widget/TextView;

    const v8, 0x7f080290

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v24, v8

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lultima/pro/proxy/MainActivity;->GlowingTriangleView(Landroid/view/ViewGroup;)V

    const v7, 0x7f0801be

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v25, v7

    check-cast v25, Landroid/widget/LinearLayout;

    const v7, 0x7f0801c6

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v26, v7

    check-cast v26, Landroid/widget/LinearLayout;

    const v7, 0x7f0801c7

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v27, v7

    check-cast v27, Landroid/widget/LinearLayout;

    const v7, 0x7f0801c8

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v28, v7

    check-cast v28, Landroid/widget/LinearLayout;

    const v7, 0x7f0801c9

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v29, v7

    check-cast v29, Landroid/widget/LinearLayout;

    const v7, 0x7f0801ca

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v30, v7

    check-cast v30, Landroid/widget/LinearLayout;

    const v7, 0x7f0801cb

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v31, v7

    check-cast v31, Landroid/widget/LinearLayout;

    const v7, 0x7f0801cc

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v32, v7

    check-cast v32, Landroid/widget/LinearLayout;

    const v7, 0x7f0801cd

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v33, v7

    check-cast v33, Landroid/widget/LinearLayout;

    const v7, 0x7f0801bf

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v34, v7

    check-cast v34, Landroid/widget/LinearLayout;

    const v7, 0x7f0801c0

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v35, v7

    check-cast v35, Landroid/widget/LinearLayout;

    const v7, 0x7f0801c1

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v36, v7

    check-cast v36, Landroid/widget/LinearLayout;

    const v7, 0x7f0801c2

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v37, v7

    check-cast v37, Landroid/widget/LinearLayout;

    const v7, 0x7f0801c3

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v38, v7

    check-cast v38, Landroid/widget/LinearLayout;

    const v7, 0x7f0801c4

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v39, v7

    check-cast v39, Landroid/widget/LinearLayout;

    const v7, 0x7f0801c5

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v40, v7

    check-cast v40, Landroid/widget/LinearLayout;

    const v7, 0x7f08010a

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v8, 0x7f08010b

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f08010c

    move-object/from16 v0, v42

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v10, 0x7f08010d

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v11, 0x7f08010e

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    new-instance v43, Lultima/pro/proxy/MainActivity$14;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$14;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$15;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$15;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$16;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$16;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$17;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$17;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$18;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$18;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$19;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$19;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$20;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$20;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$21;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$21;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$22;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$22;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$23;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$23;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$24;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$24;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$25;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$25;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$26;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$26;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$27;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$27;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$28;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$28;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lultima/pro/proxy/MainActivity$29;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lultima/pro/proxy/MainActivity$29;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v25, "\u2517 "

    sget-object v26, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v21, "\u2517 "

    sget-object v25, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v21, "\u2517 "

    move-object/from16 v0, p0

    iget-object v0, v0, Lultima/pro/proxy/MainActivity;->KEY:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v25, "AuthKey"

    const-string v26, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v21, "\u2517 "

    move-object/from16 v0, p0

    iget-object v0, v0, Lultima/pro/proxy/MainActivity;->KEY:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "validity"

    const-string v25, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v21, Lultima/pro/proxy/MainActivity$30;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lultima/pro/proxy/MainActivity$30;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v21, Lultima/pro/proxy/MainActivity$31;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v6}, Lultima/pro/proxy/MainActivity$31;-><init>(Lultima/pro/proxy/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v21, Lultima/pro/proxy/MainActivity$32;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v6}, Lultima/pro/proxy/MainActivity$32;-><init>(Lultima/pro/proxy/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lultima/pro/proxy/MainActivity$33;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v42

    invoke-direct {v6, v0, v1, v2}, Lultima/pro/proxy/MainActivity$33;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lultima/pro/proxy/MainActivity$34;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lultima/pro/proxy/MainActivity$34;-><init>(Lultima/pro/proxy/MainActivity;)V

    const/16 v6, 0x9

    const v19, -0xff0100

    move/from16 v0, v19

    invoke-virtual {v5, v6, v0}, Lultima/pro/proxy/MainActivity$34;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lultima/pro/proxy/MainActivity$35;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v16}, Lultima/pro/proxy/MainActivity$35;-><init>(Lultima/pro/proxy/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lultima/pro/proxy/MainActivity$36;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v16}, Lultima/pro/proxy/MainActivity$36;-><init>(Lultima/pro/proxy/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lultima/pro/proxy/MainActivity$37;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v16}, Lultima/pro/proxy/MainActivity$37;-><init>(Lultima/pro/proxy/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lultima/pro/proxy/MainActivity$38;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v16}, Lultima/pro/proxy/MainActivity$38;-><init>(Lultima/pro/proxy/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lultima/pro/proxy/MainActivity$39;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v16}, Lultima/pro/proxy/MainActivity$39;-><init>(Lultima/pro/proxy/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lultima/pro/proxy/MainActivity$40;

    move-object/from16 v6, p0

    move-object/from16 v7, v41

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v10, v42

    invoke-direct/range {v5 .. v10}, Lultima/pro/proxy/MainActivity$40;-><init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Lultima/pro/proxy/MainActivity$41;

    move-object/from16 v6, p0

    move-object/from16 v7, v41

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v10, v42

    invoke-direct/range {v5 .. v10}, Lultima/pro/proxy/MainActivity$41;-><init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Lultima/pro/proxy/MainActivity$42;

    move-object/from16 v6, p0

    move-object/from16 v7, v41

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v10, v42

    invoke-direct/range {v5 .. v10}, Lultima/pro/proxy/MainActivity$42;-><init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Lultima/pro/proxy/MainActivity$43;

    move-object/from16 v6, p0

    move-object/from16 v7, v41

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v10, v42

    invoke-direct/range {v5 .. v10}, Lultima/pro/proxy/MainActivity$43;-><init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Lultima/pro/proxy/MainActivity$44;

    move-object/from16 v6, p0

    move-object/from16 v7, v41

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v10, v42

    invoke-direct/range {v5 .. v10}, Lultima/pro/proxy/MainActivity$44;-><init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Lultima/pro/proxy/MainActivity$45;

    move-object/from16 v6, p0

    move-object/from16 v7, v41

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v10, v42

    invoke-direct/range {v5 .. v10}, Lultima/pro/proxy/MainActivity$45;-><init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    const v5, 0x7f08020e

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$46;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$46;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f080216

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$47;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$47;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f080217

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$48;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$48;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f080218

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$49;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$49;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f080219

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$50;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$50;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f08021a

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$51;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$51;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f08021b

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$52;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$52;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f08021c

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$53;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$53;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f08021d

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$54;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$54;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f08020f

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$55;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$55;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f080210

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$56;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$56;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f080211

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$57;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$57;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f080212

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$58;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$58;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f080213

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$59;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$59;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f080214

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$60;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$60;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f080215

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lultima/pro/proxy/MainActivity$61;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lultima/pro/proxy/MainActivity$61;-><init>(Lultima/pro/proxy/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v5, Lultima/pro/proxy/MainActivity$62;

    move-object/from16 v6, p0

    move-object/from16 v7, v41

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v10, v42

    invoke-direct/range {v5 .. v10}, Lultima/pro/proxy/MainActivity$62;-><init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Lultima/pro/proxy/MainActivity$63;

    move-object/from16 v6, p0

    move-object/from16 v7, v41

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v10, v42

    invoke-direct/range {v5 .. v10}, Lultima/pro/proxy/MainActivity$63;-><init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Lultima/pro/proxy/MainActivity$64;

    move-object/from16 v6, p0

    move-object/from16 v7, v41

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v10, v42

    invoke-direct/range {v5 .. v10}, Lultima/pro/proxy/MainActivity$64;-><init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Lultima/pro/proxy/MainActivity$65;

    move-object/from16 v6, p0

    move-object/from16 v7, v41

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v10, v42

    invoke-direct/range {v5 .. v10}, Lultima/pro/proxy/MainActivity$65;-><init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Lultima/pro/proxy/MainActivity$66;

    move-object/from16 v6, p0

    move-object/from16 v7, v41

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v10, v42

    invoke-direct/range {v5 .. v10}, Lultima/pro/proxy/MainActivity$66;-><init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Lultima/pro/proxy/MainActivity$67;

    move-object/from16 v6, p0

    move-object/from16 v7, v41

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v10, v42

    invoke-direct/range {v5 .. v10}, Lultima/pro/proxy/MainActivity$67;-><init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Lultima/pro/proxy/MainActivity$68;

    move-object/from16 v6, p0

    move-object/from16 v7, v41

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v10, v42

    invoke-direct/range {v5 .. v10}, Lultima/pro/proxy/MainActivity$68;-><init>(Lultima/pro/proxy/MainActivity;[ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_4

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-interface {v0, v1, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_2
    invoke-static/range {p0 .. p0}, Lultima/pro/proxy/Guard;->allOk(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lultima/pro/proxy/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Modified Detected \u2014 Please install the original APK"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lultima/pro/proxy/MainActivity;->finishAffinity()V

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0x7d2

    goto/16 :goto_1

    :cond_4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lultima/pro/proxy/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-interface {v0, v1, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "package:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lultima/pro/proxy/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lultima/pro/proxy/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lultima/pro/proxy/MainActivity;->cardContainer:Lcom/google/android/material/card/MaterialCardView;

    const-string v5, "float_open"

    invoke-virtual {v4, v5}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x1

    sput-boolean v4, Lultima/pro/proxy/NeonToast;->menuOpen:Z

    :goto_3
    const v4, 0x7f08010a

    :try_start_0
    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f08010b

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f08010c

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f08010d

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f08010e

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0802a0

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/View;->setOverScrollMode(I)V

    const v4, 0x7f0802a0

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :goto_4
    const v4, 0x7f080291

    :try_start_1
    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f08000e

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v5, 0x7f080290

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    if-nez v5, :cond_8

    const-string v5, ""

    :goto_5
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :goto_6
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    if-nez v5, :cond_9

    const-string v5, ""

    :goto_7
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u2517 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u2022 Android "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v11, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u2517 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2022 -- FPS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u2517"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v15

    :try_start_4
    const-string v4, "\\d{9,13}"

    invoke-virtual {v15, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v15}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v6

    const/16 v7, 0xa

    if-gt v6, v7, :cond_10

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move-wide v12, v4

    :goto_9
    const/4 v4, 0x1

    :try_start_5
    new-array v8, v4, [I

    const/4 v4, 0x1

    new-array v7, v4, [Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v7, v4

    :try_start_6
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v4

    new-instance v5, Lultima/pro/proxy/MainActivity$69;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v7}, Lultima/pro/proxy/MainActivity$69;-><init>(Lultima/pro/proxy/MainActivity;[I[Z)V

    invoke-virtual {v4, v5}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    new-instance v4, Lultima/pro/proxy/MainActivity$70;

    const/4 v5, 0x1

    new-array v9, v5, [J

    const/4 v5, 0x0

    aput-wide v16, v9, v5

    move-object/from16 v5, p0

    move-object/from16 v6, v42

    invoke-direct/range {v4 .. v15}, Lultima/pro/proxy/MainActivity$70;-><init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;[Z[I[JLandroid/widget/TextView;Ljava/lang/String;JLandroid/widget/TextView;Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v14, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonAimPicker;->install(Landroid/content/Context;Landroid/view/View;)V

    :try_start_7
    invoke-static/range {v42 .. v42}, Lultima/pro/proxy/MenuConfig;->apply(Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_b
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lultima/pro/proxy/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "switch5"

    const-string v6, "id"

    invoke-virtual/range {p0 .. p0}, Lultima/pro/proxy/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-static {v4}, Lultima/pro/proxy/NeonAimPicker;->show(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto/16 :goto_0

    :cond_7
    const-string v4, "Please allow Display over other apps permission"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    :try_start_9
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto/16 :goto_5

    :cond_9
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto/16 :goto_7

    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-result-object v5

    goto/16 :goto_8

    :cond_b
    const/4 v4, 0x7

    :try_start_a
    new-array v5, v4, [Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    const/4 v4, 0x0

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss"

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const-string v6, "yyyy-MM-dd HH:mm"

    aput-object v6, v5, v4

    const/4 v4, 0x3

    const-string v6, "dd-MM-yyyy HH:mm:ss"

    aput-object v6, v5, v4

    const/4 v4, 0x4

    const-string v6, "dd/MM/yyyy HH:mm:ss"

    aput-object v6, v5, v4

    const/4 v4, 0x5

    const-string v6, "dd-MM-yyyy HH:mm"

    aput-object v6, v5, v4

    const/4 v4, 0x6

    const-string v6, "dd/MM/yyyy HH:mm"

    aput-object v6, v5, v4

    const/4 v4, 0x4

    :try_start_b
    new-array v7, v4, [Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    const/4 v4, 0x0

    const-string v6, "yyyy-MM-dd"

    aput-object v6, v7, v4

    const/4 v4, 0x1

    const-string v6, "dd-MM-yyyy"

    aput-object v6, v7, v4

    const/4 v4, 0x2

    const-string v6, "dd/MM/yyyy"

    aput-object v6, v7, v4

    const/4 v4, 0x3

    const-string v6, "yyyy/MM/dd"

    aput-object v6, v7, v4

    :try_start_c
    array-length v6, v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    const/4 v4, 0x0

    :goto_c
    if-lt v4, v6, :cond_c

    const-wide/16 v4, -0x1

    :goto_d
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-gez v6, :cond_e

    :try_start_d
    array-length v8, v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    const/4 v6, 0x0

    :goto_e
    if-lt v6, v8, :cond_d

    move-wide v12, v4

    goto/16 :goto_9

    :cond_c
    aget-object v8, v5, v4

    :try_start_e
    new-instance v9, Ljava/text/SimpleDateFormat;

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v9, v8, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    invoke-virtual {v9, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    move-result-wide v4

    goto :goto_d

    :catch_1
    move-exception v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_d
    aget-object v9, v7, v6

    :try_start_f
    new-instance v12, Ljava/text/SimpleDateFormat;

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v12, v9, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    invoke-virtual {v12, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    move-result-wide v4

    const-wide/32 v6, 0x5265818

    add-long/2addr v4, v6

    move-wide v12, v4

    goto/16 :goto_9

    :catch_2
    move-exception v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :catch_3
    move-exception v4

    const-wide/16 v4, -0x1

    :cond_e
    :goto_f
    move-wide v12, v4

    goto/16 :goto_9

    :cond_f
    move-object v6, v5

    goto/16 :goto_6

    :catch_4
    move-exception v4

    goto/16 :goto_b

    :catch_5
    move-exception v6

    goto :goto_f

    :catch_6
    move-exception v4

    goto/16 :goto_4

    :catch_7
    move-exception v4

    goto/16 :goto_a

    :cond_10
    move-wide v12, v4

    goto/16 :goto_9
.end method

.method public closes()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lultima/pro/proxy/MainActivity;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lultima/pro/proxy/MainActivity;->displayView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public copyAssetFileToPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public deletePath(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_2

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    :cond_1
    return v0

    :cond_2
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lultima/pro/proxy/MainActivity;->deletePath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public djgamingvip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    new-array v5, v3, [B

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p0, p2}, Lultima/pro/proxy/MainActivity;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, p3}, Lultima/pro/proxy/MainActivity;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    move v3, v0

    :goto_1
    array-length v2, v5

    array-length v8, v6

    sub-int/2addr v2, v8

    if-le v3, v2, :cond_2

    move v2, v0

    :goto_2
    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_3
    array-length v8, v6

    if-lt v2, v8, :cond_3

    move v2, v1

    :goto_4
    if-eqz v2, :cond_6

    move v2, v0

    :goto_5
    array-length v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v6, :cond_5

    move v2, v1

    goto :goto_2

    :cond_3
    add-int v8, v3, v2

    aget-byte v8, v5, v8

    aget-byte v9, v6, v2

    if-eq v8, v9, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    add-int v6, v3, v2

    aget-byte v8, v7, v2

    aput-byte v8, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCheckedItemPositionsToArray(Landroid/widget/ListView;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public getDisplayHeightPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getDisplayWidthPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getLocationX(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    const/16 v6, 0x10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lultima/pro/proxy/MainActivity;->initialize(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lultima/pro/proxy/MainActivity;->initializeLogic()V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lultima/pro/proxy/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
