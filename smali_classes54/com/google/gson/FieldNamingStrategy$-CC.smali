.class public final synthetic Lcom/google/gson/FieldNamingStrategy$-CC;
.super Ljava/lang/Object;
.source "FieldNamingStrategy.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0xa
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# direct methods
.method public static $default$alternateNames(Lcom/google/gson/FieldNamingStrategy;Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 0
    .param p0, "_this"    # Lcom/google/gson/FieldNamingStrategy;

    .line 53
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method
