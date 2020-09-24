.class public Lcom/android/settingslib/widget/LayoutPreference;
.super Landroidx/preference/Preference;
.source "LayoutPreference.java"


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private b:Z

.field private c:Landroid/view/View;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/android/settingslib/widget/-$$Lambda$LayoutPreference$ZVOjLqA4ePkcELcd2WLxdSLMSjY;

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/-$$Lambda$LayoutPreference$ZVOjLqA4ePkcELcd2WLxdSLMSjY;-><init>(Lcom/android/settingslib/widget/LayoutPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->a:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Lcom/android/settingslib/widget/-$$Lambda$LayoutPreference$ZVOjLqA4ePkcELcd2WLxdSLMSjY;

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/-$$Lambda$LayoutPreference$ZVOjLqA4ePkcELcd2WLxdSLMSjY;-><init>(Lcom/android/settingslib/widget/LayoutPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->a:Landroid/view/View$OnClickListener;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/widget/LayoutPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Lcom/android/settingslib/widget/-$$Lambda$LayoutPreference$ZVOjLqA4ePkcELcd2WLxdSLMSjY;

    invoke-direct {p1, p0}, Lcom/android/settingslib/widget/-$$Lambda$LayoutPreference$ZVOjLqA4ePkcELcd2WLxdSLMSjY;-><init>(Lcom/android/settingslib/widget/LayoutPreference;)V

    iput-object p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->a:Landroid/view/View$OnClickListener;

    .line 101
    invoke-direct {p0, p2}, Lcom/android/settingslib/widget/LayoutPreference;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 105
    sget-object v0, Lcom/android/settingslib/widget/h$f;->Preference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    sget v1, Lcom/android/settingslib/widget/h$f;->Preference_allowDividerAbove:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingslib/widget/LayoutPreference;->b:Z

    .line 108
    sget v1, Lcom/android/settingslib/widget/h$f;->Preference_allowDividerBelow:I

    invoke-static {v0, v1, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingslib/widget/LayoutPreference;->d:Z

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    sget-object v0, Lcom/android/settingslib/widget/h$f;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 114
    sget p2, Lcom/android/settingslib/widget/h$f;->Preference_android_layout:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settingslib/widget/LayoutPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 122
    invoke-virtual {p1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->a(Landroid/view/View;)V

    return-void

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LayoutPreference requires a layout to be defined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 127
    sget v0, Lcom/android/settingslib/widget/h$e;->layout_preference_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->setLayoutResource(I)V

    .line 128
    iput-object p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->c:Landroid/view/View;

    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->setShouldDisableView(Z)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->performClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ZVOjLqA4ePkcELcd2WLxdSLMSjY(Lcom/android/settingslib/widget/LayoutPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 134
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingslib/widget/LayoutPreference;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settingslib/widget/LayoutPreference;->isSelectable()Z

    move-result v0

    .line 137
    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 138
    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 139
    iget-boolean v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->b:Z

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 140
    iget-boolean v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->d:Z

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 142
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 143
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 144
    iget-object v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/settingslib/widget/LayoutPreference;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
