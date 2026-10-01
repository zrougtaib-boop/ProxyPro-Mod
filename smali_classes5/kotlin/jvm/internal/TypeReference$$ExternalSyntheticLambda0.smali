.class public final synthetic Lkotlin/jvm/internal/TypeReference$$ExternalSyntheticLambda0;
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
.field public final synthetic f$0:Lkotlin/jvm/internal/TypeReference;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/TypeReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/TypeReference$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/TypeReference;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/jvm/internal/TypeReference$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/TypeReference;

    check-cast p1, Lkotlin/reflect/KTypeProjection;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/TypeReference;->$r8$lambda$TqUhj1JlPuVAfFHzMnjOlMDw418(Lkotlin/jvm/internal/TypeReference;Lkotlin/reflect/KTypeProjection;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
