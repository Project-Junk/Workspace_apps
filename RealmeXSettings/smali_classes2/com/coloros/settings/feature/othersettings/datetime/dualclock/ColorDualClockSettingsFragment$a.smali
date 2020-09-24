.class final Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment$a;
.super Lcom/android/settings/search/a;
.source "ColorDualClockSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 118
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->ae(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "key_show_location"

    const-string v3, "key_resident_city_rebuild"

    if-eqz v1, :cond_0

    const-string p1, "key_dual_clock_switch"

    .line 119
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 125
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const-string p1, "key_resident_city"

    .line 129
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->ae(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 100
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/android/settings/search/e;

    invoke-direct {v1, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v2, "key_resident_city_rebuild"

    .line 105
    iput-object v2, v1, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v2, 0x7f0809a1

    .line 106
    iput v2, v1, Lcom/android/settings/search/e;->iconResId:I

    const v2, 0x7f120881

    .line 107
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 108
    iput-object v0, v1, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    const-string p1, "oppo.intent.action.SETTINGS_WEATHER_ADD_CITY"

    .line 109
    iput-object p1, v1, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 110
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p2

    :array_0
    .array-data 4
        0x7f120fe1
        0x7f120713
        0x7f120888
    .end array-data
.end method

.method public final getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f15004b

    .line 91
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const p1, 0x7f0809a1

    .line 92
    iput p1, p2, Landroid/provider/SearchIndexableResource;->iconResId:I

    const/4 p1, 0x1

    .line 93
    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
