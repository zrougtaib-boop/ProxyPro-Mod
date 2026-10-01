.class public final synthetic Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x12
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/activity/ComponentActivity;

.field public final synthetic f$1:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda9;->f$0:Landroidx/activity/ComponentActivity;

    iput-object p2, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda9;->f$1:Landroidx/activity/OnBackPressedDispatcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda9;->f$0:Landroidx/activity/ComponentActivity;

    iget-object v1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda9;->f$1:Landroidx/activity/OnBackPressedDispatcher;

    invoke-static {v0, v1}, Landroidx/activity/ComponentActivity;->$r8$lambda$-9gONAMAcMKCHBmrRleazUz2WLI(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    return-void
.end method
