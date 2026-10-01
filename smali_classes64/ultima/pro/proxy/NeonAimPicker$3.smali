.class Lultima/pro/proxy/NeonAimPicker$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/NeonAimPicker;->install(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final val$ctx:Landroid/content/Context;

.field private final val$pr:Landroid/content/SharedPreferences;

.field private final val$rgbBtn:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/NeonAimPicker$3;->val$pr:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lultima/pro/proxy/NeonAimPicker$3;->val$rgbBtn:Landroid/widget/TextView;

    iput-object p3, p0, Lultima/pro/proxy/NeonAimPicker$3;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lultima/pro/proxy/NeonAimPicker$3;->val$pr:Landroid/content/SharedPreferences;

    const-string v2, "rgb_auto"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lultima/pro/proxy/NeonAimPicker$3;->val$pr:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "rgb_auto"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lultima/pro/proxy/NeonAimPicker$3;->val$rgbBtn:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lultima/pro/proxy/NeonAimPicker;->access$0(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lultima/pro/proxy/NeonAimPicker$3;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lultima/pro/proxy/NeonOverlay;->refresh(Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
