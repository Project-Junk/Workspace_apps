.class public Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;
.super Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
.source "OppoZenModeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;,
        Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$a;
    }
.end annotation


# instance fields
.field a:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$a;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;

.field private final i:Lcolor/support/v7/internal/widget/ColorSpinner;

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->k:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->l:I

    .line 57
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->b:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;-><init>(Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->c:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;

    .line 62
    new-instance v0, Lcolor/support/v7/internal/widget/ColorSpinner;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/internal/widget/ColorSpinner;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {v0, v2}, Lcolor/support/v7/internal/widget/ColorSpinner;->setFitsSystemWindows(Z)V

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner;->setClipToPadding(Z)V

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcolor/support/v7/internal/widget/ColorSpinner;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->c:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;

    invoke-virtual {v0, v3}, Lcolor/support/v7/internal/widget/ColorSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    new-instance v3, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$1;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$1;-><init>(Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;)V

    invoke-virtual {v0, v3}, Lcolor/support/v7/internal/widget/ColorSpinner;->setOnItemSelectedListener(Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->setPersistent(Z)V

    .line 81
    new-instance v0, Lcom/coloros/settings/feature/zenmode/-$$Lambda$OppoZenModeListPreference$d0tG7BlAQq8P1ROSGO0nj64L1pU;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$OppoZenModeListPreference$d0tG7BlAQq8P1ROSGO0nj64L1pU;-><init>(Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;)V

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    sget-object v0, Lcom/android/settings/g$a;->DropDownPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 88
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    .line 89
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 92
    aget-object v2, p2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->b:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addItem_caption = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OppoZenModeListPref"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "birthday@localhost"

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1212d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "nobody@localhost"

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1212dd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 146
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "addItem_new_caption = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->c:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;->add(Ljava/lang/Object;)V

    .line 149
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;)Z
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$d0tG7BlAQq8P1ROSGO0nj64L1pU(Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->a(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 111
    iget p2, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->l:I

    if-ne p1, p2, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->k:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 115
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->a:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$a;->a(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {v0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->setSelection(I)V

    .line 119
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->l:I

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->c:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->a(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 122
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->notifyDependencyChange(Z)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 1107
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->a(IZ)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 163
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 164
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 168
    :cond_1
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    .line 169
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 170
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 171
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 173
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->i:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {v0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
