.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$09rMKC8001jAR0zFrzzlPx26Xjs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$09rMKC8001jAR0zFrzzlPx26Xjs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$09rMKC8001jAR0zFrzzlPx26Xjs;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$09rMKC8001jAR0zFrzzlPx26Xjs;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$09rMKC8001jAR0zFrzzlPx26Xjs;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$09rMKC8001jAR0zFrzzlPx26Xjs;

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

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->lambda$getValidatedPaths$0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method