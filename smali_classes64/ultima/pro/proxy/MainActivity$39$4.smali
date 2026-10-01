.class Lultima/pro/proxy/MainActivity$39$4;
.super Landroid/graphics/drawable/GradientDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/MainActivity$39;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lultima/pro/proxy/MainActivity$39;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity$39;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$39$4;->this$1:Lultima/pro/proxy/MainActivity$39;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getIns(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lultima/pro/proxy/MainActivity$39$4;->setCornerRadius(F)V

    invoke-virtual {p0, p2}, Lultima/pro/proxy/MainActivity$39$4;->setColor(I)V

    return-object p0
.end method
