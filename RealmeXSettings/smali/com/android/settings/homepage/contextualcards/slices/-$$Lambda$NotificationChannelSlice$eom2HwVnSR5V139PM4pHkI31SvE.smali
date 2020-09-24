.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$eom2HwVnSR5V139PM4pHkI31SvE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$eom2HwVnSR5V139PM4pHkI31SvE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$eom2HwVnSR5V139PM4pHkI31SvE;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$eom2HwVnSR5V139PM4pHkI31SvE;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$eom2HwVnSR5V139PM4pHkI31SvE;->INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$eom2HwVnSR5V139PM4pHkI31SvE;

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

    check-cast p1, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->lambda$eom2HwVnSR5V139PM4pHkI31SvE(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;)Landroid/app/NotificationChannel;

    move-result-object p1

    return-object p1
.end method
