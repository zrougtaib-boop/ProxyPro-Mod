.class Lultima/pro/proxy/NeonOverlay$Fx;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lultima/pro/proxy/NeonOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Fx"
.end annotation


# instance fields
.field private final dp:F

.field private final hint:Landroid/graphics/Paint;

.field private final isCircle:Z

.field private final p:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonOverlay$Fx;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonOverlay$Fx;->hint:Landroid/graphics/Paint;

    iput-boolean p2, p0, Lultima/pro/proxy/NeonOverlay$Fx;->isCircle:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lultima/pro/proxy/NeonOverlay$Fx;->dp:F

    iget-object v0, p0, Lultima/pro/proxy/NeonOverlay$Fx;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonOverlay$Fx;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonOverlay$Fx;->p:Landroid/graphics/Paint;

    sget v1, Lultima/pro/proxy/NeonOverlay;->LINE_DP:F

    iget v2, p0, Lultima/pro/proxy/NeonOverlay$Fx;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lultima/pro/proxy/NeonOverlay$Fx;->hint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonOverlay$Fx;->hint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lultima/pro/proxy/NeonOverlay$Fx;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lultima/pro/proxy/NeonOverlay$Fx;->hint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x40e00000    # 7.0f

    iget v5, p0, Lultima/pro/proxy/NeonOverlay$Fx;->dp:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    iget v4, p0, Lultima/pro/proxy/NeonOverlay$Fx;->dp:F

    mul-float/2addr v3, v4

    aput v3, v2, v6

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Lultima/pro/proxy/NeonOverlay$Fx;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/16 v7, 0x64

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lultima/pro/proxy/NeonOverlay$Fx;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lultima/pro/proxy/NeonOverlay$Fx;->getHeight()I

    move-result v2

    iget-boolean v0, p0, Lultima/pro/proxy/NeonOverlay$Fx;->isCircle:Z

    if-nez v0, :cond_4

    sget v0, Lultima/pro/proxy/NeonOverlay;->ROTATE_SECONDS:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lultima/pro/proxy/NeonOverlay$Fx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/NeonOverlay;->spinOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v9, v0

    :goto_0
    if-eqz v9, :cond_0

    sget v0, Lultima/pro/proxy/NeonOverlay;->ROTATE_SECONDS:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    float-to-long v4, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    rem-long/2addr v10, v4

    long-to-float v0, v10

    long-to-float v3, v4

    div-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v0, v3

    int-to-float v3, v1

    div-float/2addr v3, v6

    int-to-float v4, v2

    div-float/2addr v4, v6

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_0
    iget-object v3, p0, Lultima/pro/proxy/NeonOverlay$Fx;->p:Landroid/graphics/Paint;

    iget v4, p0, Lultima/pro/proxy/NeonOverlay$Fx;->dp:F

    iget-boolean v0, p0, Lultima/pro/proxy/NeonOverlay$Fx;->isCircle:Z

    if-eqz v0, :cond_5

    const/16 v5, 0xb

    :goto_1
    invoke-virtual {p0}, Lultima/pro/proxy/NeonOverlay$Fx;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v6, p0, Lultima/pro/proxy/NeonOverlay$Fx;->isCircle:Z

    invoke-static {v0, v6}, Lultima/pro/proxy/NeonOverlay;->sharedColor(Landroid/content/Context;Z)I

    move-result v6

    move-object v0, p1

    move v8, v7

    invoke-static/range {v0 .. v8}, Lultima/pro/proxy/NeonShapes;->draw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;FIIII)V

    if-eqz v9, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    if-nez v9, :cond_2

    invoke-virtual {p0}, Lultima/pro/proxy/NeonOverlay$Fx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/NeonOverlay;->rgbAuto(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lultima/pro/proxy/NeonOverlay$Fx;->postInvalidateOnAnimation()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lultima/pro/proxy/NeonOverlay$Fx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lultima/pro/proxy/NeonAimPicker;->style(Landroid/content/Context;)I

    move-result v5

    goto :goto_1
.end method
