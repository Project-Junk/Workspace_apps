.class public Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;
.super Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;
.source "VideoDisplayEnhancementFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12187b

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    const p1, 0x7f150135

    .line 54
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->addPreferencesFromResource(I)V

    const-string p1, "key_video_display_enhancement_swith"

    .line 55
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 56
    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vendor_media_vpp_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 58
    :cond_0
    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    const-string p1, "key_video_display_enhancement_image"

    .line 59
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0a0783

    .line 60
    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->a:Landroid/widget/ImageView;

    if-ne v0, v2, :cond_1

    .line 62
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080a27

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 69
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 72
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_video_display_enhancement_swith"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 74
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p2, :cond_1

    move v1, v0

    :cond_1
    const-string v2, "vendor_media_vpp_enable"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "true"

    const-string v1, "false"

    if-eqz p2, :cond_2

    move-object v2, p1

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    const-string v3, "vendor.media.vpp.enable"

    .line 75
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    const-string v1, "vendor.media.vpp.default.config"

    .line 76
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 78
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f080a27

    .line 79
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 81
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f080a28

    .line 82
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_3
    return v0
.end method
