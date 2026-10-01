.class Lultima/pro/proxy/MainActivity$31;
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

.field private final val$back:Landroid/widget/RelativeLayout;

.field private final val$icon:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$31;->this$0:Lultima/pro/proxy/MainActivity;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$31;->val$icon:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lultima/pro/proxy/MainActivity$31;->val$back:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$31;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0, v2}, Lultima/pro/proxy/NeonOverlay;->setEditable(Landroid/content/Context;Z)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$31;->val$icon:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$31;->val$back:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
