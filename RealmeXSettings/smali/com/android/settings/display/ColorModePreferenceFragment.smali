.class public Lcom/android/settings/display/ColorModePreferenceFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "ColorModePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ColorModePreferenceFragment$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/database/ContentObserver;

.field private b:Landroid/hardware/display/ColorDisplayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 209
    new-instance v0, Lcom/android/settings/display/ColorModePreferenceFragment$2;

    invoke-direct {v0}, Lcom/android/settings/display/ColorModePreferenceFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/display/ColorModePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/g;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/display/ColorModePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com.android.internal.R.array.config_availableColorModes"

    .line 118
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 117
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_4

    .line 122
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget v5, v1, v4

    if-nez v5, :cond_0

    .line 124
    new-instance v5, Lcom/android/settings/display/ColorModePreferenceFragment$a;

    const v6, 0x7f120590

    .line 125
    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "color_mode_natural"

    invoke-direct {v5, v6, v7}, Lcom/android/settings/display/ColorModePreferenceFragment$a;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 124
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 128
    new-instance v5, Lcom/android/settings/display/ColorModePreferenceFragment$a;

    const v6, 0x7f12058f

    .line 129
    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "color_mode_boosted"

    invoke-direct {v5, v6, v7}, Lcom/android/settings/display/ColorModePreferenceFragment$a;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 128
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 132
    new-instance v5, Lcom/android/settings/display/ColorModePreferenceFragment$a;

    const v6, 0x7f120591

    .line 133
    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "color_mode_saturated"

    invoke-direct {v5, v6, v7}, Lcom/android/settings/display/ColorModePreferenceFragment$a;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 132
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 136
    new-instance v5, Lcom/android/settings/display/ColorModePreferenceFragment$a;

    const v6, 0x7f12058e

    .line 137
    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "color_mode_automatic"

    invoke-direct {v5, v6, v7}, Lcom/android/settings/display/ColorModePreferenceFragment$a;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 136
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public final a(Landroidx/preference/PreferenceGroup;)V
    .locals 3

    .line 109
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d009b

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 1103
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->setSelectable(Z)V

    .line 1104
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "color_mode_saturated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "color_mode_natural"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "color_mode_automatic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "color_mode_boosted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_2

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->b:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v2}, Landroid/hardware/display/ColorDisplayManager;->setColorMode(I)V

    goto :goto_2

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->b:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v3}, Landroid/hardware/display/ColorDisplayManager;->setColorMode(I)V

    goto :goto_2

    .line 165
    :cond_3
    iget-object p1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->b:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v4}, Landroid/hardware/display/ColorDisplayManager;->setColorMode(I)V

    goto :goto_2

    .line 162
    :cond_4
    iget-object p1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->b:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v1}, Landroid/hardware/display/ColorDisplayManager;->setColorMode(I)V

    :goto_2
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x78f30bbe -> :sswitch_3
        -0x2c14dd15 -> :sswitch_2
        -0x15c4c717 -> :sswitch_1
        0x2da6f855 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->b:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getColorMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "color_mode_automatic"

    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "color_mode_saturated"

    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "color_mode_boosted"

    return-object v0

    :cond_2
    const-string v0, "color_mode_natural"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x477

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150056

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 65
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->b:Landroid/hardware/display/ColorDisplayManager;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 68
    new-instance v0, Lcom/android/settings/display/ColorModePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/ColorModePreferenceFragment$1;-><init>(Lcom/android/settings/display/ColorModePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->a:Landroid/database/ContentObserver;

    const-string v0, "accessibility_display_inversion_enabled"

    .line 80
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->a:Landroid/database/ContentObserver;

    iget v2, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->h:I

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "accessibility_display_daltonizer_enabled"

    .line 83
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->a:Landroid/database/ContentObserver;

    iget v2, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->h:I

    .line 82
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onDetach()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->a:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/display/ColorModePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->a:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method
