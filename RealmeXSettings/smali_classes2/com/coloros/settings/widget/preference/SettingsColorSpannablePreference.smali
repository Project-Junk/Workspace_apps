.class public Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;
.super Landroidx/preference/Preference;
.source "SettingsColorSpannablePreference.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x46

    .line 32
    iput p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x46

    .line 32
    iput p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x46

    .line 32
    iput p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x46

    .line 32
    iput p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->a:I

    return-void
.end method

.method static synthetic a(Landroid/view/MotionEvent;Landroid/widget/TextView;)Z
    .locals 6

    .line 1084
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1085
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    .line 1086
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1087
    invoke-virtual {v1, p0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    int-to-float v0, v0

    .line 1088
    invoke-virtual {v1, v2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    .line 1091
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1092
    instance-of v3, v2, Landroid/text/Spannable;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1093
    check-cast v2, Landroid/text/Spannable;

    .line 1098
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {v2, v1, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1100
    array-length v5, v1

    if-lez v5, :cond_0

    .line 1101
    aget-object v5, v1, v3

    invoke-interface {v2, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1102
    aget-object v1, v1, v3

    invoke-interface {v2, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    move v5, v1

    :goto_0
    int-to-float p0, p0

    .line 1104
    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p0

    if-eq v5, v1, :cond_2

    if-lt p0, v5, :cond_2

    if-le p0, v1, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    return v4
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 56
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 57
    new-instance v0, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference$1;-><init>(Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method
