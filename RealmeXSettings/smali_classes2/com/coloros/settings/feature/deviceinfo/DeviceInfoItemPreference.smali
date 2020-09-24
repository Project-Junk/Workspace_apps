.class public Lcom/coloros/settings/feature/deviceinfo/DeviceInfoItemPreference;
.super Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
.source "DeviceInfoItemPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/deviceinfo/DeviceInfoItemPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/deviceinfo/DeviceInfoItemPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/feature/deviceinfo/DeviceInfoItemPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d0084

    .line 30
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/DeviceInfoItemPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    const v0, 0x1020016

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/DeviceInfoItemPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060302

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/DeviceInfoItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 48
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/DeviceInfoItemPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/DeviceInfoItemPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/coloros/settings/feature/deviceinfo/b;->a(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/DeviceInfoItemPreference;->c(Ljava/lang/CharSequence;)V

    return-void
.end method
