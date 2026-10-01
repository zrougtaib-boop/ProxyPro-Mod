.class public Lultima/pro/proxy/GlowingTriangleParticles;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lultima/pro/proxy/GlowingTriangleParticles$Triangle;
    }
.end annotation


# instance fields
.field private cornerRadius:F

.field private numTriangles:I

.field private paint:Landroid/graphics/Paint;

.field private random:Ljava/util/Random;

.field private triangles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lultima/pro/proxy/GlowingTriangleParticles$Triangle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->random:Ljava/util/Random;

    const/16 v0, 0x1e

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->numTriangles:I

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->cornerRadius:F

    invoke-direct {p0}, Lultima/pro/proxy/GlowingTriangleParticles;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->random:Ljava/util/Random;

    const/16 v0, 0x1e

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->numTriangles:I

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->cornerRadius:F

    invoke-direct {p0}, Lultima/pro/proxy/GlowingTriangleParticles;->init()V

    return-void
.end method

.method static synthetic access$0(Lultima/pro/proxy/GlowingTriangleParticles;)Ljava/util/Random;
    .locals 1

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->random:Ljava/util/Random;

    return-object v0
.end method

.method public static addToLayout(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Lultima/pro/proxy/GlowingTriangleParticles;

    invoke-direct {v0, p0}, Lultima/pro/proxy/GlowingTriangleParticles;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lultima/pro/proxy/GlowingTriangleParticles;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->paint:Landroid/graphics/Paint;

    const-string v1, "#00FF00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c80000    # 25.0f

    const-string v2, "#00FF00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4, v0}, Lultima/pro/proxy/GlowingTriangleParticles;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->triangles:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lultima/pro/proxy/GlowingTriangleParticles;->numTriangles:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lultima/pro/proxy/GlowingTriangleParticles;->triangles:Ljava/util/ArrayList;

    new-instance v2, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;

    invoke-direct {v2, p0}, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;-><init>(Lultima/pro/proxy/GlowingTriangleParticles;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lultima/pro/proxy/GlowingTriangleParticles;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lultima/pro/proxy/GlowingTriangleParticles;->getHeight()I

    move-result v0

    int-to-float v4, v0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v5, p0, Lultima/pro/proxy/GlowingTriangleParticles;->cornerRadius:F

    iget v6, p0, Lultima/pro/proxy/GlowingTriangleParticles;->cornerRadius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const-string v0, "#9A000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles;->triangles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lultima/pro/proxy/GlowingTriangleParticles;->postInvalidateDelayed(J)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;

    invoke-virtual {p0}, Lultima/pro/proxy/GlowingTriangleParticles;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lultima/pro/proxy/GlowingTriangleParticles;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->update(II)V

    iget-object v2, p0, Lultima/pro/proxy/GlowingTriangleParticles;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0
.end method
