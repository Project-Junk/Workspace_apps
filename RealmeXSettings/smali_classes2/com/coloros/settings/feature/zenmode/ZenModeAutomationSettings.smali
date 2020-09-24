.class public Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;
.super Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$b;,
        Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;
    }
.end annotation


# static fields
.field private static j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field

.field protected b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/coloros/settings/widget/SettingsColorListView;

.field private f:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;

.field private final g:Ljava/text/SimpleDateFormat;

.field private h:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/coloros/settings/feature/zenmode/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 228
    new-instance v0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->l:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;-><init>()V

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->c:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->d:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->g:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;)[Ljava/util/Map$Entry;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->h:[Ljava/util/Map$Entry;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;[Ljava/util/Map$Entry;)[Ljava/util/Map$Entry;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->h:[Ljava/util/Map$Entry;

    return-object p1
.end method

.method private b(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 8

    .line 178
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 180
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    .line 181
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz p1, :cond_5

    .line 182
    array-length v0, p1

    if-lez v0, :cond_5

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 185
    :goto_0
    sget-object v4, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    array-length v4, v4

    const/4 v5, 0x7

    if-ge v3, v4, :cond_3

    .line 186
    sget-object v4, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    aget v4, v4, v3

    move v6, v2

    .line 187
    :goto_1
    array-length v7, p1

    if-ge v6, v7, :cond_2

    .line 188
    aget v7, p1, v6

    if-ne v4, v7, :cond_1

    .line 189
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, " "

    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_0
    iget-object v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 199
    array-length p1, p1

    if-ne p1, v5, :cond_4

    .line 200
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->b:Landroid/content/Context;

    const v0, 0x7f121b73

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 202
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 207
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->b:Landroid/content/Context;

    const v0, 0x7f121b74

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .line 1258
    sget-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1259
    sget-object v0, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    sput-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->j:Ljava/util/List;

    .line 1261
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->j:Ljava/util/List;

    return-object v0
.end method

.method private c()[Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->d()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->a:Ljava/util/Set;

    .line 217
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 218
    sget-object v1, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->l:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->b:Landroid/content/Context;

    .line 224
    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 7

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1159
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1162
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    .line 1163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1164
    iget v3, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1165
    iget v3, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 1166
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->c:Ljava/lang/String;

    .line 1168
    iget v3, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1169
    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 1170
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->d:Ljava/lang/String;

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 211
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->b(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->b:Landroid/content/Context;

    .line 78
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/b;->a()Lcom/coloros/settings/feature/zenmode/b;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->k:Lcom/coloros/settings/feature/zenmode/b;

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 94
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e0021

    .line 95
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0d03b7

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0599

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/SettingsColorListView;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->e:Lcom/coloros/settings/widget/SettingsColorListView;

    .line 86
    new-instance v0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->c()[Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;Landroid/content/Context;[Ljava/util/Map$Entry;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->f:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->e:Lcom/coloros/settings/widget/SettingsColorListView;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->f:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->e:Lcom/coloros/settings/widget/SettingsColorListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a07ca

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a07d0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/coloros/settings/feature/zenmode/ZenModeAddRules;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ""

    const-string v2, "ruleID"

    .line 104
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->startActivity(Landroid/content/Intent;)V

    .line 115
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->c()[Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->h:[Ljava/util/Map$Entry;

    .line 123
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->f:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;->notifyDataSetChanged()V

    return-void
.end method
