.class public Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AutomationRulesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;,
        Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;
    }
.end annotation


# static fields
.field private static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Ljava/util/Comparator;
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

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Landroid/widget/AdapterView$OnItemClickListener;

.field f:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final h:Ljava/text/SimpleDateFormat;

.field private i:Lcom/coloros/settings/feature/zenmode/b;

.field private j:[Ljava/util/Map$Entry;
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

.field private k:Lcolor/support/v7/widget/Toolbar;

.field private l:Landroid/view/View;

.field private m:Lcom/coloros/settings/widget/SettingsColorListView;

.field private n:Lcolor/support/design/widget/ColorAppBarLayout;

.field private o:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/view/MenuItem;

.field private r:I

.field private s:I

.field private t:I

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 313
    new-instance v0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$3;

    invoke-direct {v0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$3;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->v:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->h:Ljava/text/SimpleDateFormat;

    const-string v0, ""

    .line 78
    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->c:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->d:Ljava/lang/String;

    const/16 v0, 0x18

    .line 87
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->r:I

    const/16 v1, 0x12

    .line 88
    iput v1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->s:I

    .line 89
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->t:I

    .line 90
    iput v1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->u:I

    .line 115
    new-instance v0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$1;-><init>(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->e:Landroid/widget/AdapterView$OnItemClickListener;

    .line 131
    new-instance v0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$2;-><init>(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->f:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->o:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;

    return-object p0
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .line 3343
    sget-object v0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3344
    sget-object v0, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    sput-object v0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->g:Ljava/util/List;

    .line 3346
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Lcom/coloros/settings/widget/SettingsColorListView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->m:Lcom/coloros/settings/widget/SettingsColorListView;

    return-object p0
.end method

.method private b()[Ljava/util/Map$Entry;
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

    .line 301
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->a:Ljava/util/Set;

    .line 302
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 303
    sget-object v1, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->v:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b:Landroid/content/Context;

    return-object p0
.end method

.method private c()Ljava/util/Set;
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

    .line 308
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b:Landroid/content/Context;

    .line 309
    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)[Ljava/util/Map$Entry;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->j:[Ljava/util/Map$Entry;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->r:I

    return p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->s:I

    return p0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->t:I

    return p0
.end method

.method static synthetic h(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->u:I

    return p0
.end method

.method static synthetic i(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Lcom/coloros/settings/feature/zenmode/b;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->i:Lcom/coloros/settings/feature/zenmode/b;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 8

    .line 262
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 264
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    .line 265
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz p1, :cond_5

    .line 266
    array-length v0, p1

    if-lez v0, :cond_5

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 269
    :goto_0
    sget-object v4, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    array-length v4, v4

    const/4 v5, 0x7

    if-ge v3, v4, :cond_3

    .line 270
    sget-object v4, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    aget v4, v4, v3

    move v6, v2

    .line 271
    :goto_1
    array-length v7, p1

    if-ge v6, v7, :cond_2

    .line 272
    aget v7, p1, v6

    if-ne v4, v7, :cond_1

    .line 273
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, " "

    .line 275
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_0
    iget-object v4, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->h:Ljava/text/SimpleDateFormat;

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

    .line 282
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 284
    array-length p1, p1

    if-ne p1, v5, :cond_4

    .line 285
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b:Landroid/content/Context;

    const v0, 0x7f121b73

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 287
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 292
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b:Landroid/content/Context;

    const v0, 0x7f121b74

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 94
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d03b7

    .line 95
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->setContentView(I)V

    .line 96
    iput-object p0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b:Landroid/content/Context;

    .line 97
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/b;->a()Lcom/coloros/settings/feature/zenmode/b;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->i:Lcom/coloros/settings/feature/zenmode/b;

    .line 1446
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "KeyZen"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1448
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "KeyDefaultName"

    .line 1449
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 1450
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b()[Ljava/util/Map$Entry;

    move-result-object p1

    .line 1453
    array-length v4, p1

    if-lez v4, :cond_0

    aget-object p1, p1, v0

    .line 1454
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AutomaticZenRule;

    .line 1455
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1456
    iget-object v5, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b:Landroid/content/Context;

    const v6, 0x7f121b2d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AutomaticZenRule;->setName(Ljava/lang/String;)V

    .line 1457
    iget-object v5, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->i:Lcom/coloros/settings/feature/zenmode/b;

    invoke-virtual {v5, p1, v4}, Lcom/coloros/settings/feature/zenmode/b;->a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 1458
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1459
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const p1, 0x7f0a0599

    .line 99
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/SettingsColorListView;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->m:Lcom/coloros/settings/widget/SettingsColorListView;

    .line 100
    new-instance p1, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;

    invoke-direct {p1, p0, p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;-><init>(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->o:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;

    .line 101
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->m:Lcom/coloros/settings/widget/SettingsColorListView;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->o:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->m:Lcom/coloros/settings/widget/SettingsColorListView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->m:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, v3}, Lcom/coloros/settings/widget/SettingsColorListView;->setNestedScrollingEnabled(Z)V

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->m:Lcom/coloros/settings/widget/SettingsColorListView;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->e:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->m:Lcom/coloros/settings/widget/SettingsColorListView;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->f:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const p1, 0x7f0a0469

    .line 106
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->p:Landroid/widget/LinearLayout;

    .line 2209
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 2210
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2211
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 2212
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2214
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 2215
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v4, -0x80000000

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 2216
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060103

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 2218
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f050065

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ai(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 2222
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x2000

    invoke-virtual {v1, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 2219
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x100

    invoke-virtual {v1, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_1
    const p1, 0x7f0a070a

    .line 2226
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->k:Lcolor/support/v7/widget/Toolbar;

    .line 2227
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->k:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 2228
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2229
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 2230
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b:Landroid/content/Context;

    const v2, 0x7f121adc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a020e

    .line 2232
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->l:Landroid/view/View;

    .line 2233
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f050063

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2234
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const p1, 0x7f0a000b

    .line 2237
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/design/widget/ColorAppBarLayout;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->n:Lcolor/support/design/widget/ColorAppBarLayout;

    .line 2238
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->av(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 2239
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->n:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcolor/support/design/widget/ColorAppBarLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0021

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a07d0

    .line 177
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->q:Landroid/view/MenuItem;

    .line 178
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->q:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 179
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a07ca

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a07d0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, -0x1

    const-string v2, "position"

    .line 197
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0, v0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 189
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/settings/feature/zenmode/ZenModeAddRules;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ""

    const-string v2, "ruleID"

    .line 191
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->finish()V

    .line 205
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->q:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3158
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b()[Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->j:[Ljava/util/Map$Entry;

    .line 3159
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->o:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->notifyDataSetChanged()V

    .line 3163
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3164
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a0323

    .line 3165
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3166
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3167
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    .line 3168
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 3169
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 154
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
