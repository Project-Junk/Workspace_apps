.class public Lcom/android/setupwizardlib/view/RichTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "RichTextView.java"

# interfaces
.implements Lcom/android/setupwizardlib/a/a$b;


# instance fields
.field private a:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

.field private b:Lcom/android/setupwizardlib/a/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/RichTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/RichTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 107
    new-instance v0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->a:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    .line 108
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->a:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/setupwizardlib/a/a;)Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->b:Lcom/android/setupwizardlib/a/a$b;

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/a/a$b;->a(Lcom/android/setupwizardlib/a/a;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->a:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    if-eqz v0, :cond_1

    .line 2140
    iget-object v1, v0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->a:Landroidx/core/view/AccessibilityDelegateCompat;

    instance-of v1, v1, Landroidx/customview/widget/ExploreByTouchHelper;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->a:Landroidx/core/view/AccessibilityDelegateCompat;

    check-cast v0, Landroidx/customview/widget/ExploreByTouchHelper;

    .line 2141
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 180
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawableStateChanged()V
    .locals 6

    .line 185
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->drawableStateChanged()V

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getDrawableState()[I

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 193
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/view/RichTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getOnLinkClickListener()Lcom/android/setupwizardlib/a/a$b;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->b:Lcom/android/setupwizardlib/a/a$b;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 163
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 164
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 165
    instance-of v2, v1, Lcom/android/setupwizardlib/view/a;

    if-eqz v2, :cond_0

    .line 166
    check-cast v1, Lcom/android/setupwizardlib/view/a;

    .line 168
    invoke-interface {v1}, Lcom/android/setupwizardlib/view/a;->a()Landroid/view/MotionEvent;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 169
    invoke-interface {v1}, Lcom/android/setupwizardlib/view/a;->b()Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public setOnLinkClickListener(Lcom/android/setupwizardlib/a/a$b;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/setupwizardlib/view/RichTextView;->b:Lcom/android/setupwizardlib/a/a$b;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 10

    .line 113
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1066
    instance-of v1, p1, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1067
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1068
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result p1

    const-class v3, Landroid/text/Annotation;

    invoke-virtual {v1, v2, p1, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/Annotation;

    .line 1069
    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    .line 1070
    invoke-virtual {v5}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "textAppearance"

    .line 1071
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1072
    invoke-virtual {v5}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 1073
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1074
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "style"

    invoke-virtual {v7, v6, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 1076
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Cannot find resource: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "RichTextView"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_0
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v7, v0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1080
    invoke-static {v1, v5, v7}, Lcom/android/setupwizardlib/a/b;->a(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v7, "link"

    .line 1081
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1082
    new-instance v6, Lcom/android/setupwizardlib/a/a;

    invoke-virtual {v5}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/setupwizardlib/a/a;-><init>(Ljava/lang/String;)V

    .line 1083
    invoke-static {v1, v5, v6}, Lcom/android/setupwizardlib/a/b;->a(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object p1, v1

    .line 116
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1148
    instance-of p2, p1, Landroid/text/Spanned;

    if-eqz p2, :cond_5

    .line 1149
    move-object p2, p1

    check-cast p2, Landroid/text/Spanned;

    .line 1150
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v0, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v2, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 1151
    array-length p1, p1

    if-lez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    move p1, v2

    :goto_2
    if-eqz p1, :cond_6

    .line 125
    invoke-static {}, Lcom/android/setupwizardlib/view/a$a;->c()Lcom/android/setupwizardlib/view/a$a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    .line 127
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 133
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/view/RichTextView;->setFocusable(Z)V

    .line 137
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-lt p2, v0, :cond_7

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/view/RichTextView;->setRevealOnFocusHint(Z)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/view/RichTextView;->setFocusableInTouchMode(Z)V

    :cond_7
    return-void
.end method
