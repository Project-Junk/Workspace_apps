.class public Lcom/coloros/settings/feature/appmanager/AppInfoFeature;
.super Lcom/color/injector/adaptor/g;
.source "AppInfoFeature.java"


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "app_info"
.end annotation


# static fields
.field public static final ARG_USER_ID:Ljava/lang/String; = "userId"

.field private static final FORBID_FORCE_STOP_NAME_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTENT_ACTION_APP_PROTECT_LIST_ACTIVITY:Ljava/lang/String; = "com.oppo.safe.action.APP_PROTECT_LIST_ACTIVITY"

.field private static final KEY_HEAD:Ljava/lang/String; = "header_view"

.field private static final TAG:Ljava/lang/String; = "AppInfoFeature"


# instance fields
.field private mForceStopButton:Landroid/widget/Button;

.field private mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field public mIsAndroidFuction:Z

.field public mMultiAppUserId:I

.field private mOpenButton:Landroid/widget/Button;

.field private mRootView:Landroid/view/View;

.field private mUninstallButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.coloros.safecenter"

    .line 93
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->FORBID_FORCE_STOP_NAME_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$displayPreference$0(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/view/View;)V
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->launchApplication()V

    return-void
.end method

.method private setAppLabelAndIcon(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 9

    .line 260
    iget-object v0, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    instance-of v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    if-eqz v0, :cond_5

    .line 261
    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    check-cast p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 265
    iget-object v0, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    .line 269
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mRootView:Landroid/view/View;

    const v2, 0x7f0a00a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 271
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    const/4 v4, 0x0

    .line 270
    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v2, 0x7f0a009d

    .line 273
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 274
    iget-object v3, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v5, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-virtual {v3, v5}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    .line 275
    iget-object v3, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v3, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0a009f

    .line 277
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 278
    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a00a5

    .line 280
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    .line 282
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 283
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 285
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    const-string v6, "versionCommit"

    .line 287
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 289
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    const-string v8, "versionDate"

    .line 291
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 295
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 296
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v8, 0x2

    if-nez v2, :cond_2

    .line 298
    new-array v2, v8, [Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    aput-object v6, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 300
    :cond_2
    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v0, v1, v4

    aput-object v6, v1, v5

    aput-object v3, v1, v8

    const/4 v0, 0x3

    aput-object v7, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1030
    :cond_3
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12186e

    .line 304
    new-array v2, v5, [Ljava/lang/Object;

    .line 305
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 304
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 307
    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;",
            ")Z"
        }
    .end annotation

    move-object v0, p2

    move-object/from16 v9, p5

    .line 347
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 351
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/a;

    .line 352
    iget-object v3, v9, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->g:Ljava/util/List;

    check-cast v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$a;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :cond_1
    new-instance v10, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 355
    invoke-virtual/range {p5 .. p5}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/SettingsActivity;

    iget-object v6, v9, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object v1, v10

    move-object/from16 v3, p5

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState;II)V

    iput-object v10, v9, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->h:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 357
    iget-object v1, v9, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->h:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;

    move-object v2, p1

    move-object v3, p3

    invoke-direct {v1, p1, v9, p3, p4}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppBatteryPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 7

    .line 116
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "header_view"

    .line 119
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 120
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a007c

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    .line 121
    invoke-static {p1, v0}, Lcom/android/settings/m;->a(Landroid/view/View;Z)V

    .line 122
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0209

    .line 123
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const v2, 0x7f0a01a4

    .line 127
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a0392

    .line 128
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mOpenButton:Landroid/widget/Button;

    .line 129
    iget-object v5, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mOpenButton:Landroid/widget/Button;

    const v6, 0x7f120beb

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 130
    iget-object v5, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mOpenButton:Landroid/widget/Button;

    new-instance v6, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppInfoFeature$HUGHJndvhexvpkpI5Ts7xUvXD-s;

    invoke-direct {v6, p2}, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppInfoFeature$HUGHJndvhexvpkpI5Ts7xUvXD-s;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a03f0

    .line 131
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mForceStopButton:Landroid/widget/Button;

    .line 132
    iget-object v5, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mForceStopButton:Landroid/widget/Button;

    const v6, 0x7f120a1f

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 133
    iget-object v5, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mForceStopButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0574

    .line 135
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mUninstallButton:Landroid/widget/Button;

    .line 136
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mUninstallButton:Landroid/widget/Button;

    const v2, 0x7f121754

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 137
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mUninstallButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0402

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 140
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return v0
.end method

.method public getAppInfoPreferenceScreenResId(I)I
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f15003d

    return p1
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDeviceAdminAddClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 421
    :cond_0
    const-class p1, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    return-object p1
.end method

.method public getForceStopUserHandle(Landroid/os/UserHandle;Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/os/UserHandle;
    .locals 0

    .line 154
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    .line 157
    :cond_0
    iget p1, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mMultiAppUserId:I

    const/16 p2, 0x3e7

    if-ne p1, p2, :cond_1

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    return-object p1

    :cond_1
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    return-object p1
.end method

.method public getIsAndroidFuction()Z
    .locals 1

    .line 404
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 407
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mIsAndroidFuction:Z

    return v0
.end method

.method public getMultiAppUserId()I
    .locals 1

    .line 411
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 414
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mMultiAppUserId:I

    return v0
.end method

.method public getPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string p1, "header_view"

    return-object p1
.end method

.method public getUserId(ILcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)I
    .locals 4

    .line 426
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 433
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    const-string v1, "userId"

    .line 435
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-ne v1, v0, :cond_2

    .line 439
    invoke-static {p1}, Lcom/color/compat/content/IntentNative;->getOppoFlags(Landroid/content/Intent;)I

    move-result v2

    sget v3, Lcom/color/compat/content/IntentNative;->OPPO_FLAG_MUTIL_APP:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 440
    invoke-static {p1}, Lcom/color/compat/content/IntentNative;->getColorUserId(Landroid/content/Intent;)I

    move-result v1

    :cond_2
    if-ne v1, v0, :cond_4

    .line 445
    invoke-virtual {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    .line 1051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result p1

    if-nez p1, :cond_4

    .line 446
    invoke-virtual {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "uid"

    .line 447
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    if-eq p1, v0, :cond_4

    .line 449
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :cond_4
    if-ne v1, v0, :cond_5

    .line 454
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    :cond_5
    return v1
.end method

.method public handleDisableable(ZLcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 211
    :cond_0
    iget-object p1, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 212
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public initUninstallButtonForUserApp(ZLcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 243
    :cond_0
    iget-object v0, p2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    instance-of v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    if-eqz v0, :cond_1

    .line 244
    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    check-cast p2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/coloros/settings/feature/appmanager/b;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method public initUninstallButtonForUserApp1(ZLcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 4

    .line 225
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 228
    :cond_0
    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p2

    .line 229
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 p1, 0x0

    .line 230
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    const/4 v1, 0x1

    .line 231
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 232
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x3e7

    if-nez v2, :cond_1

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_2

    :cond_1
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    if-nez p2, :cond_3

    iget p2, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v3, :cond_3

    :cond_2
    return v1

    :cond_3
    return p1
.end method

.method public initUninstallButtons(ZLcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 5

    .line 179
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 182
    :cond_0
    iget-object v0, p2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    instance-of v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    check-cast v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 184
    iget-object v1, p2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/coloros/settings/utils/al;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 187
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "gray-uninstall"

    invoke-static {v1, v3, v4}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 190
    :cond_2
    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/coloros/settings/utils/al;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_3

    const/4 v0, 0x2

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_3

    return v2

    :cond_3
    return p1
.end method

.method public isAppEncrypted(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 516
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isColorSpecifiedPackage(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 484
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 488
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "default_input_method"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v0, "/"

    .line 492
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 493
    aget-object v0, p1, v1

    :cond_1
    const/4 p1, 0x1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 495
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 496
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p1

    :cond_2
    if-eqz p2, :cond_3

    .line 500
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    return p1

    :cond_3
    if-eqz p2, :cond_4

    .line 504
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/coloros/settings/utils/al;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    return p1

    :cond_4
    return v1
.end method

.method public isForbidForceStop(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 460
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->FORBID_FORCE_STOP_NAME_LIST:Ljava/util/List;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Forbid force stop name list contain, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppInfoFeature"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 471
    :cond_1
    invoke-static {p1}, Lcom/coloros/settings/custom/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    new-instance v0, Landroid/app/OppoWhiteListManager;

    invoke-direct {v0, p1}, Landroid/app/OppoWhiteListManager;-><init>(Landroid/content/Context;)V

    const-string v2, "OppoCustomizeService"

    .line 473
    invoke-virtual {v0, v2, v1}, Landroid/app/OppoWhiteListManager;->getStageProtectListFromPkg(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 475
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 476
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 479
    :cond_2
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "forcestop"

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public onAttach(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Z
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 317
    :cond_0
    :try_start_0
    const-class p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;

    invoke-virtual {p3, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 318
    const-class p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;

    invoke-virtual {p3, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 319
    const-class p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;

    invoke-virtual {p3, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 320
    const-class p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    invoke-virtual {p3, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->setPkgName(Ljava/lang/String;)Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 321
    const-class p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;

    invoke-virtual {p3, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 322
    const-class p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;

    invoke-virtual {p3, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 323
    const-class p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;

    invoke-virtual {p3, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 324
    const-class p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorPictureInPictureDetailPreferenceController;

    .line 325
    invoke-virtual {p3, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorPictureInPictureDetailPreferenceController;

    .line 326
    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorPictureInPictureDetailPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorPictureInPictureDetailPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 329
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppInfoFeature"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public performOpenButton(Landroid/content/Intent;)Z
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 166
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mOpenButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public refreshUi(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->setAppLabelAndIcon(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    return-void
.end method

.method public refreshWhenUiNotRefreshed(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 398
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mIsAndroidFuction:Z

    if-nez v0, :cond_1

    .line 399
    const-class v0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->loadPermissionInfoAsync(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public retrieveAppEntry(Landroid/content/pm/PackageInfo;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Landroid/content/pm/PackageInfo;
    .locals 6

    .line 364
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 368
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getArguments()Landroid/os/Bundle;

    .line 369
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->getUserId(ILcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mMultiAppUserId:I

    .line 370
    iget-object v0, p2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    const-string v1, "AppInfoFeature"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v0, "package"

    .line 373
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 377
    iget-object v3, p2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v3, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v4, 0x80022c0

    iget v5, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mMultiAppUserId:I

    invoke-interface {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 378
    invoke-static {}, Lcom/coloros/b/b;->a()Landroid/content/pm/OppoPackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/OppoPackageManager;->isClosedSuperFirewall()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    .line 379
    invoke-static {v0}, Lcom/coloros/settings/utils/p;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mIsAndroidFuction:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception when retrieving package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    const-string p2, "Missing AppEntry; maybe reinstalling?"

    .line 384
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez v2, :cond_4

    return-object p1

    :cond_4
    return-object v2
.end method

.method public setForceStopButtonEnabled(Z)Z
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public setUninstallButtonEnabled(Z)Z
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public setUninstallText(I)Z
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public showAppEncryptedHintDialog(Landroid/content/Context;)V
    .locals 3

    .line 520
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12138a    # 1.9416874E38f

    .line 524
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 525
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-eqz v1, :cond_1

    const v1, 0x7f121389

    .line 526
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    const v1, 0x7f121388

    .line 528
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    :goto_0
    const v1, 0x7f1213a6

    .line 530
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coloros/settings/feature/appmanager/AppInfoFeature$1;

    invoke-direct {v2, p0, p1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature$1;-><init>(Lcom/coloros/settings/feature/appmanager/AppInfoFeature;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    .line 538
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 539
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 540
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method
