.class public Lultima/pro/proxy/NeonLoader$Spinner;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lultima/pro/proxy/NeonLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spinner"
.end annotation


# instance fields
.field public color:I

.field private final dp:F

.field private final oval:Landroid/graphics/RectF;

.field private final p:Landroid/graphics/Paint;

.field private final start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, -0xdd00dd

    iput v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->color:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->oval:Landroid/graphics/RectF;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->start:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->dp:F

    iget-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0xdd00dd

    iput v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->color:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->oval:Landroid/graphics/RectF;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->start:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->dp:F

    iget-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/high16 v12, 0x43b40000    # 360.0f

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lultima/pro/proxy/NeonLoader$Spinner;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lultima/pro/proxy/NeonLoader$Spinner;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v2

    div-float v7, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v2

    iget v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->dp:F

    mul-float/2addr v1, v11

    sub-float v8, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lultima/pro/proxy/NeonLoader$Spinner;->start:J

    sub-long/2addr v0, v2

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v9, v2, v3

    const-wide/16 v2, 0x578

    rem-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x44af0000    # 1400.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x3fc00000    # 1.5f

    iget v3, p0, Lultima/pro/proxy/NeonLoader$Spinner;->dp:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    iget v2, p0, Lultima/pro/proxy/NeonLoader$Spinner;->color:I

    const v3, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v0

    mul-float/2addr v3, v5

    invoke-static {v2, v3}, Lultima/pro/proxy/NeonLoader;->withAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v1

    const v1, 0x3f0ccccd    # 0.55f

    add-float/2addr v0, v1

    mul-float/2addr v0, v8

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    iget v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->dp:F

    mul-float/2addr v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    iget v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->color:I

    const v2, 0x3df5c28f    # 0.12f

    invoke-static {v1, v2}, Lultima/pro/proxy/NeonLoader;->withAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v0, 0x3f51eb85    # 0.82f

    mul-float/2addr v0, v8

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v0, 0x3f51eb85    # 0.82f

    mul-float/2addr v0, v8

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->oval:Landroid/graphics/RectF;

    sub-float v2, v6, v0

    sub-float v3, v7, v0

    add-float v5, v6, v0

    add-float/2addr v0, v7

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x42700000    # 60.0f

    const/high16 v1, 0x43480000    # 200.0f

    const v2, 0x404ccccd    # 3.2f

    mul-float/2addr v2, v9

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v2, v10

    mul-float/2addr v1, v2

    add-float v3, v0, v1

    const/high16 v0, 0x43a50000    # 330.0f

    mul-float/2addr v0, v9

    rem-float v2, v0, v12

    iget-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    iget v5, p0, Lultima/pro/proxy/NeonLoader$Spinner;->dp:F

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    iget v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->color:I

    const v5, 0x3e3851ec    # 0.18f

    invoke-static {v1, v5}, Lultima/pro/proxy/NeonLoader;->withAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->oval:Landroid/graphics/RectF;

    iget-object v5, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    iget v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->dp:F

    mul-float/2addr v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    iget v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->color:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v5}, Lultima/pro/proxy/NeonLoader;->withAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->oval:Landroid/graphics/RectF;

    iget-object v5, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const v0, 0x3f051eb8    # 0.52f

    mul-float/2addr v0, v8

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->oval:Landroid/graphics/RectF;

    sub-float v2, v6, v0

    sub-float v3, v7, v0

    add-float v5, v6, v0

    add-float/2addr v0, v7

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x43f00000    # 480.0f

    mul-float/2addr v0, v9

    rem-float/2addr v0, v12

    sub-float v2, v12, v0

    iget-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    iget v3, p0, Lultima/pro/proxy/NeonLoader$Spinner;->dp:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    iget v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->color:I

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-static {v1, v3}, Lultima/pro/proxy/NeonLoader;->withAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->oval:Landroid/graphics/RectF;

    const/high16 v3, 0x42c80000    # 100.0f

    iget-object v5, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->oval:Landroid/graphics/RectF;

    const/high16 v0, 0x43340000    # 180.0f

    add-float/2addr v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    iget-object v5, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v0, 0x40d00000    # 6.5f

    mul-float/2addr v0, v9

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v10

    add-float/2addr v0, v10

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    iget v2, p0, Lultima/pro/proxy/NeonLoader$Spinner;->color:I

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-static {v2, v3}, Lultima/pro/proxy/NeonLoader;->withAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3e6147ae    # 0.22f

    const v2, 0x3d75c28f    # 0.06f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    mul-float/2addr v1, v8

    iget-object v2, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    iget v2, p0, Lultima/pro/proxy/NeonLoader$Spinner;->color:I

    const v3, 0x3f266666    # 0.65f

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lultima/pro/proxy/NeonLoader;->withAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v1

    const v1, 0x3de147ae    # 0.11f

    add-float/2addr v0, v1

    mul-float/2addr v0, v8

    iget-object v1, p0, Lultima/pro/proxy/NeonLoader$Spinner;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lultima/pro/proxy/NeonLoader$Spinner;->postInvalidateOnAnimation()V

    return-void
.end method
