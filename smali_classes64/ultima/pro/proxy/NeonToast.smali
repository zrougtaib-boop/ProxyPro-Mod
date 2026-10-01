.class public Lultima/pro/proxy/NeonToast;
.super Ljava/lang/Object;


# static fields
.field public static BOTTOM_MARGIN_DP:I = 0x0

.field public static BRAND:Ljava/lang/String; = null

.field public static COLOR_ERROR:I = 0x0

.field public static COLOR_SUCCESS:I = 0x0

.field public static COLOR_WARN:I = 0x0

.field public static DURATION_MS:J = 0x0L

.field private static final ERROR:I = 0x2

.field private static final H:Landroid/os/Handler;

.field private static final OFF:I = 0x4

.field private static final ON:I = 0x3

.field public static ONLY_GREEN:Z = false

.field public static SHOW_IN_BACKGROUND:Z = false

.field private static final SUCCESS:I = 0x0

.field private static final WARN:I = 0x1

.field private static current:Landroid/view/View;

.field private static currentWm:Landroid/view/WindowManager;

.field private static lifecycleHooked:Z

.field public static menuOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ULTIMA PRO"

    sput-object v0, Lultima/pro/proxy/NeonToast;->BRAND:Ljava/lang/String;

    sput-boolean v2, Lultima/pro/proxy/NeonToast;->ONLY_GREEN:Z

    const v0, -0xff0100

    sput v0, Lultima/pro/proxy/NeonToast;->COLOR_SUCCESS:I

    const/16 v0, -0x3c00

    sput v0, Lultima/pro/proxy/NeonToast;->COLOR_WARN:I

    const v0, -0xc4c5

    sput v0, Lultima/pro/proxy/NeonToast;->COLOR_ERROR:I

    const-wide/16 v0, 0xaf0

    sput-wide v0, Lultima/pro/proxy/NeonToast;->DURATION_MS:J

    const/16 v0, 0x5a

    sput v0, Lultima/pro/proxy/NeonToast;->BOTTOM_MARGIN_DP:I

    sput-boolean v2, Lultima/pro/proxy/NeonToast;->menuOpen:Z

    sput-boolean v2, Lultima/pro/proxy/NeonToast;->SHOW_IN_BACKGROUND:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lultima/pro/proxy/NeonToast;->H:Landroid/os/Handler;

    sput-boolean v2, Lultima/pro/proxy/NeonToast;->lifecycleHooked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lultima/pro/proxy/NeonToast;->showNow(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1()V
    .locals 0

    invoke-static {}, Lultima/pro/proxy/NeonToast;->removeCurrent()V

    return-void
.end method

.method static synthetic access$2()Landroid/view/View;
    .locals 1

    sget-object v0, Lultima/pro/proxy/NeonToast;->current:Landroid/view/View;

    return-object v0
.end method

.method private static ensureLifecycle(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lultima/pro/proxy/NeonToast;->lifecycleHooked:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lultima/pro/proxy/NeonToast$1;

    invoke-direct {v1}, Lultima/pro/proxy/NeonToast$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    sput-boolean v0, Lultima/pro/proxy/NeonToast;->lifecycleHooked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static hide()V
    .locals 2

    sget-object v0, Lultima/pro/proxy/NeonToast;->H:Landroid/os/Handler;

    new-instance v1, Lultima/pro/proxy/NeonToast$3;

    invoke-direct {v1}, Lultima/pro/proxy/NeonToast$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static removeCurrent()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lultima/pro/proxy/NeonToast;->current:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lultima/pro/proxy/NeonToast;->currentWm:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    sget-object v0, Lultima/pro/proxy/NeonToast;->currentWm:Landroid/view/WindowManager;

    sget-object v1, Lultima/pro/proxy/NeonToast;->current:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sput-object v2, Lultima/pro/proxy/NeonToast;->current:Landroid/view/View;

    sput-object v2, Lultima/pro/proxy/NeonToast;->currentWm:Landroid/view/WindowManager;

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lultima/pro/proxy/NeonToast;->current:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    sget-object v0, Lultima/pro/proxy/NeonToast;->current:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lultima/pro/proxy/NeonToast;->current:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p0}, Lultima/pro/proxy/NeonToast;->ensureLifecycle(Landroid/content/Context;)V

    sget-object v0, Lultima/pro/proxy/NeonToast;->H:Landroid/os/Handler;

    new-instance v1, Lultima/pro/proxy/NeonToast$2;

    invoke-direct {v1, p0, p1, p2}, Lultima/pro/proxy/NeonToast$2;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static showNow(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 15

    invoke-static {}, Lultima/pro/proxy/NeonToast;->removeCurrent()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v10, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static/range {p1 .. p1}, Lultima/pro/proxy/NeonToast;->typeOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sget-boolean v2, Lultima/pro/proxy/NeonToast;->ONLY_GREEN:Z

    if-eqz v2, :cond_2

    sget v2, Lultima/pro/proxy/NeonToast;->COLOR_SUCCESS:I

    move v3, v2

    :goto_0
    const/4 v2, 0x2

    if-ne v4, v2, :cond_6

    const-string v2, "ERROR"

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lultima/pro/proxy/NeonToast;->BRAND:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  \u2022  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41900000    # 18.0f

    mul-float/2addr v5, v10

    float-to-int v5, v5

    const/4 v6, 0x0

    const/high16 v7, 0x41900000    # 18.0f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v6, -0xdfcf7fd

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v6, 0x41900000    # 18.0f

    mul-float/2addr v6, v10

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v6, 0x3fa66666    # 1.3f

    mul-float/2addr v6, v10

    float-to-int v6, v6

    const v7, 0xffffff

    and-int/2addr v7, v3

    const/high16 v8, -0x67000000

    or-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v5, v10

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setElevation(F)V

    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v6, 0x41600000    # 14.0f

    mul-float/2addr v6, v10

    float-to-int v6, v6

    const/high16 v7, 0x41400000    # 12.0f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    const/high16 v8, 0x41800000    # 16.0f

    mul-float/2addr v8, v10

    float-to-int v8, v8

    const/high16 v9, 0x41300000    # 11.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v6, Lultima/pro/proxy/NeonToast$4;

    invoke-direct {v6, p0, v10, v3, v4}, Lultima/pro/proxy/NeonToast$4;-><init>(Landroid/content/Context;FII)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x41f00000    # 30.0f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    const/high16 v8, 0x41f00000    # 30.0f

    mul-float/2addr v8, v10

    float-to-int v8, v8

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v7, 0x41400000    # 12.0f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v2, 0x3df5c28f    # 0.12f

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v7, "fonts/ttoctosquaresxboldit.ttf"

    invoke-static {v2, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, -0x100011

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41580000    # 13.5f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v6, 0x0

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v13, Landroid/view/View;

    invoke-direct {v13, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v10

    float-to-int v5, v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41900000    # 18.0f

    const-wide/16 v4, 0xa28

    :try_start_1
    invoke-static {v12, v3, v2, v4, v5}, Lultima/pro/proxy/NeonUi;->runBorder(Landroid/view/View;IFJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    sget v2, Lultima/pro/proxy/NeonToast;->BOTTOM_MARGIN_DP:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    float-to-int v14, v2

    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_13

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_b

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_b

    :cond_0
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_4
    move v9, v2

    :goto_5
    if-nez v9, :cond_c

    sget-boolean v2, Lultima/pro/proxy/NeonToast;->SHOW_IN_BACKGROUND:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lultima/pro/proxy/NeonToast;->menuOpen:Z

    if-nez v2, :cond_c

    :cond_1
    :goto_6
    return-void

    :cond_2
    const/4 v2, 0x2

    if-eq v4, v2, :cond_3

    const/4 v2, 0x4

    if-ne v4, v2, :cond_4

    :cond_3
    sget v2, Lultima/pro/proxy/NeonToast;->COLOR_ERROR:I

    move v3, v2

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x1

    if-ne v4, v2, :cond_5

    sget v2, Lultima/pro/proxy/NeonToast;->COLOR_WARN:I

    move v3, v2

    goto/16 :goto_0

    :cond_5
    sget v2, Lultima/pro/proxy/NeonToast;->COLOR_SUCCESS:I

    move v3, v2

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x1

    if-ne v4, v2, :cond_7

    const-string v2, "ALERT"

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x3

    if-ne v4, v2, :cond_8

    const-string v2, "ACTIVATED"

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x4

    if-ne v4, v2, :cond_a

    const-string v2, "deactivated"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "DEACTIVATED"

    goto/16 :goto_1

    :cond_9
    const-string v2, "OFF"

    goto/16 :goto_1

    :cond_a
    const-string v2, "SUCCESS"

    goto/16 :goto_1

    :catch_0
    move-exception v2

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_f

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_11

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/WindowManager;

    move-object v8, v0

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_10

    const/16 v5, 0x7f6

    :goto_8
    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v6, 0x118

    const/4 v7, -0x3

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v3, 0x50

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v4, v10

    float-to-int v4, v4

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-interface {v8, v11, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sput-object v8, Lultima/pro/proxy/NeonToast;->currentWm:Landroid/view/WindowManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x1

    :goto_9
    if-nez v2, :cond_d

    if-eqz v9, :cond_d

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x50

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v14, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v10

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->setElevation(F)V

    const/4 v2, 0x0

    sput-object v2, Lultima/pro/proxy/NeonToast;->currentWm:Landroid/view/WindowManager;

    const/4 v2, 0x1

    :cond_d
    if-eqz v2, :cond_1

    sput-object v11, Lultima/pro/proxy/NeonToast;->current:Landroid/view/View;

    if-eqz p2, :cond_e

    invoke-static/range {p0 .. p1}, Lultima/pro/proxy/NeonSound;->speak(Landroid/content/Context;Ljava/lang/String;)V

    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2d

    if-le v2, v3, :cond_12

    sget-wide v2, Lultima/pro/proxy/NeonToast;->DURATION_MS:J

    const-wide/16 v4, 0x4b0

    add-long/2addr v2, v4

    :goto_a
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/high16 v4, 0x41e00000    # 28.0f

    mul-float/2addr v4, v10

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    const v4, 0x3f75c28f    # 0.96f

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    const v4, 0x3f75c28f    # 0.96f

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x140

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const v6, 0x3fcccccd    # 1.6f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x140

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    sget-object v4, Lultima/pro/proxy/NeonToast;->H:Landroid/os/Handler;

    new-instance v5, Lultima/pro/proxy/NeonToast$5;

    invoke-direct {v5, v11, v12, v10}, Lultima/pro/proxy/NeonToast$5;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;F)V

    const-wide/16 v6, 0x140

    add-long/2addr v2, v6

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_7

    :cond_10
    const/16 v5, 0x7d2

    goto/16 :goto_8

    :catch_1
    move-exception v2

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_12
    sget-wide v2, Lultima/pro/proxy/NeonToast;->DURATION_MS:J

    goto/16 :goto_a

    :cond_13
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_5

    :catch_2
    move-exception v2

    goto/16 :goto_3
.end method

.method private static statusBar(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private static typeOf(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deactivated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sound off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_1
    const-string v1, "activated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "not "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "invalid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "expire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "wrong"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ban"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "nahi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const-string v1, "please"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "enter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "warning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "wait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method
