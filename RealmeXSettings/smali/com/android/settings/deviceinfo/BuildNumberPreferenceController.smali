.class public Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;
.super Lcom/android/settings/core/a;
.source "BuildNumberPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;


# static fields
.field public static final PREF_FILE:Ljava/lang/String; = "development"

.field public static final PREF_SHOW:Ljava/lang/String; = "show"

.field static final REQUEST_CONFIRM_PASSWORD_FOR_DEV_PREF:I = 0x64

.field static final TAPS_TO_BE_A_DEVELOPER:I = 0x7


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/g$a;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field private mDevHitCountdown:I

.field private mDevHitToast:Landroid/widget/Toast;

.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

.field private mProcessingLastDevHit:Z

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo p2, "user"

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    .line 81
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method

.method private enableDevelopmentSettings()V
    .locals 3

    const/4 v0, 0x0

    .line 260
    iput v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    .line 261
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    .line 262
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;Z)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f12147b

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    .line 268
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public copy()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f12045a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/slices/g;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 91
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 132
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 135
    :cond_0
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    const/16 v1, 0x34f

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p1

    if-nez p1, :cond_2

    .line 140
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v0, [Landroid/util/Pair;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    return v0

    .line 146
    :cond_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/m;->g(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 147
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v0, [Landroid/util/Pair;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    return v0

    .line 152
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    const-string v2, "no_debugging_features"

    invoke-virtual {p1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 153
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 155
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/m;->l(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 157
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 158
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "com.android.settings.action.REQUEST_DEBUG_FEATURES"

    .line 159
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 160
    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 163
    iget-object v1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 168
    :cond_4
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/g$a;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedBySystem:Z

    if-nez p1, :cond_5

    .line 170
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/g$a;

    invoke-static {p1, v2}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    .line 173
    :cond_5
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v0, [Landroid/util/Pair;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    return v0

    .line 178
    :cond_6
    iget p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    const/4 v1, 0x1

    if-lez p1, :cond_b

    sub-int/2addr p1, v1

    .line 179
    iput p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    .line 180
    iget p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    if-nez p1, :cond_8

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    if-nez v2, :cond_8

    add-int/2addr p1, v1

    .line 182
    iput p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    .line 183
    new-instance p1, Lcom/android/settings/password/b;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-direct {p1, v2, v3}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v2, 0x64

    .line 185
    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f12177e

    .line 187
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {p1, v2, v3}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    .line 188
    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    if-nez p1, :cond_7

    .line 192
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "development"

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 193
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "show"

    .line 194
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->enableDevelopmentSettings()V

    .line 198
    :cond_7
    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    .line 199
    invoke-static {p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/app/Activity;)I

    move-result v3

    const/16 v4, 0x350

    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 201
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v5

    const/4 v6, 0x0

    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    xor-int/lit8 v7, p1, 0x1

    .line 198
    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    goto :goto_0

    .line 204
    :cond_8
    iget p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    if-lez p1, :cond_a

    const/4 v2, 0x5

    if-ge p1, v2, :cond_a

    .line 206
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz p1, :cond_9

    .line 207
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 209
    :cond_9
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100052

    iget v4, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    new-array v5, v1, [Ljava/lang/Object;

    .line 212
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 210
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    .line 214
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 217
    :cond_a
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    .line 218
    invoke-static {p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/app/Activity;)I

    move-result v3

    const/16 v4, 0x350

    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 220
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 217
    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    goto :goto_1

    :cond_b
    if-gez p1, :cond_d

    .line 224
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz p1, :cond_c

    .line 225
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 227
    :cond_c
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f12147a

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    .line 229
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 230
    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    .line 231
    invoke-static {p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/app/Activity;)I

    move-result v3

    const/16 v4, 0x350

    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 233
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 230
    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    :cond_d
    :goto_1
    return v1
.end method

.method public isCopyableSlice()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSliceable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/4 p3, 0x0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    return p3

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->enableDevelopmentSettings()V

    .line 252
    :cond_1
    iput-boolean p3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_debugging_features"

    .line 96
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/g$a;

    .line 98
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 98
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedBySystem:Z

    .line 100
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    iput v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    return-void
.end method

.method public setHost(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 86
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public useDynamicSliceSummary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
