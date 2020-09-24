.class public final synthetic Lcom/android/settings/datetime/timezone/model/-$$Lambda$a$3hDwZPN_misIeSjNtDPFaV9sv7Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$a$3hDwZPN_misIeSjNtDPFaV9sv7Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$a$3hDwZPN_misIeSjNtDPFaV9sv7Y;

    invoke-direct {v0}, Lcom/android/settings/datetime/timezone/model/-$$Lambda$a$3hDwZPN_misIeSjNtDPFaV9sv7Y;-><init>()V

    sput-object v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$a$3hDwZPN_misIeSjNtDPFaV9sv7Y;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$a$3hDwZPN_misIeSjNtDPFaV9sv7Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/model/a;->lambda$3hDwZPN_misIeSjNtDPFaV9sv7Y(Llibcore/timezone/CountryTimeZones$TimeZoneMapping;)Z

    move-result p1

    return p1
.end method
