.class Lultima/pro/proxy/MainActivity$39;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final val$b1:Landroid/widget/LinearLayout;

.field private final val$b2:Landroid/widget/LinearLayout;

.field private final val$b3:Landroid/widget/LinearLayout;

.field private final val$b4:Landroid/widget/LinearLayout;

.field private final val$b5:Landroid/widget/LinearLayout;

.field private final val$l1:Landroid/widget/LinearLayout;

.field private final val$l2:Landroid/widget/LinearLayout;

.field private final val$l3:Landroid/widget/LinearLayout;

.field private final val$l4:Landroid/widget/LinearLayout;

.field private final val$l5:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$39;->this$0:Lultima/pro/proxy/MainActivity;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$39;->val$l1:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lultima/pro/proxy/MainActivity$39;->val$l2:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lultima/pro/proxy/MainActivity$39;->val$l3:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lultima/pro/proxy/MainActivity$39;->val$l4:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lultima/pro/proxy/MainActivity$39;->val$l5:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lultima/pro/proxy/MainActivity$39;->val$b1:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lultima/pro/proxy/MainActivity$39;->val$b2:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lultima/pro/proxy/MainActivity$39;->val$b3:Landroid/widget/LinearLayout;

    iput-object p10, p0, Lultima/pro/proxy/MainActivity$39;->val$b4:Landroid/widget/LinearLayout;

    iput-object p11, p0, Lultima/pro/proxy/MainActivity$39;->val$b5:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v1, 0x8

    const/16 v3, 0x9

    const/4 v2, 0x0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$39;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0, v2}, Lultima/pro/proxy/NeonOverlay;->setEditable(Landroid/content/Context;Z)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$39;->val$l1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$39;->val$l2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$39;->val$l3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$39;->val$l4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$39;->val$l5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$39;->val$b1:Landroid/widget/LinearLayout;

    new-instance v1, Lultima/pro/proxy/MainActivity$39$1;

    invoke-direct {v1, p0}, Lultima/pro/proxy/MainActivity$39$1;-><init>(Lultima/pro/proxy/MainActivity$39;)V

    invoke-virtual {v1, v3, v2}, Lultima/pro/proxy/MainActivity$39$1;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$39;->val$b2:Landroid/widget/LinearLayout;

    new-instance v1, Lultima/pro/proxy/MainActivity$39$2;

    invoke-direct {v1, p0}, Lultima/pro/proxy/MainActivity$39$2;-><init>(Lultima/pro/proxy/MainActivity$39;)V

    invoke-virtual {v1, v3, v2}, Lultima/pro/proxy/MainActivity$39$2;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$39;->val$b3:Landroid/widget/LinearLayout;

    new-instance v1, Lultima/pro/proxy/MainActivity$39$3;

    invoke-direct {v1, p0}, Lultima/pro/proxy/MainActivity$39$3;-><init>(Lultima/pro/proxy/MainActivity$39;)V

    invoke-virtual {v1, v3, v2}, Lultima/pro/proxy/MainActivity$39$3;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$39;->val$b4:Landroid/widget/LinearLayout;

    new-instance v1, Lultima/pro/proxy/MainActivity$39$4;

    invoke-direct {v1, p0}, Lultima/pro/proxy/MainActivity$39$4;-><init>(Lultima/pro/proxy/MainActivity$39;)V

    invoke-virtual {v1, v3, v2}, Lultima/pro/proxy/MainActivity$39$4;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$39;->val$b5:Landroid/widget/LinearLayout;

    new-instance v1, Lultima/pro/proxy/MainActivity$39$5;

    invoke-direct {v1, p0}, Lultima/pro/proxy/MainActivity$39$5;-><init>(Lultima/pro/proxy/MainActivity$39;)V

    const v2, -0xff0100

    invoke-virtual {v1, v3, v2}, Lultima/pro/proxy/MainActivity$39$5;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
