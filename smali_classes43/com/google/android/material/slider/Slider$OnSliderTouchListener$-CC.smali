.class public final synthetic Lcom/google/android/material/slider/Slider$OnSliderTouchListener$-CC;
.super Ljava/lang/Object;
.source "Slider.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0xa
    versionHash = "a094cd79adefa6fbf3669589d7b19cca3f0130aceb9197528bed23802e4572c4"
.end annotation


# direct methods
.method public static bridge synthetic $default$onStartTrackingTouch(Lcom/google/android/material/slider/Slider$OnSliderTouchListener;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/material/slider/Slider$OnSliderTouchListener;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            null
        }
    .end annotation

    .line 59
    check-cast p1, Lcom/google/android/material/slider/Slider;

    invoke-interface {p0, p1}, Lcom/google/android/material/slider/Slider$OnSliderTouchListener;->onStartTrackingTouch(Lcom/google/android/material/slider/Slider;)V

    return-void
.end method

.method public static bridge synthetic $default$onStopTrackingTouch(Lcom/google/android/material/slider/Slider$OnSliderTouchListener;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/material/slider/Slider$OnSliderTouchListener;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            null
        }
    .end annotation

    .line 59
    check-cast p1, Lcom/google/android/material/slider/Slider;

    invoke-interface {p0, p1}, Lcom/google/android/material/slider/Slider$OnSliderTouchListener;->onStopTrackingTouch(Lcom/google/android/material/slider/Slider;)V

    return-void
.end method
