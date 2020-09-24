.class public Lcom/color/commons/text/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final DATE_FORMAT_STR:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final TAG:Ljava/lang/String; = "DateUtils"

.field private static sDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/color/commons/text/DateUtils;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 22
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 23
    invoke-static {p0, v0}, Lcom/color/commons/text/DateUtils;->formatDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    .line 24
    sget-object p0, Lcom/color/commons/text/DateUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 28
    sget-object v0, Lcom/color/commons/text/DateUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_2

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "date_format"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/color/commons/text/DateUtils;->sDateFormat:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DateUtils"

    const-string v1, ""

    .line 35
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :cond_0
    :goto_0
    sget-object p0, Lcom/color/commons/text/DateUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    if-nez p0, :cond_1

    sget-object p0, Lcom/color/commons/text/DateUtils;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    :cond_1
    sput-object p0, Lcom/color/commons/text/DateUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 40
    :cond_2
    sget-object p0, Lcom/color/commons/text/DateUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
