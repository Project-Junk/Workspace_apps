.class public final synthetic Lcom/android/settings/dream/-$$Lambda$9r4pTrA2aEH-gI1ymBHoiJYNW_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/dream/-$$Lambda$9r4pTrA2aEH-gI1ymBHoiJYNW_A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dream/-$$Lambda$9r4pTrA2aEH-gI1ymBHoiJYNW_A;

    invoke-direct {v0}, Lcom/android/settings/dream/-$$Lambda$9r4pTrA2aEH-gI1ymBHoiJYNW_A;-><init>()V

    sput-object v0, Lcom/android/settings/dream/-$$Lambda$9r4pTrA2aEH-gI1ymBHoiJYNW_A;->INSTANCE:Lcom/android/settings/dream/-$$Lambda$9r4pTrA2aEH-gI1ymBHoiJYNW_A;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/settings/dream/CurrentDreamPicker$a;

    check-cast p1, Lcom/android/settingslib/i/a$a;

    invoke-direct {v0, p1}, Lcom/android/settings/dream/CurrentDreamPicker$a;-><init>(Lcom/android/settingslib/i/a$a;)V

    return-object v0
.end method
