.class public Lcom/android/settings/datetime/timezone/FixedOffsetPicker;
.super Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.source "FixedOffsetPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f12071b

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, v0, v1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/settings/datetime/timezone/model/b;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/datetime/timezone/model/b;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/c;",
            ">;"
        }
    .end annotation

    .line 1061
    new-instance p1, Lcom/android/settings/datetime/timezone/c$b;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/FixedOffsetPicker;->b()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/android/settings/datetime/timezone/c$b;-><init>(Ljava/util/Locale;Ljava/util/Date;)V

    .line 1063
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Etc/UTC"

    .line 1064
    invoke-static {v1}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/datetime/timezone/c$b;->a(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xc

    :goto_0
    const/16 v2, -0xe

    if-lt v1, v2, :cond_1

    if-eqz v1, :cond_0

    .line 1070
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Etc/GMT%+d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1071
    invoke-static {v2}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/datetime/timezone/c$b;->a(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/c;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1073
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x54d

    return v0
.end method
