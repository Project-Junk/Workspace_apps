.class public final Lcom/android/setupwizardlib/a/a;
.super Landroid/text/style/ClickableSpan;
.source "LinkSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/a/a$b;,
        Lcom/android/setupwizardlib/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Typeface;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    .line 55
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/setupwizardlib/a/a;->a:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/setupwizardlib/a/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1109
    instance-of v0, p1, Lcom/android/setupwizardlib/a/a$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1110
    move-object v0, p1

    check-cast v0, Lcom/android/setupwizardlib/a/a$b;

    invoke-interface {v0, p0}, Lcom/android/setupwizardlib/a/a$b;->a(Lcom/android/setupwizardlib/a/a;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 1113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1129
    :goto_1
    instance-of v3, v2, Lcom/android/setupwizardlib/a/a$a;

    if-eqz v3, :cond_1

    .line 1130
    check-cast v2, Lcom/android/setupwizardlib/a/a$a;

    goto :goto_2

    .line 1131
    :cond_1
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    .line 1135
    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_5

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    goto :goto_3

    :cond_4
    const-string v0, "LinkSpan"

    const-string v2, "Dropping click event. No listener attached."

    .line 96
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_5
    :goto_3
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 100
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 101
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_6

    .line 102
    check-cast p1, Landroid/text/Spannable;

    invoke-static {p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_6
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 146
    sget-object v0, Lcom/android/setupwizardlib/a/a;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
