.class public Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;
.super Ljava/lang/Object;
.source "BatteryFixSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 74
    sput-object v0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->a:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 74
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->a:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    aput-object v5, v2, v3

    .line 77
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Landroidx/slice/builders/ListBuilder;Z)Landroidx/slice/Slice;
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    const v1, 0x7f0806b4

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    const v2, 0x7f121065

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->d()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    .line 173
    new-instance v4, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 174
    invoke-virtual {v4, v0, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p2}, Landroidx/slice/builders/ListBuilder;->setIsError(Z)Landroidx/slice/builders/ListBuilder;

    .line 178
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p1

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 184
    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$GjxvZJ_Ic_ec5h48LkqLOTlhH7U;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$GjxvZJ_Ic_ec5h48LkqLOTlhH7U;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private d()Landroid/app/PendingIntent;
    .locals 3

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->c()Landroid/content/Intent;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c/c;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->b()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V

    .line 208
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->b()Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batterytip/c/c;

    .line 210
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/c/c;->f()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v1, 0x0

    const-string v3, "battery_fix_prefs"

    .line 211
    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 212
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 213
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/c/c;->e()I

    move-result v1

    const-string v3, "current_tip_type"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 214
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/c/c;->f()I

    move-result v1

    const-string v2, "current_tip_state"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 215
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-object v0
.end method

.method private static synthetic e(Landroid/content/Context;)V
    .locals 0

    .line 184
    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->d(Landroid/content/Context;)Ljava/util/List;

    return-void
.end method

.method public static synthetic lambda$GjxvZJ_Ic_ec5h48LkqLOTlhH7U(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->e(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 9

    .line 95
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/slices/a;->b:Landroid/net/Uri;

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v1, -0x1

    .line 97
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 99
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "battery_fix_prefs"

    .line 1190
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "current_tip_type"

    const/4 v5, 0x6

    .line 1192
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    const-string v6, "current_tip_state"

    .line 1193
    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_1

    .line 1198
    sget-object v7, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->a:Ljava/util/Map;

    .line 1199
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v2, :cond_2

    .line 100
    invoke-direct {p0, v0, v6}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->a(Landroidx/slice/builders/ListBuilder;Z)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0

    .line 2090
    :cond_2
    sget-object v2, Lcom/android/settings/slices/a;->b:Landroid/net/Uri;

    .line 103
    invoke-static {v2}, Lcom/android/settings/slices/c;->a(Landroid/net/Uri;)Lcom/android/settings/slices/c;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {v2}, Lcom/android/settings/slices/c;->e()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_4

    .line 108
    invoke-direct {p0, v0, v3}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->a(Landroidx/slice/builders/ListBuilder;Z)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0

    .line 111
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batterytip/c/c;

    .line 112
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/c/c;->f()I

    move-result v6

    if-eq v6, v5, :cond_5

    .line 115
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/c/c;->a()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 116
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/c/c;->b()I

    move-result v5

    if-eq v5, v1, :cond_6

    .line 118
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    .line 119
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 118
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 123
    :cond_6
    invoke-static {v2}, Lcom/android/settings/m;->a(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 124
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->d()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    .line 127
    invoke-virtual {v4, v5}, Lcom/android/settings/fuelgauge/batterytip/c/c;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 124
    invoke-static {v2, v1, v3, v5}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    .line 128
    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 129
    invoke-virtual {v5, v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    .line 130
    invoke-virtual {v4, v3}, Lcom/android/settings/fuelgauge/batterytip/c/c;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    .line 131
    invoke-virtual {v4, v3}, Lcom/android/settings/fuelgauge/batterytip/c/c;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 135
    :cond_7
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 90
    sget-object v0, Lcom/android/settings/slices/a;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 6

    .line 140
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    const v1, 0x7f121065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "battery_tip"

    .line 143
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 145
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    const-class v4, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .line 146
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x579

    .line 145
    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b:Landroid/content/Context;

    .line 149
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/settings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1

    .line 159
    const-class v0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;

    return-object v0
.end method
