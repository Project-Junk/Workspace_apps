.class public final Lcom/android/setupwizardlib/a/b;
.super Ljava/lang/Object;
.source "SpanHelper.java"


# direct methods
.method public static a(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 31
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 32
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 33
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 34
    invoke-interface {p0, p2, v0, v1, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
