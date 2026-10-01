.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x12
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gson/internal/ConstructorConstructor;->lambda$get$2(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
