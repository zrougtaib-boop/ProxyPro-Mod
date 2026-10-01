.class public Lultima/pro/proxy/NeonOverlay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lultima/pro/proxy/NeonOverlay$Fx;
    }
.end annotation


# static fields
.field public static CIRCLE_PERCENT:I

.field public static CIRCLE_SIZE_DP:I

.field public static COLOR:I

.field public static CROSS_COLOR:I

.field public static CROSS_SIZE_DP:I

.field public static LINE_DP:F

.field public static ROTATE_SECONDS:F

.field private static app:Landroid/content/Context;

.field private static circleLp:Landroid/view/WindowManager$LayoutParams;

.field private static circleOn:Z

.field private static circleV:Landroid/view/View;

.field private static crossLp:Landroid/view/WindowManager$LayoutParams;

.field private static crossOn:Z

.field private static crossV:Landroid/view/View;

.field private static editable:Z

.field private static gameVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const v0, -0xff009a

    sput v0, Lultima/pro/proxy/NeonOverlay;->COLOR:I

    const v0, -0xd4d5

    sput v0, Lultima/pro/proxy/NeonOverlay;->CROSS_COLOR:I

    const/16 v0, 0x1e

    sput v0, Lultima/pro/proxy/NeonOverlay;->CROSS_SIZE_DP:I

    const/16 v0, 0x30

    sput v0, Lultima/pro/proxy/NeonOverlay;->CIRCLE_PERCENT:I

    const/16 v0, 0xc8

    sput v0, Lultima/pro/proxy/NeonOverlay;->CIRCLE_SIZE_DP:I

    const v0, 0x3fcccccd    # 1.6f

    sput v0, Lultima/pro/proxy/NeonOverlay;->LINE_DP:F

    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Lultima/pro/proxy/NeonOverlay;->ROTATE_SECONDS:F

    sput-boolean v1, Lultima/pro/proxy/NeonOverlay;->crossOn:Z

    sput-boolean v1, Lultima/pro/proxy/NeonOverlay;->circleOn:Z

    const/4 v0, 0x1

    sput-boolean v0, Lultima/pro/proxy/NeonOverlay;->gameVisible:Z

    sput-boolean v1, Lultima/pro/proxy/NeonOverlay;->editable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build(Landroid/content/Context;Z)Landroid/view/View;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Please allow Display over other apps permission"

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz p1, :cond_3

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v2, 0xf

    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->circleSizePercent(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1
    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v0

    if-eqz p1, :cond_1

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_4

    const/16 v3, 0x7f6

    :goto_2
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lultima/pro/proxy/NeonOverlay;->flags()I

    move-result v4

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_2
    new-instance v1, Lultima/pro/proxy/NeonOverlay$Fx;

    invoke-direct {v1, p0, p1}, Lultima/pro/proxy/NeonOverlay$Fx;-><init>(Landroid/content/Context;Z)V

    :try_start_0
    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->wm(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_5

    sput-object v0, Lultima/pro/proxy/NeonOverlay;->circleLp:Landroid/view/WindowManager$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v0, v1

    goto :goto_0

    :cond_3
    sget v0, Lultima/pro/proxy/NeonOverlay;->CROSS_SIZE_DP:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1

    :cond_4
    const/16 v3, 0x7d2

    goto :goto_2

    :cond_5
    :try_start_1
    sput-object v0, Lultima/pro/proxy/NeonOverlay;->crossLp:Landroid/view/WindowManager$LayoutParams;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method public static circle(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lultima/pro/proxy/NeonOverlay;->app:Landroid/content/Context;

    sput-boolean p1, Lultima/pro/proxy/NeonOverlay;->circleOn:Z

    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->sync(Landroid/content/Context;)V

    return-void
.end method

.method public static circleColor(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->ovPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "circle_color"

    sget v2, Lultima/pro/proxy/NeonOverlay;->COLOR:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget v0, Lultima/pro/proxy/NeonOverlay;->COLOR:I

    goto :goto_0
.end method

.method public static circleSizePercent(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->ovPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "circle_size"

    sget v2, Lultima/pro/proxy/NeonOverlay;->CIRCLE_PERCENT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget v0, Lultima/pro/proxy/NeonOverlay;->CIRCLE_PERCENT:I

    goto :goto_0
.end method

.method public static crosshair(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lultima/pro/proxy/NeonOverlay;->app:Landroid/content/Context;

    sput-boolean p1, Lultima/pro/proxy/NeonOverlay;->crossOn:Z

    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->sync(Landroid/content/Context;)V

    return-void
.end method

.method private static drop(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->wm(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static flags()I
    .locals 1

    const/16 v0, 0x318

    return v0
.end method

.method public static hideAll(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lultima/pro/proxy/NeonOverlay;->circleOn:Z

    sput-boolean v0, Lultima/pro/proxy/NeonOverlay;->crossOn:Z

    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->sync(Landroid/content/Context;)V

    return-void
.end method

.method private static ovPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "neon_overlay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "neon_overlay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static refresh(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    sget-object v0, Lultima/pro/proxy/NeonOverlay;->circleV:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->circleLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0xf

    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->circleSizePercent(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v1

    sget-object v1, Lultima/pro/proxy/NeonOverlay;->circleLp:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v1, Lultima/pro/proxy/NeonOverlay;->circleLp:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->wm(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    sget-object v1, Lultima/pro/proxy/NeonOverlay;->circleV:Landroid/view/View;

    sget-object v2, Lultima/pro/proxy/NeonOverlay;->circleLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->circleV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    sget-object v0, Lultima/pro/proxy/NeonOverlay;->crossV:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->crossV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->sync(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static refreshFlags(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget-object v0, Lultima/pro/proxy/NeonOverlay;->crossV:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->crossLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->crossLp:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lultima/pro/proxy/NeonOverlay;->flags()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->wm(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    sget-object v1, Lultima/pro/proxy/NeonOverlay;->crossV:Landroid/view/View;

    sget-object v2, Lultima/pro/proxy/NeonOverlay;->crossLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->crossV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lultima/pro/proxy/NeonOverlay;->circleV:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->circleLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->circleLp:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lultima/pro/proxy/NeonOverlay;->flags()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->wm(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    sget-object v1, Lultima/pro/proxy/NeonOverlay;->circleV:Landroid/view/View;

    sget-object v2, Lultima/pro/proxy/NeonOverlay;->circleLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->circleV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static rgbAuto(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->ovPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "rgb_auto"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setEditable(Landroid/content/Context;Z)V
    .locals 0

    sput-boolean p1, Lultima/pro/proxy/NeonOverlay;->editable:Z

    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->refreshFlags(Landroid/content/Context;)V

    return-void
.end method

.method public static setGameVisible(Landroid/content/Context;Z)V
    .locals 1

    sget-boolean v0, Lultima/pro/proxy/NeonOverlay;->gameVisible:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean p1, Lultima/pro/proxy/NeonOverlay;->gameVisible:Z

    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->sync(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static sharedColor(Landroid/content/Context;Z)I
    .locals 6

    :try_start_0
    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->ovPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rgb_auto"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    rem-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x453b8000    # 3000.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->ovPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "circle_color"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->ovPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "circle_color"

    sget v2, Lultima/pro/proxy/NeonOverlay;->COLOR:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget v0, Lultima/pro/proxy/NeonOverlay;->COLOR:I

    goto :goto_0

    :cond_2
    sget v0, Lultima/pro/proxy/NeonOverlay;->CROSS_COLOR:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_3

    sget v0, Lultima/pro/proxy/NeonOverlay;->COLOR:I

    goto :goto_0

    :cond_3
    sget v0, Lultima/pro/proxy/NeonOverlay;->CROSS_COLOR:I

    goto :goto_0
.end method

.method public static spinOn(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lultima/pro/proxy/NeonOverlay;->ovPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "aim_spin"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static sync(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lultima/pro/proxy/NeonOverlay;->crossOn:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lultima/pro/proxy/NeonOverlay;->gameVisible:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    sget-boolean v3, Lultima/pro/proxy/NeonOverlay;->circleOn:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Lultima/pro/proxy/NeonOverlay;->gameVisible:Z

    if-eqz v3, :cond_5

    move v3, v1

    :goto_1
    if-eqz v0, :cond_0

    sget-object v4, Lultima/pro/proxy/NeonOverlay;->crossV:Landroid/view/View;

    if-nez v4, :cond_0

    invoke-static {p0, v2}, Lultima/pro/proxy/NeonOverlay;->build(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lultima/pro/proxy/NeonOverlay;->crossV:Landroid/view/View;

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->crossV:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->crossV:Landroid/view/View;

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonOverlay;->drop(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lultima/pro/proxy/NeonOverlay;->crossV:Landroid/view/View;

    sput-object v5, Lultima/pro/proxy/NeonOverlay;->crossLp:Landroid/view/WindowManager$LayoutParams;

    :cond_1
    if-eqz v3, :cond_2

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->circleV:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-static {p0, v1}, Lultima/pro/proxy/NeonOverlay;->build(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lultima/pro/proxy/NeonOverlay;->circleV:Landroid/view/View;

    :cond_2
    if-nez v3, :cond_3

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->circleV:Landroid/view/View;

    if-eqz v0, :cond_3

    sget-object v0, Lultima/pro/proxy/NeonOverlay;->circleV:Landroid/view/View;

    invoke-static {p0, v0}, Lultima/pro/proxy/NeonOverlay;->drop(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lultima/pro/proxy/NeonOverlay;->circleV:Landroid/view/View;

    sput-object v5, Lultima/pro/proxy/NeonOverlay;->circleLp:Landroid/view/WindowManager$LayoutParams;

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1
.end method

.method private static wm(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method
