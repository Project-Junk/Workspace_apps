.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$UYUq9z2WZwxqOLXquU0tTNN9wAs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$UYUq9z2WZwxqOLXquU0tTNN9wAs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$UYUq9z2WZwxqOLXquU0tTNN9wAs;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$UYUq9z2WZwxqOLXquU0tTNN9wAs;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$UYUq9z2WZwxqOLXquU0tTNN9wAs;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$UYUq9z2WZwxqOLXquU0tTNN9wAs;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->lambda$getValidatedPaths$1(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
