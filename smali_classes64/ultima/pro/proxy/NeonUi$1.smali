.class Lultima/pro/proxy/NeonUi$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lultima/pro/proxy/NeonUi;->runBorder(Landroid/view/View;IFJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final val$d:Lultima/pro/proxy/NeonUi$RunBorderDrawable;


# direct methods
.method constructor <init>(Lultima/pro/proxy/NeonUi$RunBorderDrawable;)V
    .locals 0

    iput-object p1, p0, Lultima/pro/proxy/NeonUi$1;->val$d:Lultima/pro/proxy/NeonUi$RunBorderDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lultima/pro/proxy/NeonUi$1;->val$d:Lultima/pro/proxy/NeonUi$RunBorderDrawable;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lultima/pro/proxy/NeonUi$RunBorderDrawable;->setBounds(IIII)V

    return-void
.end method
