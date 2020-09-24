.class public final Lcom/coloros/settings/feature/weather/a/c;
.super Ljava/lang/Object;
.source "OppoDateUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)F
    .locals 7

    const-string v0, "OppoDateUtils"

    :try_start_0
    const-string v1, "UTC"

    .line 35
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 36
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    .line 37
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v4, v3

    const/16 v3, 0xb

    .line 38
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v5, v3

    const/16 v3, 0xc

    .line 39
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v2, v1

    const/4 v1, -0x6

    const/4 v3, 0x1

    if-ne v4, v1, :cond_0

    move v4, v3

    :cond_0
    const/4 v1, 0x6

    const/4 v6, -0x1

    if-ne v4, v1, :cond_1

    move v4, v6

    :cond_1
    if-ne v4, v3, :cond_2

    add-int/lit8 v5, v5, 0x18

    goto :goto_0

    :cond_2
    if-ne v4, v6, :cond_3

    add-int/lit8 v5, v5, -0x18

    :cond_3
    :goto_0
    int-to-float v1, v5

    int-to-float v3, v2

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 53
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTimezoneById offSet "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    const/high16 v1, 0x41000000    # 8.0f

    .line 55
    :catch_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "getTimezoneById timezoneId "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1
.end method
