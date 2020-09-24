.class final Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;
.super Ljava/lang/Object;
.source "BaseTimeZoneInfoPicker.java"

# interfaces
.implements Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/android/settings/datetime/timezone/c;

.field private final b:J

.field private final c:Landroid/content/res/Resources;

.field private final d:Landroid/icu/text/DateFormat;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/lang/String;


# direct methods
.method private constructor <init>(JLcom/android/settings/datetime/timezone/c;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-wide p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->b:J

    .line 110
    iput-object p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->a:Lcom/android/settings/datetime/timezone/c;

    .line 111
    iput-object p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->c:Landroid/content/res/Resources;

    .line 112
    iput-object p5, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->d:Landroid/icu/text/DateFormat;

    .line 2060
    iget-object p1, p3, Lcom/android/settings/datetime/timezone/c;->f:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 2064
    iget-object p1, p3, Lcom/android/settings/datetime/timezone/c;->c:Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_1

    .line 3056
    iget-object p2, p3, Lcom/android/settings/datetime/timezone/c;->b:Landroid/icu/util/TimeZone;

    .line 1122
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p4}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3072
    iget-object p1, p3, Lcom/android/settings/datetime/timezone/c;->e:Ljava/lang/String;

    :cond_1
    if-nez p1, :cond_2

    .line 4068
    iget-object p1, p3, Lcom/android/settings/datetime/timezone/c;->d:Ljava/lang/String;

    :cond_2
    if-nez p1, :cond_3

    .line 4076
    iget-object p1, p3, Lcom/android/settings/datetime/timezone/c;->g:Ljava/lang/CharSequence;

    .line 1129
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 113
    :cond_3
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 114
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->e:Ljava/lang/String;

    aput-object p3, p1, p2

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->f:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(JLcom/android/settings/datetime/timezone/c;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;B)V
    .locals 0

    .line 99
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;-><init>(JLcom/android/settings/datetime/timezone/c;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 6

    .line 141
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->a:Lcom/android/settings/datetime/timezone/c;

    .line 5064
    iget-object v0, v0, Lcom/android/settings/datetime/timezone/c;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->a:Lcom/android/settings/datetime/timezone/c;

    .line 6056
    iget-object v0, v0, Lcom/android/settings/datetime/timezone/c;->b:Landroid/icu/util/TimeZone;

    .line 143
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->a:Lcom/android/settings/datetime/timezone/c;

    .line 6072
    iget-object v0, v0, Lcom/android/settings/datetime/timezone/c;->e:Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->a:Lcom/android/settings/datetime/timezone/c;

    .line 7068
    iget-object v0, v0, Lcom/android/settings/datetime/timezone/c;->d:Ljava/lang/String;

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 151
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->c:Landroid/content/res/Resources;

    const v2, 0x7f121bce

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->a:Lcom/android/settings/datetime/timezone/c;

    .line 8076
    iget-object v5, v5, Lcom/android/settings/datetime/timezone/c;->g:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 155
    invoke-static {v1, v2, v3}, Lcom/android/settings/datetime/timezone/b;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0

    .line 152
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->a:Lcom/android/settings/datetime/timezone/c;

    .line 7076
    iget-object v0, v0, Lcom/android/settings/datetime/timezone/c;->g:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 153
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->d:Landroid/icu/text/DateFormat;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->a:Lcom/android/settings/datetime/timezone/c;

    .line 9056
    iget-object v1, v1, Lcom/android/settings/datetime/timezone/c;->b:Landroid/icu/util/TimeZone;

    .line 167
    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 172
    iget-wide v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->b:J

    return-wide v0
.end method

.method public final e()[Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->f:[Ljava/lang/String;

    return-object v0
.end method
