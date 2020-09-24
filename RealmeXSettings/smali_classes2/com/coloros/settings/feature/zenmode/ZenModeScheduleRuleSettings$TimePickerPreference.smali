.class Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;
.super Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimePickerPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$a;,
        Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;
    }
.end annotation


# instance fields
.field a:I

.field b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$a;

.field private final c:Landroid/content/Context;

.field private i:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    .line 315
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->c:Landroid/content/Context;

    const/4 p1, 0x0

    .line 316
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->setPersistent(Z)V

    .line 317
    new-instance p1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$1;

    invoke-direct {p1, p0, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$1;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;)I
    .locals 0

    .line 304
    iget p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->i:I

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;)I
    .locals 0

    .line 304
    iget p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->k:I

    return p0
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 345
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 346
    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->i:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 347
    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->k:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 348
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 349
    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->a:I

    if-eqz v1, :cond_0

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->a:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 355
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateSummary_error = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZenModeSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$a;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    iput p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->i:I

    .line 340
    iput p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->k:I

    .line 341
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->a()V

    return-void
.end method
