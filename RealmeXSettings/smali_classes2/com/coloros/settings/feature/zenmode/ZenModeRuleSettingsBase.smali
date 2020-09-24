.class public abstract Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;
.super Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;
.source "ZenModeRuleSettingsBase.java"


# static fields
.field protected static final a:Z


# instance fields
.field protected b:Z

.field protected c:Landroid/service/notification/ZenModeConfig$ZenRule;

.field private j:Ljava/lang/String;

.field private k:Z

.field private p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private q:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

.field private r:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    sput-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f1212da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f1212dc

    .line 387
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f1212db

    .line 388
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f121bab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f121bad

    .line 391
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f121bac

    .line 392
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f1212d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f1212d8

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f1212d7

    .line 396
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 397
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v0, 0x7f1212d5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 393
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v0, 0x7f121baa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 389
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v0, 0x7f1212d9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_2
    return-object p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;)Z
    .locals 1

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n()V
    .locals 0

    return-void
.end method

.method private q()Z
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->f:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 326
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mRule="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->r()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private r()V
    .locals 3

    .line 355
    iget-boolean v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->k:Z

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f121b68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private s()V
    .locals 2

    .line 363
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private t()V
    .locals 2

    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->b:Z

    .line 372
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->s()V

    .line 373
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->e()V

    .line 374
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->q:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->b:Z

    return-void
.end method


# virtual methods
.method protected final a(Landroid/net/Uri;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 258
    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    const/4 p1, 0x0

    .line 259
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 260
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->o()Z

    return-void
.end method

.method public final a(Z)V
    .locals 6

    .line 217
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a:Z

    const-string v1, "ZenModeSettings"

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onSwitchChanged "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->b:Z

    if-eqz v0, :cond_1

    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-ne p1, v0, :cond_2

    return-void

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/16 v2, 0xb0

    invoke-static {v0, v2, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 222
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onSwitchChanged enabled="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    const/4 v1, 0x0

    .line 224
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 225
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->o()Z

    if-eqz p1, :cond_4

    .line 229
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v0, 0x7f121bbd

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->r:Landroid/widget/Toast;

    .line 230
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->r:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 233
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->r:Landroid/widget/Toast;

    if-eqz p1, :cond_5

    .line 234
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 238
    :cond_5
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 239
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    .line 240
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v1

    .line 241
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    const-string v4, "0"

    const-string v5, "_"

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f121baa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zenmodeScheduleRuleWeeknightsNameAndState"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 246
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zenmodeScheduleRuleWeekendNameAndState"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    if-eqz v1, :cond_b

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    move-object v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zenmodeEventRuleNameAndState"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const-string v1, "20012"

    const-string v2, "zenmode_settings"

    invoke-static {v0, v1, v2, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected abstract a(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
.end method

.method protected abstract c()V
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected abstract e()V
.end method

.method protected final f()V
    .locals 0

    return-void
.end method

.method protected final g()V
    .locals 2

    .line 270
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->t()V

    :cond_1
    return-void
.end method

.method protected final h()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 88
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 93
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a:Z

    const-string v1, "ZenModeSettings"

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onCreate getIntent()="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "No intent"

    .line 95
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->r()V

    return-void

    :cond_1
    const-string v0, "rule_id"

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->j:Ljava/lang/String;

    .line 101
    sget-boolean p1, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mRuleId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->q()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    .line 106
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->setHasOptionsMenu(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c()V

    .line 110
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "rule_name"

    .line 111
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 112
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    new-instance v2, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$1;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$1;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;)V

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "zen_mode"

    .line 124
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->q:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    .line 126
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->q:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    const v2, 0x7f121b49

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 126
    invoke-virtual {v1, v2, v3}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->a(ILjava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->q:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    const v2, 0x7f121b48

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->a(ILjava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->q:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    const v2, 0x7f121b4a

    const/4 v3, 0x2

    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 129
    invoke-virtual {v1, v2, v3}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->a(ILjava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->q:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    new-instance v2, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$2;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$2;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;)V

    .line 1103
    iput-object v2, v1, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->a:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$a;

    if-eqz v0, :cond_4

    .line 149
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->q:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    if-eqz v1, :cond_4

    .line 150
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 153
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->o()Z

    .line 155
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->q:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->setOrder(I)V

    .line 156
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->q:Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference;->setDependency(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 294
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeSettings"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x7f0e0022

    .line 295
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 184
    invoke-super {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 300
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onOptionsItemSelected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a01da

    if-ne v0, v1, :cond_2

    .line 302
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/16 v0, 0xae

    invoke-static {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1335
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121b12

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1336
    invoke-virtual {p0, v0, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120491

    const/4 v2, 0x0

    .line 1337
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121b11

    new-instance v2, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$3;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$3;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;)V

    .line 1338
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1347
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    const v0, 0x102000b

    .line 1348
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    .line 1350
    invoke-virtual {p1, v0}, Landroid/view/View;->setTextDirection(I)V

    :cond_1
    return v1

    .line 306
    :cond_2
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 161
    invoke-super {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->onResume()V

    .line 163
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->t()V

    return-void
.end method
