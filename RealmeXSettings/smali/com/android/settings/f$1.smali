.class public final Lcom/android/settings/f$1;
.super Landroid/text/style/ClickableSpan;
.source "LinkifyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/f$a;


# direct methods
.method public constructor <init>(Lcom/android/settings/f$a;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/f$1;->a:Lcom/android/settings/f$a;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/android/settings/f$1;->a:Lcom/android/settings/f$a;

    invoke-interface {p1}, Lcom/android/settings/f$a;->onClick()V

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
