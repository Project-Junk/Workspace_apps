.class public Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;
.super Lcom/android/settings/system/ResetDashboardFragment;
.source "RecoveryDataMainFragment.java"

# interfaces
.implements Lcom/coloros/settings/feature/othersettings/recover/h;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final a:Ljava/lang/String; = "RecoveryDataMainFragment"


# instance fields
.field private b:Lcom/coloros/settings/feature/othersettings/recover/g;

.field private c:Lcom/coloros/settings/feature/othersettings/recover/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/system/ResetDashboardFragment;-><init>()V

    return-void
.end method

.method private synthetic c()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->b:Lcom/coloros/settings/feature/othersettings/recover/g;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->c:Lcom/coloros/settings/feature/othersettings/recover/j;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Lcom/coloros/settings/feature/othersettings/recover/j;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$Eibd2xFG9Mgt8_d898AJPaC_g9A(Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->c()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 1088
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    new-instance v2, Lcom/coloros/settings/feature/othersettings/recover/ColorClearSettingPreference;

    invoke-direct {v2, p1, p0}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearSettingPreference;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    new-instance v2, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;

    invoke-direct {v2, p1, p0}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    new-instance v2, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAllDataPreferenceController;

    invoke-direct {v2, p1, p0}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAllDataPreferenceController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    new-instance v2, Lcom/coloros/settings/feature/othersettings/recover/ColorClearContactsPreferenceController;

    invoke-direct {v2, p1, p0}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearContactsPreferenceController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;)V

    .line 1094
    new-instance v3, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;

    invoke-direct {v3, p1, p0, v0}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 1095
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    new-instance v0, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v4, "category_clear_contacts_mms"

    invoke-direct {v0, p1, v4}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/android/settingslib/core/a;

    const/4 v4, 0x0

    aput-object v2, p1, v4

    const/4 v2, 0x1

    aput-object v3, p1, v2

    .line 1098
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p1

    .line 1097
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final a(Lcom/coloros/settings/feature/othersettings/recover/j;)V
    .locals 7

    .line 250
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2267
    :cond_0
    new-instance v1, Lcom/android/settings/password/b;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v2, 0x37

    .line 2271
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/coloros/settings/feature/othersettings/recover/j;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120507

    .line 2272
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 2270
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->c:Lcom/coloros/settings/feature/othersettings/recover/j;

    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->b:Lcom/coloros/settings/feature/othersettings/recover/g;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Lcom/coloros/settings/feature/othersettings/recover/j;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    .line 68
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1500bb

    return v0

    :cond_0
    const v0, 0x7f1500ba

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 p3, 0x37

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 126
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$RecoveryDataMainFragment$Eibd2xFG9Mgt8_d898AJPaC_g9A;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$RecoveryDataMainFragment$Eibd2xFG9Mgt8_d898AJPaC_g9A;-><init>(Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/system/ResetDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Lcom/coloros/settings/feature/othersettings/recover/g;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/settings/feature/othersettings/recover/g;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->b:Lcom/coloros/settings/feature/othersettings/recover/g;

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 115
    invoke-super {p0}, Lcom/android/settings/system/ResetDashboardFragment;->onDestroy()V

    .line 116
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;->b:Lcom/coloros/settings/feature/othersettings/recover/g;

    if-eqz v0, :cond_3

    .line 1252
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/g;->b:Lcom/coloros/c/a/a/a;

    if-eqz v1, :cond_3

    .line 1253
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/g;->b:Lcom/coloros/c/a/a/a;

    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    .line 1379
    sget-boolean v3, Lcom/coloros/c/a/a/a;->a:Z

    if-eqz v3, :cond_0

    .line 1380
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onDestory this = "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FindPhoneLogoutControl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    .line 1382
    iput-boolean v3, v1, Lcom/coloros/c/a/a/a;->h:Z

    if-eqz v2, :cond_1

    .line 1384
    invoke-virtual {v1, v2}, Lcom/coloros/c/a/a/a;->a(Landroid/content/Context;)V

    .line 1386
    :cond_1
    iget-object v2, v1, Lcom/coloros/c/a/a/a;->f:Ljava/util/HashMap;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1387
    iget-object v2, v1, Lcom/coloros/c/a/a/a;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1388
    iput-object v3, v1, Lcom/coloros/c/a/a/a;->f:Ljava/util/HashMap;

    .line 1390
    :cond_2
    iput-object v3, v1, Lcom/coloros/c/a/a/a;->b:Landroid/content/Context;

    .line 1391
    iput-object v3, v1, Lcom/coloros/c/a/a/a;->g:Lcom/coloros/c/a/a/a$a;

    .line 1392
    iput-object v3, v1, Lcom/coloros/c/a/a/a;->e:Landroid/os/Messenger;

    .line 1254
    iput-object v3, v0, Lcom/coloros/settings/feature/othersettings/recover/g;->b:Lcom/coloros/c/a/a/a;

    :cond_3
    return-void
.end method

.method public shouldSetDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
