.class public Lcom/coloros/settings/widget/preference/DimmableIconPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "DimmableIconPreference.java"


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->a:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->b(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->a:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->b:I

    if-eqz v0, :cond_0

    return v0

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/RestrictedPreference;->a()I

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 105
    iget v0, p0, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/RestrictedPreference;->b()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    const v0, 0x7f0d00c6

    .line 90
    iput v0, p0, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->b:I

    .line 91
    iget v0, p0, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->b:I

    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x1020016

    .line 70
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->isEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 1059
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1061
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_1

    const/16 p1, 0x66

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1062
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
