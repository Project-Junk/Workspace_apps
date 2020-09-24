.class public final synthetic Lcom/android/settings/fuelgauge/batterytip/b/-$$Lambda$b$1Jy5iNzQyFn3kc9pK6xvS9f4sfk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/fuelgauge/batterytip/b/-$$Lambda$b$1Jy5iNzQyFn3kc9pK6xvS9f4sfk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/b/-$$Lambda$b$1Jy5iNzQyFn3kc9pK6xvS9f4sfk;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/b/-$$Lambda$b$1Jy5iNzQyFn3kc9pK6xvS9f4sfk;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/b/-$$Lambda$b$1Jy5iNzQyFn3kc9pK6xvS9f4sfk;->INSTANCE:Lcom/android/settings/fuelgauge/batterytip/b/-$$Lambda$b$1Jy5iNzQyFn3kc9pK6xvS9f4sfk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/internal/os/BatterySipper;

    check-cast p2, Lcom/android/internal/os/BatterySipper;

    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/batterytip/b/b;->lambda$1Jy5iNzQyFn3kc9pK6xvS9f4sfk(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I

    move-result p1

    return p1
.end method
