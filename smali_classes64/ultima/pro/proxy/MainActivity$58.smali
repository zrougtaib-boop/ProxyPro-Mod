.class Lultima/pro/proxy/MainActivity$58;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lultima/pro/proxy/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/MainActivity$58;->this$0:Lultima/pro/proxy/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$58;->this$0:Lultima/pro/proxy/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lultima/pro/proxy/NeonSound;->onSwitch(Landroid/content/Context;Landroid/view/View;Z)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$58;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, "abcd"

    const-string v2, "/storage/emulated/0/Android/data/com.dts.freefiremax/"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lultima/pro/proxy/MainActivity;->_CopyFromAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lultima/pro/proxy/MainActivity$58;->this$0:Lultima/pro/proxy/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lultima/pro/proxy/NeonSound;->onSwitch(Landroid/content/Context;Landroid/view/View;Z)V

    iget-object v0, p0, Lultima/pro/proxy/MainActivity$58;->this$0:Lultima/pro/proxy/MainActivity;

    const-string v1, "abcd"

    const-string v2, "/storage/emulated/0/Android/data/com.dts.freefiremax/"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lultima/pro/proxy/MainActivity;->_CopyFromAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
