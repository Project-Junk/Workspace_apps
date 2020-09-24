.class public Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;
.super Lcom/coloros/settings/feature/storage/controller/b;
.source "ColorVolumeTransferController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;
    }
.end annotation


# instance fields
.field private d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private e:Z

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/storage/sdcard/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/settings/feature/storage/sdcard/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroidx/preference/PreferenceCategory;

.field private l:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private m:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/storage/VolumeInfo;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/controller/b;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/storage/VolumeInfo;)V

    .line 86
    iput-boolean p3, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->e:Z

    .line 87
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->m:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 218
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic a(Lcom/coloros/settings/widget/preference/SettingSwitchPreference;Ljava/lang/String;Ljava/lang/Boolean;Lcom/coloros/settings/feature/storage/sdcard/a;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p5, 0x1

    .line 221
    invoke-virtual {p1, p5}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 11056
    iget-object p1, p4, Lcom/coloros/settings/feature/storage/sdcard/a;->f:Ljava/lang/String;

    .line 222
    invoke-direct {p0, p2, p3, p1}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 9

    .line 231
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, p3, v1}, Lcom/coloros/settings/feature/storage/b/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 233
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/coloros/settings/feature/storage/b/b;->b:Ljava/lang/String;

    sget-object v6, Lcom/coloros/settings/feature/storage/b/b;->a:Ljava/lang/String;

    sget-object v7, Lcom/coloros/settings/feature/storage/b/b;->d:Ljava/lang/String;

    sget-object v8, Lcom/coloros/settings/feature/storage/b/b;->c:Ljava/lang/String;

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 8

    .line 247
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->h:Ljava/util/List;

    .line 6255
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/b/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6256
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->m:Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_0

    .line 6257
    new-instance p1, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->m:Landroidx/preference/PreferenceCategory;

    .line 6258
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->m:Landroidx/preference/PreferenceCategory;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setOrder(I)V

    .line 6259
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->m:Landroidx/preference/PreferenceCategory;

    const v0, 0x7f121357

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setTitle(I)V

    .line 6261
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->m:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 6262
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->c:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->m:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 6263
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->c:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->m:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 6264
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->h:Ljava/util/List;

    new-instance v0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$1;-><init>(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6269
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->i:Ljava/util/Map;

    .line 6272
    iget-boolean p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->f:Z

    if-eqz p1, :cond_1

    .line 6273
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->m:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 6276
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->j:Ljava/util/List;

    .line 6277
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/storage/sdcard/a;

    .line 7096
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/sdcard/a;->e:Ljava/lang/String;

    .line 8056
    iget-object v2, v0, Lcom/coloros/settings/feature/storage/sdcard/a;->f:Ljava/lang/String;

    .line 6280
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6281
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->i:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6282
    new-instance v3, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v4, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 8088
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/sdcard/a;->d:Ljava/lang/String;

    .line 6283
    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 9080
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/sdcard/a;->c:Landroid/graphics/drawable/Drawable;

    .line 6284
    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 6285
    invoke-virtual {v3, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 10064
    iget v4, v0, Lcom/coloros/settings/feature/storage/sdcard/a;->a:I

    .line 6286
    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOrder(I)V

    .line 6287
    invoke-virtual {v3, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 6288
    iget-object v4, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    .line 10072
    iget v5, v0, Lcom/coloros/settings/feature/storage/sdcard/a;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v6

    .line 6288
    :goto_1
    invoke-static {v4, v2, v7}, Lcom/coloros/settings/feature/storage/b/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 6290
    iget-object v5, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->m:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 6291
    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 6292
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->i:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10316
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10317
    new-instance v0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->g:Landroid/os/Handler;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;-><init>(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 10318
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 10319
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 10321
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method private a()Z
    .locals 3

    .line 92
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/al;->e()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.sncontent.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic b()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/b/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    new-instance v1, Lcom/coloros/settings/feature/storage/controller/-$$Lambda$ColorVolumeTransferController$jeyyTd0iOPgZ59KQlWltMPqnrAI;

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/feature/storage/controller/-$$Lambda$ColorVolumeTransferController$jeyyTd0iOPgZ59KQlWltMPqnrAI;-><init>(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$25Bgsre8oGphwZWcpS-QiWUnc7A(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;Lcom/coloros/settings/widget/preference/SettingSwitchPreference;Ljava/lang/String;Ljava/lang/Boolean;Lcom/coloros/settings/feature/storage/sdcard/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a(Lcom/coloros/settings/widget/preference/SettingSwitchPreference;Ljava/lang/String;Ljava/lang/Boolean;Lcom/coloros/settings/feature/storage/sdcard/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$9vxP9qB-5ngjytz4QTIIm3t1m_I(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$NDTEm4eIzse6CRRizLcMnfsSnng(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->b()V

    return-void
.end method

.method public static synthetic lambda$jeyyTd0iOPgZ59KQlWltMPqnrAI(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 110
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/storage/controller/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 111
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1116
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->k:Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_2

    .line 1117
    new-instance p1, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->k:Landroidx/preference/PreferenceCategory;

    .line 1118
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->k:Landroidx/preference/PreferenceCategory;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setOrder(I)V

    .line 1119
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 1120
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->c:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 1123
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 1125
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->l:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 1126
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1127
    new-instance p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->l:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 1128
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->l:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const v0, 0x7f121364

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(I)V

    .line 1129
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->l:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1130
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->c:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 1131
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->k:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->l:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 1134
    iget-boolean p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->f:Z

    if-eqz p1, :cond_1

    .line 1135
    new-instance p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 1136
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const v0, 0x7f121504

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(I)V

    .line 1137
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    const v1, 0x7f080892

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1138
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oppo.SHOW_SDCARD_SCREEN"

    .line 1139
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 1140
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1141
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setIntent(Landroid/content/Intent;)V

    .line 1240
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/b/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1243
    new-instance p1, Lcom/coloros/settings/feature/storage/controller/-$$Lambda$ColorVolumeTransferController$NDTEm4eIzse6CRRizLcMnfsSnng;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/storage/controller/-$$Lambda$ColorVolumeTransferController$NDTEm4eIzse6CRRizLcMnfsSnng;-><init>(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;

    .line 163
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .line 172
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 173
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->i:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 175
    check-cast p2, Ljava/lang/Boolean;

    .line 176
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/coloros/settings/feature/storage/sdcard/a;

    .line 3056
    iget-object v0, v7, Lcom/coloros/settings/feature/storage/sdcard/a;->f:Ljava/lang/String;

    .line 4032
    iget v2, v7, Lcom/coloros/settings/feature/storage/sdcard/a;->g:I

    const/4 v8, 0x0

    if-ne v2, v1, :cond_5

    .line 179
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 180
    move-object v4, p1

    check-cast v4, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4203
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 5040
    iget-object p1, v7, Lcom/coloros/settings/feature/storage/sdcard/a;->h:Ljava/lang/String;

    .line 5048
    iget-object p2, v7, Lcom/coloros/settings/feature/storage/sdcard/a;->i:Ljava/lang/String;

    .line 4206
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4210
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4211
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 4213
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4214
    invoke-virtual {v0, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    :cond_2
    const p1, 0x7f120491

    .line 4216
    sget-object p2, Lcom/coloros/settings/feature/storage/controller/-$$Lambda$ColorVolumeTransferController$9vxP9qB-5ngjytz4QTIIm3t1m_I;->INSTANCE:Lcom/coloros/settings/feature/storage/controller/-$$Lambda$ColorVolumeTransferController$9vxP9qB-5ngjytz4QTIIm3t1m_I;

    .line 4217
    invoke-virtual {v0, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f12081d

    new-instance v0, Lcom/coloros/settings/feature/storage/controller/-$$Lambda$ColorVolumeTransferController$25Bgsre8oGphwZWcpS-QiWUnc7A;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/storage/controller/-$$Lambda$ColorVolumeTransferController$25Bgsre8oGphwZWcpS-QiWUnc7A;-><init>(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;Lcom/coloros/settings/widget/preference/SettingSwitchPreference;Ljava/lang/String;Ljava/lang/Boolean;Lcom/coloros/settings/feature/storage/sdcard/a;)V

    .line 4219
    invoke-virtual {p1, p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 4223
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 4224
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 4225
    invoke-static {p1}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;)V

    :cond_3
    return v8

    .line 183
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v5, p1, v0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return v1

    .line 6032
    :cond_5
    iget p1, v7, Lcom/coloros/settings/feature/storage/sdcard/a;->g:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    .line 6048
    iget-object p1, v7, Lcom/coloros/settings/feature/storage/sdcard/a;->i:Ljava/lang/String;

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 189
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 192
    :cond_6
    invoke-direct {p0, v5, p2, v0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_7
    invoke-direct {p0, v5, p2, v0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_8
    :goto_0
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->l:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1301
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p1, :cond_0

    .line 1304
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oppo.filemanager.akeytomove.AKeyToMoveActivity"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x24000000

    .line 1305
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1307
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "20012"

    const-string v3, "event_transfer_sdcard_settings_jump"

    .line 2313
    invoke-static {v0, v2, v3, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1309
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ColorVolumeTransferController"

    const-string v0, "start intentOneKeyMove: ActivityNotFoundException"

    .line 1311
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
