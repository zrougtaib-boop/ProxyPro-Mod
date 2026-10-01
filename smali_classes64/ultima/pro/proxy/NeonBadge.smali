.class public Lultima/pro/proxy/NeonBadge;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lultima/pro/proxy/NeonBadge$Strip;
    }
.end annotation


# static fields
.field public static COLOR:I

.field public static ENABLED:Z

.field private static final H:Landroid/os/Handler;

.field public static NAME:Ljava/lang/String;

.field public static TEXT_COLOR:I

.field public static TEXT_SIZE:I

.field public static TOP_MARGIN_DP:I

.field private static final WATCH:Ljava/lang/Runnable;

.field private static askedUsage:Z

.field private static badge:Landroid/widget/TextView;

.field private static ctxRef:Landroid/content/Context;

.field private static gameWasOn:Z

.field private static homePkgs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastTop:Ljava/lang/String;

.field private static watching:Z

.field private static wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lultima/pro/proxy/NeonBadge;->ENABLED:Z

    const-string v0, "ULTIMA PRO PROXY"

    sput-object v0, Lultima/pro/proxy/NeonBadge;->NAME:Ljava/lang/String;

    const v0, -0xff37ad

    sput v0, Lultima/pro/proxy/NeonBadge;->COLOR:I

    const/4 v0, -0x1

    sput v0, Lultima/pro/proxy/NeonBadge;->TEXT_COLOR:I

    const/16 v0, 0xc

    sput v0, Lultima/pro/proxy/NeonBadge;->TEXT_SIZE:I

    const/4 v0, 0x4

    sput v0, Lultima/pro/proxy/NeonBadge;->TOP_MARGIN_DP:I

    sput-boolean v2, Lultima/pro/proxy/NeonBadge;->watching:Z

    sput-boolean v2, Lultima/pro/proxy/NeonBadge;->askedUsage:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lultima/pro/proxy/NeonBadge;->H:Landroid/os/Handler;

    new-instance v0, Lultima/pro/proxy/NeonBadge$1;

    invoke-direct {v0}, Lultima/pro/proxy/NeonBadge$1;-><init>()V

    sput-object v0, Lultima/pro/proxy/NeonBadge;->WATCH:Ljava/lang/Runnable;

    sput-boolean v2, Lultima/pro/proxy/NeonBadge;->gameWasOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    sget-boolean v0, Lultima/pro/proxy/NeonBadge;->watching:Z

    return v0
.end method

