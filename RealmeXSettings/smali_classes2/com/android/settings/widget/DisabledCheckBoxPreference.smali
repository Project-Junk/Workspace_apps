.class public Lcom/android/settings/widget/DisabledCheckBoxPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "DisabledCheckBoxPreference.java"


# instance fields
.field private a:Landroidx/preference/PreferenceViewHolder;

.field private b:Landroid/view/View;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "com.android.internal.R.styleable.Preference"

    .line 63
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 62
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "com.android.internal.R.styleable.Preference_enabled"

    .line 64
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    :goto_0
    if-ltz p3, :cond_1

    .line 66
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 70
    invoke-virtual {p1, v0, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->c:Z

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 82
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-super {p0, p4}, Landroidx/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 87
    iget-boolean p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->c:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 91
    iput-boolean p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->c:Z

    .line 92
    iget-object p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->a:Landroidx/preference/PreferenceViewHolder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 93
    iget-boolean v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->c:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    iget-object p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->a:Landroidx/preference/PreferenceViewHolder;

    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->c:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 101
    iput-object p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->a:Landroidx/preference/PreferenceViewHolder;

    const v0, 0x1020001

    .line 102
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->b:Landroid/view/View;

    .line 104
    iget-boolean v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->c:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->a(Z)V

    const v0, 0x1020016

    .line 106
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x2

    .line 109
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->c:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->performClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
