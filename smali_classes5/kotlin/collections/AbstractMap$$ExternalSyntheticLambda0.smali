.class public final synthetic Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x12
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlin/collections/AbstractMap;


# direct methods
.method public synthetic constructor <init>(Lkotlin/collections/AbstractMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->f$0:Lkotlin/collections/AbstractMap;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->f$0:Lkotlin/collections/AbstractMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lkotlin/collections/AbstractMap;->$r8$lambda$cSMFTgBg7SSFWfeB-xmWIbM6cdo(Lkotlin/collections/AbstractMap;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
