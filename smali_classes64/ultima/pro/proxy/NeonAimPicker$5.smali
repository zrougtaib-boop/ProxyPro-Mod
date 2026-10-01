.class Lultima/pro/proxy/NeonAimPicker$5;
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

.field private final val$st:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/NeonAimPicker$5;->val$ctx:Landroid/content/Context;

    iput p2, p0, Lultima/pro/proxy/NeonAimPicker$5;->val$st:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lultima/pro/proxy/NeonAimPicker$5;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lultima/pro/proxy/NeonAimPicker;->access$1(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cross_style"

    iget v2, p0, Lultima/pro/proxy/NeonAimPicker$5;->val$st:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lultima/pro/proxy/NeonAimPicker;->access$2()V

    iget-object v0, p0, Lultima/pro/proxy/NeonAimPicker$5;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lultima/pro/proxy/NeonOverlay;->refresh(Landroid/content/Context;)V

    return-void
.end method
