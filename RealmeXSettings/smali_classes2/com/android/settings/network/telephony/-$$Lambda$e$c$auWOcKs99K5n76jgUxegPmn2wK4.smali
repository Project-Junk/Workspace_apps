.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$e$c$auWOcKs99K5n76jgUxegPmn2wK4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$e$c$auWOcKs99K5n76jgUxegPmn2wK4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$e$c$auWOcKs99K5n76jgUxegPmn2wK4;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/-$$Lambda$e$c$auWOcKs99K5n76jgUxegPmn2wK4;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/-$$Lambda$e$c$auWOcKs99K5n76jgUxegPmn2wK4;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$e$c$auWOcKs99K5n76jgUxegPmn2wK4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/internal/telephony/OperatorInfo;

    invoke-static {p1}, Lcom/android/settings/network/telephony/e$c;->lambda$auWOcKs99K5n76jgUxegPmn2wK4(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;

    move-result-object p1

    return-object p1
.end method
