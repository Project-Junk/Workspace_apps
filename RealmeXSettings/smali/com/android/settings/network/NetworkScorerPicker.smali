.class public Lcom/android/settings/network/NetworkScorerPicker;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "NetworkScorerPicker.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$a;


# instance fields
.field private a:Landroid/net/NetworkScoreManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 5

    .line 122
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 5110
    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPicker;->a:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    .line 4114
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4115
    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPicker;->a:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 5130
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 5131
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    .line 5133
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 5134
    instance-of v4, v3, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v4, :cond_1

    .line 5135
    move-object v4, v3

    check-cast v4, Lcom/android/settings/widget/RadioButtonPreference;

    .line 5136
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x35d

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500c3

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "network_score"

    .line 3143
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkScoreManager;

    .line 60
    iput-object p1, p0, Lcom/android/settings/network/NetworkScorerPicker;->a:Landroid/net/NetworkScoreManager;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 1080
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 1082
    iget-object p2, p0, Lcom/android/settings/network/NetworkScorerPicker;->a:Landroid/net/NetworkScoreManager;

    invoke-virtual {p2}, Landroid/net/NetworkScoreManager;->getAllValidScorers()Ljava/util/List;

    move-result-object p2

    .line 1110
    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPicker;->a:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    .line 1085
    new-instance v1, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120e2e

    .line 1086
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    .line 1087
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1088
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1090
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 1091
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 2069
    iput-object p0, v1, Lcom/android/settings/widget/RadioButtonPreference;->a:Lcom/android/settings/widget/RadioButtonPreference$a;

    .line 1094
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 1096
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1098
    new-instance v3, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 1099
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkScorerAppData;

    .line 1100
    invoke-virtual {v4}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v5

    .line 1101
    invoke-virtual {v4}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1102
    invoke-virtual {v3, v5}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 1103
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 3069
    iput-object p0, v3, Lcom/android/settings/widget/RadioButtonPreference;->a:Lcom/android/settings/widget/RadioButtonPreference$a;

    .line 1105
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p0, p2}, Lcom/android/settings/network/NetworkScorerPicker;->setHasOptionsMenu(Z)V

    return-object p1
.end method
