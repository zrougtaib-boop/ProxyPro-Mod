.class Lultima/pro/proxy/MainActivity$70;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity;->_floating()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lultima/pro/proxy/MainActivity;

.field private final val$_abiTv:Landroid/widget/TextView;

.field private final val$_alive:[Z

.field private final val$_cpu:Ljava/lang/String;

.field private final val$_frames:[I

.field private final val$_last:[J

.field private final val$_valTv:Landroid/widget/TextView;

.field private final val$_validEnd:J

.field private final val$_validRaw:Ljava/lang/String;

.field private final val$myView007:Landroid/view/View;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;Landroid/view/View;[Z[I[JLandroid/widget/TextView;Ljava/lang/String;JLandroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$70;->this$0:Lultima/pro/proxy/MainActivity;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$70;->val$myView007:Landroid/view/View;

    iput-object p3, p0, Lultima/pro/proxy/MainActivity$70;->val$_alive:[Z

    iput-object p4, p0, Lultima/pro/proxy/MainActivity$70;->val$_frames:[I

    iput-object p5, p0, Lultima/pro/proxy/MainActivity$70;->val$_last:[J

    iput-object p6, p0, Lultima/pro/proxy/MainActivity$70;->val$_abiTv:Landroid/widget/TextView;

    iput-object p7, p0, Lultima/pro/proxy/MainActivity$70;->val$_cpu:Ljava/lang/String;

    iput-wide p8, p0, Lultima/pro/proxy/MainActivity$70;->val$_validEnd:J

    iput-object p10, p0, Lultima/pro/proxy/MainActivity$70;->val$_valTv:Landroid/widget/TextView;

    iput-object p11, p0, Lultima/pro/proxy/MainActivity$70;->val$_validRaw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$70;->val$myView007:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$70;->val$_alive:[Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$70;->val$_frames:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    const-wide/16 v4, 0x1

    iget-object v3, p0, Lultima/pro/proxy/MainActivity$70;->val$_last:[J

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    sub-long v6, v0, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v3, v4

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lultima/pro/proxy/MainActivity$70;->val$_frames:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    iget-object v3, p0, Lultima/pro/proxy/MainActivity$70;->val$_last:[J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$70;->val$_abiTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u2517 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lultima/pro/proxy/MainActivity$70;->val$_cpu:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u2022 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FPS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lultima/pro/proxy/MainActivity$70;->val$_validEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p0, Lultima/pro/proxy/MainActivity$70;->val$_validEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$70;->val$_valTv:Landroid/widget/TextView;

    const-string v1, "\u2517 Expired"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$70;->val$_valTv:Landroid/widget/TextView;

    const v1, -0xbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$70;->val$_valTv:Landroid/widget/TextView;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    const-wide/32 v0, 0x15180

    div-long v0, v2, v0

    const-wide/32 v4, 0x15180

    rem-long v4, v2, v4

    const-wide/16 v6, 0xe10

    div-long/2addr v4, v6

    const-wide/16 v6, 0xe10

    rem-long v6, v2, v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    iget-object v8, p0, Lultima/pro/proxy/MainActivity$70;->val$_valTv:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u2517 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-lez v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "d "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v4, 0x3c

    rem-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$70;->val$_valTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u2517 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lultima/pro/proxy/MainActivity$70;->val$_validRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
