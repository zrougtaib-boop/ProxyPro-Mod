.class Lultima/pro/proxy/MainActivity$33;
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

.field private final val$myView007:Landroid/view/View;

.field private final val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$33;->this$0:Lultima/pro/proxy/MainActivity;

    iput-object p2, p0, Lultima/pro/proxy/MainActivity$33;->val$wm:Landroid/view/WindowManager;

    iput-object p3, p0, Lultima/pro/proxy/MainActivity$33;->val$myView007:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$33;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, "Menu closed"

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonSound;->speak(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$33;->val$wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lultima/pro/proxy/MainActivity$33;->val$myView007:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$33;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/MainActivity;->access$2(Lultima/pro/proxy/MainActivity;)Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    sput-boolean v2, Lultima/pro/proxy/NeonToast;->menuOpen:Z

    sput-boolean v2, Lultima/pro/proxy/NeonSound;->gameOpened:Z

    invoke-static {}, Lultima/pro/proxy/NeonBadge;->hide()V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$33;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-static {v0}, Lultima/pro/proxy/NeonOverlay;->hideAll(Landroid/content/Context;)V

    invoke-static {}, Lultima/pro/proxy/NeonBadge;->stopWatch()V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$33;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, "Safe file applied"

    invoke-static {v0, v1, v2}, Lultima/pro/proxy/NeonToast;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
