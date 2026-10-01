.class public final synthetic Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x12
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/activity/OnBackPressedDispatcher;

.field public final synthetic f$1:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda10;->f$0:Landroidx/activity/OnBackPressedDispatcher;

    iput-object p2, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda10;->f$1:Landroidx/activity/ComponentActivity;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda10;->f$0:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda10;->f$1:Landroidx/activity/ComponentActivity;

    invoke-static {v0, v1, p1, p2}, Landroidx/activity/ComponentActivity;->$r8$lambda$SwVrxZ3v6Cyi_K3ZzW2JnQ9Thac(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
