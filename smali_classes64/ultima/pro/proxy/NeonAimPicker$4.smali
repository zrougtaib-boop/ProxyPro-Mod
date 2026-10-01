.class Lultima/pro/proxy/NeonAimPicker$4;
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

.field private final val$stopBtn:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/NeonAimPicker$4;->val$pr:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lultima/pro/proxy/NeonAimPicker$4;->val$stopBtn:Landroid/widget/TextView;

    iput-object p3, p0, Lultima/pro/proxy/NeonAimPicker$4;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lultima/pro/proxy/NeonAimPicker$4;->val$pr:Landroid/content/SharedPreferences;

    const-string v2, "aim_spin"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lultima/pro/proxy/NeonAimPicker$4;->val$pr:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v3, "aim_spin"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lultima/pro/proxy/NeonAimPicker$4;->val$stopBtn:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lultima/pro/proxy/NeonAimPicker;->access$0(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lultima/pro/proxy/NeonAimPicker$4;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lultima/pro/proxy/NeonOverlay;->refresh(Landroid/content/Context;)V

    return-void
.end method
