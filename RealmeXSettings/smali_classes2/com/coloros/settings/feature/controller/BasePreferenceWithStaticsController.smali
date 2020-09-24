.class public abstract Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;
.super Lcom/android/settings/core/a;
.source "BasePreferenceWithStaticsController.java"


# static fields
.field private static final EVENT_TAG_OFF:Ljava/lang/String; = "turn-off"

.field private static final EVENT_TAG_ON:Ljava/lang/String; = "turn-on"

.field public static final SETTINGS_STATISTICS_LOG_TAG:Ljava/lang/String; = "20012"

.field public static final STATISTIC_ALL:I = 0x3

.field public static final STATISTIC_CLICK:I = 0x1

.field public static final STATISTIC_STATE_CHANGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BasePreferenceWithStaticsController"

.field public static final mStatisticsToggleValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDcsCommon:Lcom/coloros/settings/statistics/a$a;

.field private mDcsEvent:Lcom/coloros/settings/statistics/a$b;

.field private mDcsSettingsProvider:Lcom/coloros/settings/statistics/a$c;

.field private mStatisticType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->mStatisticsToggleValueMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleCommonUpload()V
    .locals 11

    .line 108
    iget-object v0, p0, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->mDcsCommon:Lcom/coloros/settings/statistics/a$a;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/coloros/settings/statistics/a$a;->a()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->mDcsEvent:Lcom/coloros/settings/statistics/a$b;

    if-eqz v0, :cond_1

    .line 1063
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/coloros/settings/statistics/a$b;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/coloros/settings/statistics/a$b;->b:Ljava/lang/String;

    iget v0, v0, Lcom/coloros/settings/statistics/a$b;->c:I

    invoke-static {v1, v2, v3, v0}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->mDcsSettingsProvider:Lcom/coloros/settings/statistics/a$c;

    if-eqz v0, :cond_9

    .line 2121
    iget-object v1, v0, Lcom/coloros/settings/statistics/a$c;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 2124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2125
    iget-object v3, v0, Lcom/coloros/settings/statistics/a$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/settings/statistics/a$c$a;

    .line 3091
    iget-object v10, v4, Lcom/coloros/settings/statistics/a$c$a;->a:Ljava/lang/String;

    .line 4091
    iget-object v5, v4, Lcom/coloros/settings/statistics/a$c$a;->c:Ljava/lang/String;

    .line 5091
    iget-object v6, v4, Lcom/coloros/settings/statistics/a$c$a;->b:Ljava/lang/String;

    .line 6091
    iget-object v8, v4, Lcom/coloros/settings/statistics/a$c$a;->d:Ljava/lang/String;

    .line 7091
    iget-object v9, v4, Lcom/coloros/settings/statistics/a$c$a;->e:Ljava/lang/Object;

    .line 2132
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "get"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v0

    .line 2134
    invoke-virtual/range {v4 .. v9}, Lcom/coloros/settings/statistics/a$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 7178
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 7179
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 7180
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 7181
    :cond_3
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 7182
    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 7183
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 7184
    :cond_4
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_5

    .line 7185
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 7186
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 7187
    :cond_5
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 7188
    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_6
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_2

    .line 2137
    invoke-interface {v1, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2141
    :cond_7
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_8

    goto :goto_2

    :cond_8
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_9

    .line 1196
    new-instance v2, Lcom/coloros/settings/statistics/a$a;

    iget-object v3, v0, Lcom/coloros/settings/statistics/a$c;->a:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/coloros/settings/statistics/a$c;->b:Z

    invoke-direct {v2, v3, v1, v0}, Lcom/coloros/settings/statistics/a$a;-><init>(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1197
    invoke-virtual {v2}, Lcom/coloros/settings/statistics/a$a;->a()V

    :cond_9
    return-void
.end method

.method public onHandlePreferenceClickedDcs(Landroidx/preference/Preference;Lcom/android/settingslib/core/a;)V
    .locals 0

    .line 95
    iget p1, p0, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->mStatisticType:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->handleCommonUpload()V

    :cond_0
    return-void
.end method

.method public onPreferenceStateChangedDcs(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 0

    .line 102
    iget p1, p0, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->mStatisticType:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->handleCommonUpload()V

    :cond_0
    return-void
.end method

.method public setDcsCommon(Lcom/coloros/settings/statistics/a$a;)V
    .locals 0
    .param p1    # Lcom/coloros/settings/statistics/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    iput-object p1, p0, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->mDcsCommon:Lcom/coloros/settings/statistics/a$a;

    return-void
.end method

.method public setDcsEvent(Lcom/coloros/settings/statistics/a$b;)V
    .locals 0
    .param p1    # Lcom/coloros/settings/statistics/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    iput-object p1, p0, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->mDcsEvent:Lcom/coloros/settings/statistics/a$b;

    return-void
.end method

.method public setDcsSettingsProvider(Lcom/coloros/settings/statistics/a$c;)V
    .locals 0
    .param p1    # Lcom/coloros/settings/statistics/a$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    iput-object p1, p0, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->mDcsSettingsProvider:Lcom/coloros/settings/statistics/a$c;

    return-void
.end method

.method public setStatisticType(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->mStatisticType:I

    return-void
.end method
