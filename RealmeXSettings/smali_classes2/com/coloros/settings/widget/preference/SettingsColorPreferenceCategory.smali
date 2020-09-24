.class public Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;
.super Lcom/color/support/preference/ColorPreferenceCategory;
.source "SettingsColorPreferenceCategory.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a:Z

    .line 34
    sget-object v1, Lcom/android/settings/g$a;->SettingsColorPreferenceCategory:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a:Z

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060122

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 45
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a:Z

    if-nez v0, :cond_0

    const v0, 0x1020016

    .line 46
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method
