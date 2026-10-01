.class public final synthetic Lcom/google/android/material/slider/RangeSlider$OnChangeListener$-CC;
.super Ljava/lang/Object;
.source "RangeSlider.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0xa
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# direct methods
.method public static bridge synthetic $default$onValueChange(Lcom/google/android/material/slider/RangeSlider$OnChangeListener;Ljava/lang/Object;FZ)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/material/slider/RangeSlider$OnChangeListener;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "_this",
            null,
            null,
            null
        }
    .end annotation

    .line 92
    check-cast p1, Lcom/google/android/material/slider/RangeSlider;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/material/slider/RangeSlider$OnChangeListener;->onValueChange(Lcom/google/android/material/slider/RangeSlider;FZ)V

    return-void
.end method
