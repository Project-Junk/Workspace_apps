.class public final Lcom/android/settings/datetime/timezone/c$b;
.super Ljava/lang/Object;
.source "TimeZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Locale;

.field private final b:Ljava/util/Date;

.field private final c:Landroid/icu/text/TimeZoneFormat;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Ljava/util/Date;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/c$b;->a:Ljava/util/Locale;

    .line 134
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/c$b;->b:Ljava/util/Date;

    .line 135
    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/c$b;->c:Landroid/icu/text/TimeZoneFormat;

    return-void
.end method


# virtual methods
.method public final a(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/c;
    .locals 6

    .line 152
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/c$b;->c:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    .line 154
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 155
    iget-object v3, p0, Lcom/android/settings/datetime/timezone/c$b;->c:Landroid/icu/text/TimeZoneFormat;

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/c$b;->a:Ljava/util/Locale;

    iget-object v5, p0, Lcom/android/settings/datetime/timezone/c$b;->b:Ljava/util/Date;

    invoke-static {v3, v4, v2, v5}, Lcom/android/settingslib/e/a;->a(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 157
    new-instance v3, Lcom/android/settings/datetime/timezone/c$a;

    invoke-direct {v3, p1}, Lcom/android/settings/datetime/timezone/c$a;-><init>(Landroid/icu/util/TimeZone;)V

    sget-object p1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/c$b;->b:Ljava/util/Date;

    .line 159
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 158
    invoke-virtual {v1, v0, p1, v4, v5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object p1

    .line 1095
    iput-object p1, v3, Lcom/android/settings/datetime/timezone/c$a;->b:Ljava/lang/String;

    .line 158
    sget-object p1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/c$b;->b:Ljava/util/Date;

    .line 161
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 160
    invoke-virtual {v1, v0, p1, v4, v5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object p1

    .line 1100
    iput-object p1, v3, Lcom/android/settings/datetime/timezone/c$a;->c:Ljava/lang/String;

    .line 160
    sget-object p1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/c$b;->b:Ljava/util/Date;

    .line 163
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 162
    invoke-virtual {v1, v0, p1, v4, v5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object p1

    .line 1105
    iput-object p1, v3, Lcom/android/settings/datetime/timezone/c$a;->d:Ljava/lang/String;

    .line 164
    invoke-virtual {v1, v0}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1110
    iput-object p1, v3, Lcom/android/settings/datetime/timezone/c$a;->e:Ljava/lang/String;

    .line 1115
    iput-object v2, v3, Lcom/android/settings/datetime/timezone/c$a;->f:Ljava/lang/CharSequence;

    .line 166
    invoke-virtual {v3}, Lcom/android/settings/datetime/timezone/c$a;->a()Lcom/android/settings/datetime/timezone/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/c;
    .locals 0

    .line 143
    invoke-static {p1}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/c$b;->a(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/c;

    move-result-object p1

    return-object p1
.end method
