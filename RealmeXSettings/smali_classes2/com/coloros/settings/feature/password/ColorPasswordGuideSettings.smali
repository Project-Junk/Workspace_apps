.class public Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorPasswordGuideSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 164
    new-instance v0, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-direct {v0}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;->a:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    .line 105
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v0

    .line 106
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const p0, 0x7f1209c7

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const p0, 0x7f1209bd

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    const p0, 0x7f12096e

    goto :goto_0

    :cond_2
    const p0, 0x7f120c4e

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorPasswordGuideSettings"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;->a:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    .line 1130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    new-instance v3, Lcom/coloros/settings/feature/password/controller/ScreenLockPwdPreferenceController;

    invoke-direct {v3, p1}, Lcom/coloros/settings/feature/password/controller/ScreenLockPwdPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    new-instance v3, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;

    invoke-direct {v3, p1}, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    new-instance v4, Lcom/coloros/settings/feature/password/controller/FingerPreferenceController;

    invoke-direct {v4, p1}, Lcom/coloros/settings/feature/password/controller/FingerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    new-instance v4, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;

    invoke-direct {v4, p1}, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1137
    new-instance v4, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v5, "password_guide_other_category"

    invoke-direct {v4, p1, v5}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v4, v3}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v4

    .line 1137
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1141
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    new-instance v4, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;

    invoke-direct {v4, p1}, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    new-instance v4, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v5, "password_guide_finger_face_category"

    invoke-direct {v4, p1, v5}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v4, v3}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v4

    .line 1143
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    new-instance v4, Lcom/coloros/settings/feature/password/controller/SmartLockController;

    invoke-direct {v4, p1}, Lcom/coloros/settings/feature/password/controller/SmartLockController;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    new-instance v4, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v5, "smart_lock_category"

    invoke-direct {v4, p1, v5}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v4, v3}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v4

    .line 1149
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1153
    new-instance v3, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;

    invoke-direct {v3, p1}, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/ar;->a(Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;Ljava/util/List;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2058
    iget-object p1, v1, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1158
    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-object v2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500d9

    return v0
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;->b(Landroid/content/Context;)I

    move-result v0

    .line 100
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_oppo_fingerprint_face_unlock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/al;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f1207fb

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method
