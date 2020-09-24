.class public Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;
.super Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;
.source "ZenModeAddRulesFragment.java"

# interfaces
.implements Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$a;


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:Z

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:J

.field private static m:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private static n:I


# instance fields
.field private A:I

.field protected d:Ljava/lang/String;

.field protected e:Landroid/content/Context;

.field protected f:Z

.field protected g:Landroid/app/AutomaticZenRule;

.field protected h:Ljava/lang/String;

.field private final o:Ljava/text/SimpleDateFormat;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/view/MenuItem;

.field private r:Ljava/lang/String;

.field private s:Lcom/coloros/settings/feature/zenmode/b;

.field private t:Lcom/color/support/preference/ColorInputPreference;

.field private u:Lcom/android/settings/notification/y;

.field private v:Lcom/color/support/preference/ColorMultiSelectListPreference;

.field private w:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    .line 62
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a:[I

    .line 71
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->b:[I

    .line 81
    invoke-static {}, Lcom/coloros/settings/utils/al;->h()Z

    move-result v0

    sput-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->c:Z

    const-string v0, "days"

    .line 96
    sput-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->j:Ljava/lang/String;

    const-string v0, "zen_mode_rules_title"

    .line 97
    sput-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->k:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 98
    sput-wide v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->l:J

    const/4 v0, 0x0

    .line 100
    sput v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->n:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1216b7
        0x7f1216a8
        0x7f1216bc
        0x7f1216be
        0x7f1216b9
        0x7f1216a6
        0x7f1216aa
    .end array-data

    :array_1
    .array-data 4
        0x7f1216b7
        0x7f1216a8
        0x7f1216bc
        0x7f1216be
        0x7f1216b9
        0x7f1216a6
        0x7f1216aa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;-><init>()V

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 85
    iput-boolean v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->f:Z

    .line 87
    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->h:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->o:Ljava/text/SimpleDateFormat;

    const/16 v0, 0x7d0

    .line 121
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->x:I

    const/16 v0, 0x16

    .line 122
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->y:I

    const/4 v0, 0x7

    .line 123
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->z:I

    .line 124
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->A:I

    return-void
.end method

.method private static a(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, p0

    move v2, v0

    .line 328
    :goto_0
    sget-object v3, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->b:[I

    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 329
    sget-object v4, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a:[I

    aget v3, v3, v1

    aput v3, v4, v2

    .line 330
    sget-object v3, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    sget-object v4, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->b:[I

    aget v4, v4, v1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p0, :cond_1

    .line 335
    sget-object v1, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a:[I

    sget-object v3, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->b:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 336
    sget-object v1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    sget-object v3, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->b:[I

    aget v3, v3, v0

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(Landroid/app/AutomaticZenRule;)V
    .locals 4

    .line 518
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    .line 519
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 520
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "rule_name"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object p1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "rule_repeat"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "rule_start_time"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rule_end_time"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e:Landroid/content/Context;

    const-string v0, "20012"

    const-string v2, "zen_mode_rule"

    const/4 v3, 0x1

    invoke-static {p1, v0, v2, v1, v3}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->d()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;Ljava/util/HashSet;)[I
    .locals 6

    .line 11312
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 11314
    :goto_0
    sget-object v3, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 11315
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 11316
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 11317
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11318
    sget-object v5, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    aget v5, v5, v1

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic b()Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1

    .line 60
    sget-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->m:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method private c()V
    .locals 7

    .line 192
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/color/support/preference/ColorMultiSelectListPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->v:Lcom/color/support/preference/ColorMultiSelectListPreference;

    .line 194
    sget-object v1, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move v3, v2

    .line 195
    :goto_0
    sget-object v4, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->v:Lcom/color/support/preference/ColorMultiSelectListPreference;

    invoke-virtual {v3, v1}, Lcom/color/support/preference/ColorMultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 199
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->v:Lcom/color/support/preference/ColorMultiSelectListPreference;

    invoke-virtual {v3, v1}, Lcom/color/support/preference/ColorMultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 4284
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4285
    sget-object v3, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->m:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v3, :cond_3

    move v3, v2

    .line 4286
    :goto_1
    sget-object v4, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->m:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v4, v4

    if-ge v3, v4, :cond_3

    move v4, v2

    .line 4287
    :goto_2
    sget-object v5, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 4288
    sget-object v5, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    aget v5, v5, v4

    sget-object v6, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->m:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    aget v6, v6, v3

    if-ne v5, v6, :cond_1

    .line 4289
    iget-object v5, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4292
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initRepeatDays: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ZenModeAddRules"

    invoke-static {v5, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4295
    :cond_3
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->v:Lcom/color/support/preference/ColorMultiSelectListPreference;

    invoke-virtual {v3, v1}, Lcom/color/support/preference/ColorMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 4297
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->v:Lcom/color/support/preference/ColorMultiSelectListPreference;

    new-instance v3, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$2;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$2;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;)V

    invoke-virtual {v1, v3}, Lcom/color/support/preference/ColorMultiSelectListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "schedule_time_settings"

    .line 208
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->w:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;

    .line 209
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->w:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;

    sget-object v3, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->m:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 5269
    iput-object v3, v1, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 6265
    iput-object p0, v1, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->b:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$a;

    .line 212
    sget-object v1, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorInputPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->t:Lcom/color/support/preference/ColorInputPreference;

    .line 213
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->t:Lcom/color/support/preference/ColorInputPreference;

    .line 7226
    iget-object v0, v0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->t:Lcom/color/support/preference/ColorInputPreference;

    .line 8226
    iget-object v0, v0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const/4 v1, 0x6

    .line 214
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setImeOptions(I)V

    .line 215
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->t:Lcom/color/support/preference/ColorInputPreference;

    .line 9226
    iget-object v0, v0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    const/4 v1, 0x1

    .line 215
    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->x:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->t:Lcom/color/support/preference/ColorInputPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorInputPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private d()V
    .locals 8

    .line 455
    sget-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->m:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v0, :cond_5

    .line 456
    array-length v1, v0

    if-lez v1, :cond_5

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 459
    :goto_0
    sget-object v5, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 460
    sget-object v5, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    aget v5, v5, v4

    move v6, v3

    .line 461
    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_2

    .line 462
    aget v7, v0, v6

    if-ne v5, v7, :cond_1

    const/4 v6, 0x7

    .line 463
    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 464
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 465
    iget-object v5, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e:Landroid/content/Context;

    const v6, 0x7f12161e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_0
    iget-object v5, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->o:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 472
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 475
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->r:Ljava/lang/String;

    .line 476
    array-length v0, v0

    iget v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->A:I

    if-ne v0, v2, :cond_4

    .line 477
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->v:Lcom/color/support/preference/ColorMultiSelectListPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f121b73

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMultiSelectListPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 479
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->v:Lcom/color/support/preference/ColorMultiSelectListPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMultiSelectListPreference;->a(Ljava/lang/CharSequence;)V

    .line 482
    :goto_3
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->v:Lcom/color/support/preference/ColorMultiSelectListPreference;

    invoke-virtual {v0, v3}, Lcom/color/support/preference/ColorMultiSelectListPreference;->notifyDependencyChange(Z)V

    return-void

    .line 488
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->v:Lcom/color/support/preference/ColorMultiSelectListPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e:Landroid/content/Context;

    const v2, 0x7f121b74

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMultiSelectListPreference;->a(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->v:Lcom/color/support/preference/ColorMultiSelectListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMultiSelectListPreference;->notifyDependencyChange(Z)V

    return-void
.end method

.method private e()Z
    .locals 2

    .line 498
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .line 502
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ruleID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0e001f

    return v0
.end method

.method public final a(II)V
    .locals 2

    .line 382
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->c:Z

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartTimeChanged_hour = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeAddRules"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$3;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 401
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final b(II)V
    .locals 2

    .line 405
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->c:Z

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEndTimeChanged_hour = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeAddRules"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$4;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 425
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 129
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->setHasOptionsMenu(Z)V

    const v1, 0x7f15014d

    .line 131
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->addPreferencesFromResource(I)V

    .line 132
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e:Landroid/content/Context;

    .line 133
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/b;->a()Lcom/coloros/settings/feature/zenmode/b;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->s:Lcom/coloros/settings/feature/zenmode/b;

    .line 134
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    sub-int/2addr v2, v0

    if-eqz v1, :cond_0

    const-string v3, "bn_BD"

    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const-string v3, "pt_PT"

    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    .line 141
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCreate: language = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startDay = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ZenModeAddRules"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget v1, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->n:I

    if-eq v1, v2, :cond_2

    .line 143
    sput v2, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->n:I

    .line 144
    invoke-static {v2}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a(I)V

    .line 1494
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->p:Ljava/util/Map;

    .line 147
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ruleID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_3

    const-string v2, "save_rules"

    .line 148
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 149
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/AutomaticZenRule;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    .line 150
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    sput-object p1, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->m:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    goto/16 :goto_1

    :cond_3
    const-string p1, ""

    .line 151
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2433
    new-instance p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {p1}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 2434
    sget-object v1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    iput-object v1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 2435
    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->y:I

    iput v1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 2436
    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->z:I

    iput v1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 2437
    new-instance v1, Lcom/android/settings/notification/y;

    invoke-direct {v1}, Lcom/android/settings/notification/y;-><init>()V

    const-string v2, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    .line 2438
    iput-object v2, v1, Lcom/android/settings/notification/y;->c:Ljava/lang/String;

    .line 2439
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e:Landroid/content/Context;

    const v3, 0x7f121bbe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/y;->b:Ljava/lang/String;

    .line 2440
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getEventConditionProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/y;->a:Ljava/lang/String;

    .line 2441
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/notification/y;->e:Landroid/net/Uri;

    .line 2442
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/notification/y;->f:Landroid/content/ComponentName;

    .line 2443
    iput-boolean v0, v1, Lcom/android/settings/notification/y;->g:Z

    .line 152
    iput-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->u:Lcom/android/settings/notification/y;

    .line 153
    new-instance p1, Landroid/app/AutomaticZenRule;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->u:Lcom/android/settings/notification/y;

    iget-object v4, v0, Lcom/android/settings/notification/y;->f:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->u:Lcom/android/settings/notification/y;

    iget-object v5, v0, Lcom/android/settings/notification/y;->e:Landroid/net/Uri;

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    .line 156
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    sput-object p1, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->m:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    goto :goto_1

    .line 158
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCreate: key = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->p:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AutomaticZenRule;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    .line 160
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    sput-object p1, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->m:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 162
    :goto_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->c()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 222
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e001f

    .line 223
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a07cd

    .line 224
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->q:Landroid/view/MenuItem;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 9508
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 9509
    sget-wide v2, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->l:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 9512
    :goto_0
    sput-wide v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->l:J

    if-eqz v2, :cond_1

    return v3

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->t:Lcom/color/support/preference/ColorInputPreference;

    .line 11226
    iget-object v0, v0, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    .line 10429
    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e:Landroid/content/Context;

    const v1, 0x7f121b9d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/bl;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 255
    :cond_2
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v0}, Landroid/app/AutomaticZenRule;->setName(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->s:Lcom/coloros/settings/feature/zenmode/b;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/zenmode/b;->a(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->h:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->s:Lcom/coloros/settings/feature/zenmode/b;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/zenmode/b;->a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 259
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a(Landroid/app/AutomaticZenRule;)V

    goto :goto_1

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 263
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v4}, Landroid/app/AutomaticZenRule;->setModified(Z)V

    .line 265
    :cond_4
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v0}, Landroid/app/AutomaticZenRule;->setName(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->h:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->s:Lcom/coloros/settings/feature/zenmode/b;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/zenmode/b;->a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a(Landroid/app/AutomaticZenRule;)V

    .line 271
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->b(Landroid/app/Activity;)V

    .line 272
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_2

    .line 242
    :pswitch_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->b(Landroid/app/Activity;)V

    .line 243
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 279
    :goto_2
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a07cc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    .line 178
    invoke-super {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->onResume()V

    .line 179
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e:Landroid/content/Context;

    const v2, 0x7f121ad3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->t:Lcom/color/support/preference/ColorInputPreference;

    .line 3226
    iget-object v2, v2, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    .line 3228
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3229
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3230
    new-instance v3, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$1;

    invoke-direct {v3, v0, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$1;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->e:Landroid/content/Context;

    const v2, 0x7f121b7c    # 1.9421E38f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a(Ljava/lang/String;)V

    .line 4070
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->i:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    .line 187
    new-instance v0, Lcom/coloros/settings/feature/zenmode/-$$Lambda$SofqSbmkWUvzgk7BgJev8VKOLfM;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$SofqSbmkWUvzgk7BgJev8VKOLfM;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;)V

    .line 4078
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->i:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Lcolor/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 188
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->d()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->t:Lcom/color/support/preference/ColorInputPreference;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorInputPreference;->a()Ljava/lang/CharSequence;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AutomaticZenRule;->setName(Ljava/lang/String;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    const-string v1, "save_rules"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
