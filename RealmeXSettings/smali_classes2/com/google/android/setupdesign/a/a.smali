.class public final Lcom/google/android/setupdesign/a/a;
.super Landroid/text/style/ClickableSpan;
.source "LinkSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/a/a$b;,
        Lcom/google/android/setupdesign/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/setupdesign/a/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1103
    instance-of v0, p1, Lcom/google/android/setupdesign/a/a$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1104
    move-object v0, p1

    check-cast v0, Lcom/google/android/setupdesign/a/a$b;

    invoke-interface {v0, p0}, Lcom/google/android/setupdesign/a/a$b;->a(Lcom/google/android/setupdesign/a/a;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 1107
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1121
    :goto_1
    instance-of v3, v2, Lcom/google/android/setupdesign/a/a$a;

    if-eqz v3, :cond_1

    .line 1122
    check-cast v2, Lcom/google/android/setupdesign/a/a$a;

    goto :goto_2

    .line 1123
    :cond_1
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    .line 1127
    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 1109
    invoke-interface {v2, p0}, Lcom/google/android/setupdesign/a/a$a;->a(Lcom/google/android/setupdesign/a/a;)V

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_5

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    goto :goto_3

    :cond_4
    const-string v0, "LinkSpan"

    const-string v2, "Dropping click event. No listener attached."

    .line 90
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_5
    :goto_3
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 94
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 95
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_6

    .line 96
    check-cast p1, Landroid/text/Spannable;

    invoke-static {p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_6
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