.method static synthetic access$1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lultima/pro/proxy/NeonBadge;->ctxRef:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lultima/pro/proxy/NeonBadge;->gameOnScreen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lultima/pro/proxy/NeonBadge;->showNow(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4()V
    .locals 0

    invoke-static {}, Lultima/pro/proxy/NeonBadge;->hideNow()V

    return-void
.end method

.method static synthetic access$5()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lultima/pro/proxy/NeonBadge;->H:Landroid/os/Handler;

    return-object v0
.end method

.method private static gameOnScreen(Landroid/content/Context;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    invoke-static {p0}, Lultima/pro/proxy/NeonBadge;->hasUsageAccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    const-string v0, "usagestats"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    sub-long v6, v4, v6

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object v3

    new-instance v4, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v4}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    const/4 v0, 0x0

    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v0, :cond_3

    sput-object v0, Lultima/pro/proxy/NeonBadge;->lastTop:Ljava/lang/String;

    :cond_3
    sget-object v0, Lultima/pro/proxy/NeonBadge;->lastTop:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v4}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v5

    if-ne v5, v2, :cond_2

    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    sget-object v3, Lultima/pro/proxy/NeonSound;->GAME_PACKAGES:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_2
    if-lt v0, v4, :cond_6

    sget-boolean v0, Lultima/pro/proxy/NeonBadge;->gameWasOn:Z

    if-eqz v0, :cond_8

    sget-object v0, Lultima/pro/proxy/NeonBadge;->lastTop:Ljava/lang/String;

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonBadge;->isHomeOrSelf(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_6
    aget-object v5, v3, v0

    sget-object v6, Lultima/pro/proxy/NeonBadge;->lastTop:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v0, 0x1

    sput-boolean v0, Lultima/pro/proxy/NeonBadge;->gameWasOn:Z

    move v0, v2

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    sput-boolean v0, Lultima/pro/proxy/NeonBadge;->gameWasOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static hasUsageAccess(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const-string v2, "android:get_usage_stats"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static hide()V
    .locals 2

    sget-object v0, Lultima/pro/proxy/NeonBadge;->H:Landroid/os/Handler;

    new-instance v1, Lultima/pro/proxy/NeonBadge$2;

    invoke-direct {v1}, Lultima/pro/proxy/NeonBadge$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static hideNow()V
    .locals 2

    :try_start_0
    sget-object v0, Lultima/pro/proxy/NeonBadge;->badge:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lultima/pro/proxy/NeonBadge;->wm:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    sget-object v0, Lultima/pro/proxy/NeonBadge;->wm:Landroid/view/WindowManager;

    sget-object v1, Lultima/pro/proxy/NeonBadge;->badge:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lultima/pro/proxy/NeonBadge;->badge:Landroid/widget/TextView;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static isHomeOrSelf(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "com.android.systemui"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    sget-object v0, Lultima/pro/proxy/NeonBadge;->homePkgs:Ljava/util/HashSet;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lultima/pro/proxy/NeonBadge;->homePkgs:Ljava/util/HashSet;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lultima/pro/proxy/NeonBadge;->homePkgs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    sget-object v3, Lultima/pro/proxy/NeonBadge;->homePkgs:Ljava/util/HashSet;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private static showNow(Landroid/content/Context;)V
    .locals 9

    const/4 v1, -0x2

    const/high16 v8, 0x42080000    # 34.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    sget-object v0, Lultima/pro/proxy/NeonBadge;->badge:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lultima/pro/proxy/NeonBadge;->NAME:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lultima/pro/proxy/NeonBadge;->TEXT_COLOR:I

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lultima/pro/proxy/NeonBadge;->TEXT_SIZE:I

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x3e23d70a    # 0.16f

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    mul-float v0, v4, v6

    mul-float v2, v3, v6

    const/high16 v3, -0x67000000

    invoke-virtual {v7, v0, v5, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    mul-float v0, v8, v6

    float-to-int v0, v0

    mul-float v2, v4, v6

    float-to-int v2, v2

    mul-float v3, v8, v6

    float-to-int v3, v3

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v7, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v0, Lultima/pro/proxy/NeonBadge$Strip;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lultima/pro/proxy/NeonBadge$Strip;-><init>(Lultima/pro/proxy/NeonBadge$Strip;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_3

    const/16 v3, 0x7f6

    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x118

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Lultima/pro/proxy/NeonBadge;->TOP_MARGIN_DP:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    sput-object v1, Lultima/pro/proxy/NeonBadge;->wm:Landroid/view/WindowManager;

    sget-object v1, Lultima/pro/proxy/NeonBadge;->wm:Landroid/view/WindowManager;

    invoke-interface {v1, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sput-object v7, Lultima/pro/proxy/NeonBadge;->badge:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v7}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x7d2

    goto :goto_1
.end method

.method public static startWatch(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x1

    sget-boolean v0, Lultima/pro/proxy/NeonBadge;->ENABLED:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lultima/pro/proxy/NeonBadge;->ctxRef:Landroid/content/Context;

    invoke-static {p0}, Lultima/pro/proxy/NeonBadge;->hasUsageAccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lultima/pro/proxy/NeonBadge;->askedUsage:Z

    if-nez v0, :cond_2

    sput-boolean v2, Lultima/pro/proxy/NeonBadge;->askedUsage:Z

    const-string v0, "Please allow Usage Access so panel name shows only in game"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    sget-boolean v0, Lultima/pro/proxy/NeonBadge;->watching:Z

    if-nez v0, :cond_0

    sput-boolean v2, Lultima/pro/proxy/NeonBadge;->watching:Z

    sget-object v0, Lultima/pro/proxy/NeonBadge;->H:Landroid/os/Handler;

    sget-object v1, Lultima/pro/proxy/NeonBadge;->WATCH:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static stopWatch()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lultima/pro/proxy/NeonBadge;->watching:Z

    sget-object v0, Lultima/pro/proxy/NeonBadge;->H:Landroid/os/Handler;

    sget-object v1, Lultima/pro/proxy/NeonBadge;->WATCH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lultima/pro/proxy/NeonBadge;->hide()V

    return-void
.end method
