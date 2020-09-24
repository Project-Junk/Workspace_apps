.class public final Lcom/color/darkmode/utils/RealmeUtils;
.super Ljava/lang/Object;


# static fields
.field private static final DARK_MODE_SUNSET_TO_SUNRISE_SWITCH:Ljava/lang/String; = "dark_mode_sunset_to_sunrise_switch"

.field private static DEBUG:Z = false

.field private static final DEFAULT_SUNRISE_HOUR:I = 0x6

.field private static final DEFAULT_SUNRISE_MIN:I = 0x1e

.field private static final DEFAULT_SUNSET_HOUR:I = 0x11

.field private static final DEFAULT_SUNSET_MIN:I = 0x28

.field public static final INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

.field private static final REALME:Ljava/lang/String; = "realme"

.field private static final SUNRISE_TIME:Ljava/lang/String; = "ColorDarkMode_sunrise_time"

.field private static final SUNSET_TIME:Ljava/lang/String; = "ColorDarkMode_sunset_time"

.field public static final SWITCH_OFF:I = 0x0

.field public static final SWITCH_ON:I = 0x1

.field public static final TAG:Ljava/lang/String; = "RealmeUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/color/darkmode/utils/RealmeUtils;

    invoke-direct {v0}, Lcom/color/darkmode/utils/RealmeUtils;-><init>()V

    sput-object v0, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/color/darkmode/utils/RealmeUtils;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getTimeSeparator()C
    .locals 7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "Hm"

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "time"

    invoke-static {p0, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x48

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, La/h/f;->b(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x3a

    :goto_0
    return p0
.end method

.method public static synthetic setDarkModeSunriseTime$default(Lcom/color/darkmode/utils/RealmeUtils;Landroid/content/ContentResolver;IIZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/darkmode/utils/RealmeUtils;->setDarkModeSunriseTime(Landroid/content/ContentResolver;IIZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic setDarkModeSunsetTime$default(Lcom/color/darkmode/utils/RealmeUtils;Landroid/content/ContentResolver;IIZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/darkmode/utils/RealmeUtils;->setDarkModeSunsetTime(Landroid/content/ContentResolver;IIZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getDarkModeSunriseData(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_sunrise_time"

    const/4 v0, -0x2

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "6:30"

    :goto_0
    return-object p0
.end method

.method public final getDarkModeSunriseTime(Landroid/content/ContentResolver;)[I
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/RealmeUtils;->getDarkModeSunriseData(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/RealmeUtils;->parseEndTime(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public final getDarkModeSunsetTime(Landroid/content/ContentResolver;)[I
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/RealmeUtils;->getDarkModeSunsetTimeData(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/RealmeUtils;->parseBeginTime(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public final getDarkModeSunsetTimeData(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_sunset_time"

    const/4 v0, -0x2

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "17:40"

    :goto_0
    return-object p0
.end method

.method public final getFormatTimeString(IIZ)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "Locale.getDefault()"

    invoke-static {v2, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p3, :cond_0

    sget-object p3, La/d/b/p;->a:La/d/b/p;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v5, "Locale.getDefault()"

    invoke-static {p3, v5}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "%02d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    array-length p1, v6

    :goto_0
    invoke-static {v6, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, v5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, p3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 p3, 0xc

    if-ge p1, p3, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-direct {v5}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v2

    const-string v5, "amPmStrings[index]"

    invoke-static {v2, v5}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-nez p1, :cond_3

    move p1, p3

    :cond_3
    if-le p1, p3, :cond_4

    add-int/lit8 p1, p1, -0xc

    :cond_4
    sget-object p3, La/d/b/p;->a:La/d/b/p;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v5, "Locale.getDefault()"

    invoke-static {p3, v5}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "%d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    array-length p1, v6

    goto :goto_0

    :goto_2
    invoke-direct {p0}, Lcom/color/darkmode/utils/RealmeUtils;->getTimeSeparator()C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, La/d/b/p;->a:La/d/b/p;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string p1, "Locale.getDefault()"

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "%02d"

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v3

    array-length p2, p3

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.String.format(locale, format, *args)"

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sb.toString()"

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isDarkSunsetToSunriseSwitch(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "dark_mode_sunset_to_sunrise_switch"

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public final isRealmePhone()Z
    .locals 2

    const-string p0, "realme"

    const-string v0, "ro.electronic.label"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "realme"

    const-string v0, "ro.product.brand.sub"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final logD(Ljava/lang/String;)V
    .locals 0

    const-string p0, "string"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/color/darkmode/utils/RealmeUtils;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "RealmeUtils"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final logE(Ljava/lang/String;)V
    .locals 0

    const-string p0, "string"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "RealmeUtils"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final parseBeginTime(Ljava/lang/String;)[I
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;

    const-string v4, ":"

    new-instance v5, La/h/e;

    invoke-direct {v5, v4}, La/h/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, v3}, La/h/e;->a(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-nez v5, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {p1, v4}, La/a/g;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, La/a/g;->a()Ljava/util/List;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_4

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, [Ljava/lang/String;

    array-length v4, v1

    if-ne v4, v0, :cond_5

    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v3

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, v1, v2

    move p0, v2

    goto :goto_2

    :cond_3
    new-instance p1, La/o;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, La/o;

    const-string v0, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/RealmeUtils;->logE(Ljava/lang/String;)V

    :cond_5
    move p0, v3

    :goto_2
    if-nez p0, :cond_6

    const/16 p0, 0x11

    aput p0, v1, v3

    const/16 p0, 0x28

    aput p0, v1, v2

    :cond_6
    return-object v1
.end method

.method public final parseEndTime(Ljava/lang/String;)[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;

    const-string v3, ":"

    new-instance v4, La/h/e;

    invoke-direct {v4, v3}, La/h/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v2}, La/h/e;->a(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-nez v4, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {p1, v3}, La/a/g;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, La/a/g;->a()Ljava/util/List;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_4

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, [Ljava/lang/String;

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v1

    move p0, v1

    goto :goto_2

    :cond_3
    new-instance p1, La/o;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v3}, La/o;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, La/o;

    const-string v3, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, v3}, La/o;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/RealmeUtils;->logE(Ljava/lang/String;)V

    :cond_5
    move p0, v2

    :goto_2
    if-nez p0, :cond_6

    const/4 p0, 0x6

    aput p0, v0, v2

    const/16 p0, 0x1e

    aput p0, v0, v1

    :cond_6
    return-object v0
.end method

.method public final setDarkModeSunriseTime(Landroid/content/ContentResolver;IIZ)Z
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ColorDarkMode_sunrise_time"

    invoke-virtual {p0, p2, p3, p4}, Lcom/color/darkmode/utils/RealmeUtils;->getFormatTimeString(IIZ)Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x2

    invoke-static {p1, v0, p0, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final setDarkModeSunsetTime(Landroid/content/ContentResolver;IIZ)Z
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ColorDarkMode_sunset_time"

    invoke-virtual {p0, p2, p3, p4}, Lcom/color/darkmode/utils/RealmeUtils;->getFormatTimeString(IIZ)Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x2

    invoke-static {p1, v0, p0, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final setDarkSunsetToSunriseSwitch(Landroid/content/Context;I)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "dark_mode_sunset_to_sunrise_switch"

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final timeStampChangeString(J)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy--MM--dd HH:mm:ss"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "simpleDateFormat.format(Date(time))"

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
