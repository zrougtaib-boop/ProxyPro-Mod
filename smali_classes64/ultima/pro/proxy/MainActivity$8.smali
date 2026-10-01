.class Lultima/pro/proxy/MainActivity$8;
.super Landroid/widget/VideoView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity;->_reCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lultima/pro/proxy/MainActivity;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$8;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-direct {p0, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lultima/pro/proxy/MainActivity$8;->getDefaultSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lultima/pro/proxy/MainActivity$8;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lultima/pro/proxy/MainActivity$8;->setMeasuredDimension(II)V

    return-void
.end method
