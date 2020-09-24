.class public Lcom/google/android/setupdesign/view/RichTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "RichTextView.java"

# interfaces
.implements Lcom/google/android/setupdesign/a/a$b;


# instance fields
.field private a:Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;

.field private b:Lcom/google/android/setupdesign/a/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/RichTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/RichTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 109
    new-instance v0, Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/RichTextView;->a:Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;

    .line 110
    iget-object v0, p0, Lcom/google/android/setupdesign/view/RichTextView;->a:Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/setupdesign/a/a;)Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/android/setupdesign/view/RichTextView;->b:Lcom/google/android/setupdesign/a/a$b;

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0, p1}, Lcom/google/android/setupdesign/a/a$b;->a(Lcom/google/android/setupdesign/a/a;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/google/android/setupdesign/view/RichTextView;->a:Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;

    if-eqz v0, :cond_1

    .line 2141
    iget-object v1, v0, Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;->a:Landroidx/core/view/AccessibilityDelegateCompat;

    instance-of v1, v1, Landroidx/customview/widget/ExploreByTouchHelper;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;->a:Landroidx/core/view/AccessibilityDelegateCompat;

    check-cast v0, Landroidx/customview/widget/ExploreByTouchHelper;

    .line 2142
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

    .line 181
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawableStateChanged()V
    .locals 6

    .line 186
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->drawableStateChanged()V

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/RichTextView;->getDrawableState()[I

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/RichTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    invoke-virtual {p0, v4}, Lcom/google/android/setupdesign/view/RichTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getOnLinkClickListener()Lcom/google/android/setupdesign/a/a$b;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/android/setupdesign/view/RichTextView;->b:Lcom/google/android/setupdesign/a/a$b;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 165
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 166
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/RichTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 167
    instance-of v2, v1, Lcom/google/android/setupdesign/view/a;

    if-eqz v2, :cond_0

    .line 168
    check-cast v1, Lcom/google/android/setupdesign/view/a;

    .line 169
    invoke-interface {v1}, Lcom/google/android/setupdesign/view/a;->a()Landroid/view/MotionEvent;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 170
    invoke-interface {v1}, Lcom/google/android/setupdesign/view/a;->b()Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public setOnLinkClickListener(Lcom/google/android/setupdesign/a/a$b;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/google/android/setupdesign/view/RichTextView;->b:Lcom/google/android/setupdesign/a/a$b;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 11

    .line 115
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/RichTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1066
    instance-of v1, p1, Landroid/text/Spanned;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 1067
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1068
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result p1

    const-class v4, Landroid/text/Annotation;

    invoke-virtual {v1, v3, p1, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/Annotation;

    .line 1069
    array-length v4, p1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, p1, v5

    .line 1070
    invoke-virtual {v6}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "textAppearance"

    .line 1071
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1072
    invoke-virtual {v6}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 1075
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1076
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "style"

    invoke-virtual {v8, v7, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 1078
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Cannot find resource: "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "RichTextView"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_0
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v8, v0, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1081
    new-array v7, v2, [Ljava/lang/Object;

    aput-object v8, v7, v3

    invoke-static {v1, v6, v7}, Lcom/google/android/setupdesign/a/b;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v8, "link"

    .line 1082
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1083
    new-instance v7, Lcom/google/android/setupdesign/a/a;

    invoke-virtual {v6}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/setupdesign/a/a;-><init>(Ljava/lang/String;)V

    .line 1084
    new-instance v8, Landroid/text/style/TypefaceSpan;

    const-string v9, "sans-serif-medium"

    invoke-direct {v8, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x2

    .line 1085
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v3

    aput-object v8, v9, v2

    invoke-static {v1, v6, v9}, Lcom/google/android/setupdesign/a/b;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object p1, v1

    .line 118
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1150
    instance-of p2, p1, Landroid/text/Spanned;

    if-eqz p2, :cond_5

    .line 1151
    move-object p2, p1

    check-cast p2, Landroid/text/Spanned;

    .line 1152
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v0, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v3, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 1153
    array-length p1, p1

    if-lez p1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    if-eqz v2, :cond_6

    .line 127
    invoke-static {}, Lcom/google/android/setupdesign/view/a$a;->c()Lcom/google/android/setupdesign/view/a$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 135
    :goto_3
    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/view/RichTextView;->setFocusable(Z)V

    .line 139
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x19

    if-lt p1, p2, :cond_7

    .line 140
    invoke-virtual {p0, v3}, Lcom/google/android/setupdesign/view/RichTextView;->setRevealOnFocusHint(Z)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/view/RichTextView;->setFocusableInTouchMode(Z)V

    :cond_7
    return-void
.end method
