.class public Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;
.super Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;
.source "ScreenReminderNotificationFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/coloros/settings/ColorSubSettings$a;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field private e:Landroid/content/ContentResolver;

.field private f:Lcom/coloros/settings/feature/display/screenoffreminder/notification/AodNotificationTipsPreference;

.field private g:Landroid/app/Activity;

.field private h:Landroidx/preference/PreferenceCategory;

.field private i:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private j:Z

.field private k:Landroid/content/pm/PackageManager;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/os/Handler;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->o:Ljava/util/List;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    const-string v2, "key_realme_aod_notification_icon"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 300
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->a:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->d:Z

    if-nez v0, :cond_1

    const-string v0, "Setting_AodEnableImmediate"

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e:Landroid/content/ContentResolver;

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    .line 309
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->a:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 310
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e:Landroid/content/ContentResolver;

    const-string v0, "key_realme_aod_signature"

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    return-void
.end method

.method private b()V
    .locals 6

    .line 315
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x2

    const-string v2, "realme_aod_notification_black_pkg"

    if-lez v0, :cond_2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 317
    :goto_0
    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 318
    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 319
    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 321
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 324
    :cond_1
    iget-object v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e:Landroid/content/ContentResolver;

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v3, v2, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e:Landroid/content/ContentResolver;

    const-string v3, ""

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private c()V
    .locals 5

    .line 333
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "key_realme_aod_clock_mode"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->b:Z

    .line 336
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e:Landroid/content/ContentResolver;

    const-string v4, "key_realme_aod_signature"

    invoke-static {v0, v4, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->a:Z

    .line 338
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e:Landroid/content/ContentResolver;

    const-string v4, "key_aod_clock_date"

    invoke-static {v0, v4, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->c:Z

    .line 340
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e:Landroid/content/ContentResolver;

    const-string v4, "key_realme_aod_notification_icon"

    invoke-static {v0, v4, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    .line 342
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e:Landroid/content/ContentResolver;

    const-string v4, "key_realme_aod_battery"

    invoke-static {v0, v4, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_4

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    iput-boolean v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->d:Z

    .line 344
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    if-eqz v0, :cond_5

    .line 345
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e:Landroid/content/ContentResolver;

    const-string v3, "realme_aod_notification_black_pkg"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, ","

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 349
    array-length v1, v0

    if-lez v1, :cond_5

    .line 350
    array-length v1, v0

    :goto_5
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 351
    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method private synthetic d()V
    .locals 7

    .line 4250
    invoke-static {}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a()Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->k:Landroid/content/pm/PackageManager;

    .line 5074
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5075
    invoke-static {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 5076
    invoke-static {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(Ljava/util/List;)V

    .line 5079
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 5081
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 5082
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5083
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.systemui"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5086
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4251
    :cond_1
    invoke-static {}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a()Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4254
    sget-object v1, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4255
    invoke-static {}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a()Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4258
    invoke-static {}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a()Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 4259
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4261
    invoke-static {}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a()Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->b(Ljava/util/List;)V

    .line 243
    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->l:Ljava/util/List;

    .line 244
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->m:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderNotificationFragment$W-v-sNquFr7g4o-OdO130i-qUlk;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderNotificationFragment$W-v-sNquFr7g4o-OdO130i-qUlk;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic e()V
    .locals 5

    .line 5267
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->g:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 5271
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->i:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 5272
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->l:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 5273
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;

    .line 5274
    iget-object v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->o:Ljava/util/List;

    .line 6048
    iget-object v2, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->b:Ljava/lang/String;

    .line 5274
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5276
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    if-nez v0, :cond_2

    .line 5277
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5279
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 5280
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;

    .line 5281
    new-instance v3, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;

    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->g:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 7048
    iget-object v4, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->b:Ljava/lang/String;

    .line 5282
    invoke-virtual {v3, v4}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 7052
    iget-object v4, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->a:Ljava/lang/String;

    .line 5283
    invoke-virtual {v3, v4}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 7056
    iget-object v2, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->c:Landroid/graphics/drawable/Drawable;

    .line 5284
    invoke-virtual {v3, v2}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 5285
    invoke-virtual {v3, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 5286
    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    .line 7122
    iput-object v2, v3, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->a:Ljava/util/List;

    .line 5287
    invoke-virtual {v3, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->setSelectable(Z)V

    const/4 v2, 0x1

    .line 5288
    invoke-virtual {v3, v2}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->setEnabled(Z)V

    .line 5289
    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 5291
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->notifyDependencyChange(Z)V

    .line 5293
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->f:Lcom/coloros/settings/feature/display/screenoffreminder/notification/AodNotificationTipsPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/AodNotificationTipsPreference;->a(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic lambda$3fpE5FQChlhP4SGss6nd_2x6Mxs(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->d()V

    return-void
.end method

.method public static synthetic lambda$W-v-sNquFr7g4o-OdO130i-qUlk(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public onBindPreferences()V
    .locals 0

    .line 179
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onBindPreferences()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 111
    invoke-static {}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->a()Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;

    move-result-object v0

    .line 4037
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->b:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 4038
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 4040
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->b:Landroid/os/HandlerThread;

    .line 4041
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 4042
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4044
    new-instance v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b$a;

    invoke-direct {v2, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b$a;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->c:Landroid/os/Handler;

    goto :goto_0

    .line 4046
    :cond_1
    new-instance v1, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b$a;

    invoke-direct {v1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b$a;-><init>()V

    iput-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->c:Landroid/os/Handler;

    .line 112
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const p3, 0x102000a

    .line 90
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    if-eqz p3, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 93
    invoke-virtual {p3, p2, v0, p2, p2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1122
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->g:Landroid/app/Activity;

    .line 1123
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->g:Landroid/app/Activity;

    instance-of v0, p3, Lcom/coloros/settings/ColorSubSettings;

    if-eqz v0, :cond_1

    .line 1124
    check-cast p3, Lcom/coloros/settings/ColorSubSettings;

    .line 2034
    iput-object p0, p3, Lcom/coloros/settings/ColorSubSettings;->a:Lcom/coloros/settings/ColorSubSettings$a;

    .line 1126
    :cond_1
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->g:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p3

    .line 1127
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    .line 1129
    invoke-virtual {p3, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1130
    invoke-virtual {p3, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1132
    :cond_2
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->g:Landroid/app/Activity;

    invoke-static {p3}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const p3, 0x7f150109

    .line 98
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->addPreferencesFromResource(I)V

    .line 99
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->g:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->e:Landroid/content/ContentResolver;

    .line 100
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->k:Landroid/content/pm/PackageManager;

    .line 101
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->m:Landroid/os/Handler;

    .line 2147
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0b0002

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    .line 2148
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "checkTheme: globalClockType is "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScreenReminderNotificationFragment"

    invoke-static {v2, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p3, v1, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    move p2, v1

    .line 2149
    :cond_3
    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->j:Z

    const-string p2, "key_aod_preference_category"

    .line 2153
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->h:Landroidx/preference/PreferenceCategory;

    const-string p2, "key_realme_all"

    .line 2154
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->i:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 2155
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->i:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p2, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p2, "key_hint_summary"

    .line 2156
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/AodNotificationTipsPreference;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->f:Lcom/coloros/settings/feature/display/screenoffreminder/notification/AodNotificationTipsPreference;

    .line 104
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->c()V

    .line 2241
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->f:Lcom/coloros/settings/feature/display/screenoffreminder/notification/AodNotificationTipsPreference;

    invoke-virtual {p2, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/AodNotificationTipsPreference;->a(Z)V

    .line 2242
    invoke-static {}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->a()Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;

    move-result-object p2

    new-instance p3, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderNotificationFragment$3fpE5FQChlhP4SGss6nd_2x6Mxs;

    invoke-direct {p3, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderNotificationFragment$3fpE5FQChlhP4SGss6nd_2x6Mxs;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;)V

    .line 3056
    iget-object p2, p2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->c:Landroid/os/Handler;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 117
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onDestroy()V

    .line 118
    invoke-static {}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->a()Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;

    move-result-object v0

    .line 4051
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    .line 4052
    iput-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->b:Landroid/os/HandlerThread;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->g:Landroid/app/Activity;

    .line 138
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 236
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 185
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->i:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 190
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-nez p2, :cond_1

    .line 192
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->o:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->notifyDependencyChange(Z)V

    .line 196
    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    .line 197
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->a(Z)V

    goto :goto_1

    .line 198
    :cond_2
    instance-of v0, p1, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;

    if-eqz v0, :cond_4

    .line 199
    check-cast p1, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;

    .line 200
    invoke-virtual {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ScreenReminderNotificationFragment"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    .line 204
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 205
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 206
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    if-nez p1, :cond_4

    .line 207
    iput-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    .line 208
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->i:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-boolean p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 209
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->a(Z)V

    goto :goto_1

    .line 213
    :cond_3
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 214
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->o:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_4

    .line 216
    iput-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    .line 217
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->i:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-boolean p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 218
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->p:Z

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->a(Z)V

    .line 223
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->b()V

    return v2
.end method

.method public onResume()V
    .locals 2

    .line 229
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onResume()V

    .line 230
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->g:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderNotificationFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 169
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 174
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onStop()V

    return-void
.end method
