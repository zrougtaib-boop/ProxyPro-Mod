.class Lultima/pro/proxy/GlowingTriangleParticles$Triangle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lultima/pro/proxy/GlowingTriangleParticles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Triangle"
.end annotation


# instance fields
.field angle:F

.field dx:F

.field dy:F

.field path:Landroid/graphics/Path;

.field rotationSpeed:F

.field size:F

.field final this$0:Lultima/pro/proxy/GlowingTriangleParticles;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lultima/pro/proxy/GlowingTriangleParticles;)V
    .locals 2

    iput-object p1, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->this$0:Lultima/pro/proxy/GlowingTriangleParticles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->path:Landroid/graphics/Path;

    const/16 v0, 0x438

    const/16 v1, 0x780

    invoke-virtual {p0, v0, v1}, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->reset(II)V

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->path:Landroid/graphics/Path;

    iget v1, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->x:F

    iget v2, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->y:F

    iget v3, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->size:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->path:Landroid/graphics/Path;

    iget v1, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->x:F

    iget v2, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->size:F

    add-float/2addr v1, v2

    iget v2, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->y:F

    iget v3, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->size:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->path:Landroid/graphics/Path;

    iget v1, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->x:F

    iget v2, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->size:F

    sub-float/2addr v1, v2

    iget v2, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->y:F

    iget v3, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->size:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->angle:F

    iget v1, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->x:F

    iget v2, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->y:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method reset(II)V
    .locals 4

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->this$0:Lultima/pro/proxy/GlowingTriangleParticles;

    invoke-static {v0}, Lultima/pro/proxy/GlowingTriangleParticles;->access$0(Lultima/pro/proxy/GlowingTriangleParticles;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->x:F

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->this$0:Lultima/pro/proxy/GlowingTriangleParticles;

    invoke-static {v0}, Lultima/pro/proxy/GlowingTriangleParticles;->access$0(Lultima/pro/proxy/GlowingTriangleParticles;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->y:F

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->this$0:Lultima/pro/proxy/GlowingTriangleParticles;

    invoke-static {v0}, Lultima/pro/proxy/GlowingTriangleParticles;->access$0(Lultima/pro/proxy/GlowingTriangleParticles;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->dx:F

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->this$0:Lultima/pro/proxy/GlowingTriangleParticles;

    invoke-static {v0}, Lultima/pro/proxy/GlowingTriangleParticles;->access$0(Lultima/pro/proxy/GlowingTriangleParticles;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->dy:F

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->this$0:Lultima/pro/proxy/GlowingTriangleParticles;

    invoke-static {v0}, Lultima/pro/proxy/GlowingTriangleParticles;->access$0(Lultima/pro/proxy/GlowingTriangleParticles;)Ljava/util/Random;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->size:F

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->this$0:Lultima/pro/proxy/GlowingTriangleParticles;

    invoke-static {v0}, Lultima/pro/proxy/GlowingTriangleParticles;->access$0(Lultima/pro/proxy/GlowingTriangleParticles;)Ljava/util/Random;

    move-result-object v0

    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->angle:F

    iget-object v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->this$0:Lultima/pro/proxy/GlowingTriangleParticles;

    invoke-static {v0}, Lultima/pro/proxy/GlowingTriangleParticles;->access$0(Lultima/pro/proxy/GlowingTriangleParticles;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->rotationSpeed:F

    return-void
.end method

.method update(II)V
    .locals 3

    iget v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->x:F

    iget v1, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->dx:F

    add-float/2addr v0, v1

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->x:F

    iget v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->y:F

    iget v1, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->dy:F

    add-float/2addr v0, v1

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->y:F

    iget v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->angle:F

    iget v1, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->rotationSpeed:F

    add-float/2addr v0, v1

    iput v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->angle:F

    iget v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->x:F

    iget v1, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->size:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->x:F

    int-to-float v1, p1

    iget v2, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->size:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->y:F

    iget v1, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->size:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->y:F

    int-to-float v1, p2

    iget v2, p0, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->size:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lultima/pro/proxy/GlowingTriangleParticles$Triangle;->reset(II)V

    :cond_1
    return-void
.end method
