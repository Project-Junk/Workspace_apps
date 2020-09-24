.class public interface abstract Lcom/android/systemui/qs/QSFooter;
.super Ljava/lang/Object;
.source "QSFooter.java"

# interfaces
.implements Lcom/coloros/systemui/qs/IColorBaseQSFooter;


# virtual methods
.method public disable(IIZ)V
    .locals 0

    return-void
.end method

.method public abstract getHeight()I
.end method

.method public abstract setExpandClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setExpanded(Z)V
.end method

.method public abstract setExpansion(F)V
.end method

.method public abstract setKeyguardShowing(Z)V
.end method

.method public abstract setListening(Z)V
.end method

.method public abstract setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .param p1    # Lcom/android/systemui/qs/QSPanel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVisibility(I)V
.end method
