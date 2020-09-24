.class public Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;
.super Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;
.source "DefaultVolumeTypePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_VOLUME_TYPE:Ljava/lang/String; = "default_volume_type_coloros_six"

.field public static final KEY_DEFAULT_VOLUME_TYPE:Ljava/lang/String; = "default_volume_type"

.field private static final TAG:Ljava/lang/String; = "DefaultVolumeTypePreferenceController"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "default_volume_type"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->setSingleSelect(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    .line 47
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v2, "default_volume_type_coloros_six"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 57
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 58
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    move v4, v0

    .line 59
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 60
    array-length v5, v2

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    aget-object v5, v2, v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->setEntries([Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->setDefaultEntry(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    new-instance v3, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController$a;

    invoke-direct {v3, p0, v0}, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController$a;-><init>(Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;B)V

    invoke-virtual {v2, v3}, Landroidx/preference/DialogPreference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    instance-of v0, v0, Lcom/color/support/preference/ColorListPreference;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast v0, Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorListPreference;->setValue(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast v0, Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast v1, Lcom/color/support/preference/ColorListPreference;

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Lcom/color/support/preference/ColorListPreference;->a(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 42
    invoke-static {}, Lcom/coloros/settings/custom/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 78
    iget-object p2, p0, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "default_volume_type_coloros_six"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    iget-object p2, p0, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    instance-of p2, p2, Lcom/color/support/preference/ColorListPreference;

    if-eqz p2, :cond_0

    .line 80
    iget-object p2, p0, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast p2, Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {p2}, Lcom/color/support/preference/ColorListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast v0, Lcom/color/support/preference/ColorListPreference;

    aget-object p1, p2, p1

    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorListPreference;->a(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
