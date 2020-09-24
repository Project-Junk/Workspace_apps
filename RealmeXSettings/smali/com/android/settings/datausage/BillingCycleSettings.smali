.class public Lcom/android/settings/datausage/BillingCycleSettings;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field a:Landroid/net/NetworkTemplate;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private b:Landroidx/preference/Preference;

.field private c:Landroidx/preference/Preference;

.field private d:Landroidx/preference/TwoStatePreference;

.field private f:Landroidx/preference/TwoStatePreference;

.field private g:Landroidx/preference/Preference;

.field private h:Lcom/android/settingslib/net/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 477
    new-instance v0, Lcom/android/settings/datausage/BillingCycleSettings$1;

    invoke-direct {v0}, Lcom/android/settings/datausage/BillingCycleSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/BillingCycleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    return-void
.end method

.method private b(J)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->e:Lcom/android/settings/datausage/g$a;

    iget-object v0, v0, Lcom/android/settings/datausage/g$a;->g:Lcom/android/settingslib/d;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->a:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/d;->a(Landroid/net/NetworkTemplate;J)V

    .line 219
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->h()V

    return-void
.end method

.method private h()V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->b:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->e:Lcom/android/settings/datausage/g$a;

    iget-object v0, v0, Lcom/android/settings/datausage/g$a;->g:Lcom/android/settingslib/d;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->a:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/d;->c(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->c:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2, v3}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->c:Landroidx/preference/Preference;

    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->d:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->c:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->c:Landroidx/preference/Preference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->d:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->e:Lcom/android/settings/datausage/g$a;

    iget-object v0, v0, Lcom/android/settings/datausage/g$a;->g:Lcom/android/settingslib/d;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->a:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/d;->d(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->g:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->g:Landroidx/preference/Preference;

    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->f:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->g:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->g:Landroidx/preference/Preference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->f:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "BillingCycleSettings"

    return-object v0
.end method

.method final a(J)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->e:Lcom/android/settings/datausage/g$a;

    iget-object v0, v0, Lcom/android/settings/datausage/g$a;->g:Lcom/android/settingslib/d;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->a:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/d;->b(Landroid/net/NetworkTemplate;J)V

    .line 213
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->h()V

    return-void
.end method

.method public final c()Lcom/android/settingslib/d;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->e:Lcom/android/settings/datausage/g$a;

    iget-object v0, v0, Lcom/android/settings/datausage/g$a;->g:Lcom/android/settingslib/d;

    return-object v0
.end method

.method public final d()Landroid/net/NetworkTemplate;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->a:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method public final e()V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->h()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x156

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150027

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 105
    new-instance v0, Lcom/android/settingslib/net/a;

    invoke-direct {v0, p1}, Lcom/android/settingslib/net/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->h:Lcom/android/settingslib/net/a;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "network_template"

    .line 108
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->a:Landroid/net/NetworkTemplate;

    .line 109
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->a:Landroid/net/NetworkTemplate;

    if-nez v0, :cond_0

    .line 111
    invoke-static {p1}, Lcom/android/settings/datausage/f;->e(Landroid/content/Context;)I

    move-result v0

    .line 110
    invoke-static {p1, v0}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->a:Landroid/net/NetworkTemplate;

    :cond_0
    const-string p1, "billing_cycle"

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->b:Landroidx/preference/Preference;

    const-string p1, "set_data_warning"

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->d:Landroidx/preference/TwoStatePreference;

    .line 116
    iget-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->d:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "data_warning"

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->c:Landroidx/preference/Preference;

    const-string p1, "set_data_limit"

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->f:Landroidx/preference/TwoStatePreference;

    .line 119
    iget-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->f:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "data_limit"

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->g:Landroidx/preference/Preference;

    .line 122
    iget-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    const v0, 0x7f120710

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->f:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-ne v0, p1, :cond_1

    .line 174
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 176
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings;->a(J)V

    return v1

    .line 179
    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->a(Lcom/android/settings/datausage/BillingCycleSettings;)V

    return v4

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->d:Landroidx/preference/TwoStatePreference;

    if-ne v0, p1, :cond_3

    .line 183
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 185
    iget-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->h:Lcom/android/settingslib/net/a;

    invoke-virtual {p1}, Lcom/android/settingslib/net/a;->a()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/BillingCycleSettings;->b(J)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings;->b(J)V

    :goto_0
    return v1

    :cond_3
    return v4
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->b:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 159
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->a(Lcom/android/settings/datausage/BillingCycleSettings;)V

    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->c:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 162
    invoke-static {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->a(Lcom/android/settings/datausage/d;Z)V

    return v1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->g:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 165
    invoke-static {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->a(Lcom/android/settings/datausage/d;Z)V

    return v1

    .line 168
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 127
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 128
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->h()V

    return-void
.end method
