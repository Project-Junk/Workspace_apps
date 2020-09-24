.class public final Lcom/android/settings/datetime/timezone/model/a;
.super Ljava/lang/Object;
.source "FilteredCountryTimeZones.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Llibcore/timezone/CountryTimeZones;


# direct methods
.method public constructor <init>(Llibcore/timezone/CountryTimeZones;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/a;->b:Llibcore/timezone/CountryTimeZones;

    .line 49
    invoke-virtual {p1}, Llibcore/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$a$3hDwZPN_misIeSjNtDPFaV9sv7Y;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$a$3hDwZPN_misIeSjNtDPFaV9sv7Y;

    .line 50
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$a$HEcctTeMLFfoNiF8O5apUsNIHl0;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$a$HEcctTeMLFfoNiF8O5apUsNIHl0;

    .line 53
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 54
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 55
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/a;->a:Ljava/util/List;

    return-void
.end method

.method private static synthetic a(Llibcore/timezone/CountryTimeZones$TimeZoneMapping;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->timeZoneId:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic b(Llibcore/timezone/CountryTimeZones$TimeZoneMapping;)Z
    .locals 4

    .line 51
    iget-boolean v0, p0, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->showInPicker:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object p0, p0, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x16806b5bc00L

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$3hDwZPN_misIeSjNtDPFaV9sv7Y(Llibcore/timezone/CountryTimeZones$TimeZoneMapping;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/model/a;->b(Llibcore/timezone/CountryTimeZones$TimeZoneMapping;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$HEcctTeMLFfoNiF8O5apUsNIHl0(Llibcore/timezone/CountryTimeZones$TimeZoneMapping;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/model/a;->a(Llibcore/timezone/CountryTimeZones$TimeZoneMapping;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/a;->b:Llibcore/timezone/CountryTimeZones;

    invoke-virtual {v0}, Llibcore/timezone/CountryTimeZones;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/datetime/timezone/model/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
