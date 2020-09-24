.class public final synthetic Lcom/coloros/settings/widget/preference/-$$Lambda$SettingsSingleSelectListPreference$kspwgrgUH5mCTh5z1PJdR7fd4YA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

.field private final synthetic f$1:Lcom/android/settingslib/g$a;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;Lcom/android/settingslib/g$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/-$$Lambda$SettingsSingleSelectListPreference$kspwgrgUH5mCTh5z1PJdR7fd4YA;->f$0:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iput-object p2, p0, Lcom/coloros/settings/widget/preference/-$$Lambda$SettingsSingleSelectListPreference$kspwgrgUH5mCTh5z1PJdR7fd4YA;->f$1:Lcom/android/settingslib/g$a;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/-$$Lambda$SettingsSingleSelectListPreference$kspwgrgUH5mCTh5z1PJdR7fd4YA;->f$0:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iget-object v1, p0, Lcom/coloros/settings/widget/preference/-$$Lambda$SettingsSingleSelectListPreference$kspwgrgUH5mCTh5z1PJdR7fd4YA;->f$1:Lcom/android/settingslib/g$a;

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->lambda$kspwgrgUH5mCTh5z1PJdR7fd4YA(Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;Lcom/android/settingslib/g$a;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
