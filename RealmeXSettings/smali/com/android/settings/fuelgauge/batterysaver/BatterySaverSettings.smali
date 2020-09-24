.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BatterySaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/text/SpannableStringBuilder;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "BatterySaverSettings"

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120aa5

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x34

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150026

    return v0
.end method

.method public onStart()V
    .locals 3

    .line 59
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 1100
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "com.android.internal.R.string.battery_saver_description_with_learn_more"

    .line 1101
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1100
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->a:Landroid/text/SpannableStringBuilder;

    const v0, 0x7f120aa5

    .line 1102
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->b:Ljava/lang/String;

    .line 1103
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "footer_preference"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->a:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->b:Ljava/lang/String;

    invoke-static {v1, p0, v2}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$a;->a(Landroid/text/Spannable;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 1114
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
